#include "stdafx.h"
#include "Resource.h"
#include <opencv2/core/mat.hpp>
#include <opencv2/core.hpp>
#include <opencv2/imgproc.hpp>
#include "PartialCalibration.h"
#include <iostream>

PartialCalibration::PartialCalibration(){}

void PartialCalibration::addSkeletonPoint(Vector4 point)
{
    m_skeletonCalibPoints.push_back(point);
}

void PartialCalibration::addCalibPoint(glm::vec2 point)
{
    m_calibPoints.push_back(point);
}

void PartialCalibration::setSensor(INuiSensor* sensor) 
{
    m_sensor = sensor;
}

void PartialCalibration::calibrate()
{
    if(m_skeletonCalibPoints.size() != m_calibPoints.size()){
        return;
    }
    glm::vec3 p0 = convertSkeletonPointToDepthPoint(m_skeletonCalibPoints[0]);
    glm::vec3 p1 = convertSkeletonPointToDepthPoint(m_skeletonCalibPoints[1]);
    glm::vec3 p2 = convertSkeletonPointToDepthPoint(m_skeletonCalibPoints[2]);
    glm::vec3 p3 = convertSkeletonPointToDepthPoint(m_skeletonCalibPoints[3]);

    glm::vec3 v1 = glm::normalize(p1 - p0);
    glm::vec3 v2 = glm::normalize(p2 - p0);

    glm::vec3 planeNormal = glm::normalize(glm::cross(v1, v2));

    glm::vec3 resultingPlaneNormal = glm::vec3(0, 0, 1);
    m_groundPlaneTransform = Utils::make_align_axis_matrix(resultingPlaneNormal, planeNormal);

    glm::vec3 p0OnPlane = m_groundPlaneTransform * p0;
    glm::vec3 p1OnPlane = m_groundPlaneTransform * p1;
    glm::vec3 p2OnPlane = m_groundPlaneTransform * p2;
    glm::vec3 p3OnPlane = m_groundPlaneTransform * p3;  
    
    std::vector<cv::Point2f> srcPoints = {
        cv::Point2f(p0OnPlane.x, p0OnPlane.y), 
        cv::Point2f(p1OnPlane.x, p1OnPlane.y), 
        cv::Point2f(p2OnPlane.x, p2OnPlane.y), 
        cv::Point2f(p3OnPlane.x, p3OnPlane.y)
    };
    std::vector<cv::Point2f> dstPoints = {
        cv::Point2f(m_calibPoints[0].x, m_calibPoints[0].y), 
        cv::Point2f(m_calibPoints[1].x, m_calibPoints[1].y), 
        cv::Point2f(m_calibPoints[2].x, m_calibPoints[2].y), 
        cv::Point2f(m_calibPoints[3].x, m_calibPoints[3].y)
    };   

    m_transform = cv::getPerspectiveTransform(srcPoints, dstPoints);
}

glm::vec3 PartialCalibration::convertSkeletonPointToDepthPoint(Vector4 skeletonPoint)
{
    INuiCoordinateMapper* mapper;
    NUI_DEPTH_IMAGE_POINT imgPt;
    m_sensor->NuiGetCoordinateMapper(&mapper); 
    mapper->MapSkeletonPointToDepthPoint(&skeletonPoint, NUI_IMAGE_RESOLUTION::NUI_IMAGE_RESOLUTION_640x480, &imgPt);

    return glm::vec3(imgPt.x, imgPt.y, imgPt.depth);
}

glm::vec2 PartialCalibration::kinectToProjectionPoint(Vector4 point)
{
    INuiCoordinateMapper* mapper;
    NUI_DEPTH_IMAGE_POINT depthpt;
    m_sensor->NuiGetCoordinateMapper(&mapper); 
    mapper->MapSkeletonPointToDepthPoint(&point, NUI_IMAGE_RESOLUTION::NUI_IMAGE_RESOLUTION_640x480, &depthpt);
       
    glm::vec3 p = glm::vec3(depthpt.x, depthpt.y, depthpt.depth);

    glm::vec3 pOnGroundPlane = m_groundPlaneTransform * p;

    std::vector<cv::Point2f> testPoint = { cv::Point2f(pOnGroundPlane.x, pOnGroundPlane.y) };
    std::vector<cv::Point2f> out;
    cv::perspectiveTransform(testPoint, out, m_transform);

    return glm::vec2(out[0].x, out[0].y);
}