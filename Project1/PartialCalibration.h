#include <vector>

#include "NuiApi.h"
#include "glm/glm.hpp"
#include <opencv2/core/mat.hpp>
#include <opencv2/core.hpp>
#include <opencv2/imgproc.hpp>
#include "Utils.h"

class PartialCalibration
{
private:
    INuiSensor* m_sensor = nullptr;

    std::vector<glm::vec2> m_calibPoints;
    std::vector<Vector4> m_skeletonCalibPoints;

    glm::mat3x3 m_groundPlaneTransform;
    cv::Mat m_transform = cv::Mat::eye(3, 3, CV_64F);

public:
    PartialCalibration();
    void addSkeletonPoint(Vector4 point);
    void addCalibPoint(glm::vec2 point);
    void setSensor(INuiSensor* sensor);
    void calibrate();
    glm::vec3 convertSkeletonPointToDepthPoint(Vector4 skeletonPoint);
    glm::vec2 kinectToProjectionPoint(Vector4 point);
};