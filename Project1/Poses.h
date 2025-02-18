#pragma once

#include <vector>
#include "NuiApi.h"
#include <iostream>
#include <numbers>

enum class SkeletalPoses {
	ARMS_DOWN = 1,
	ARMS_UP = 2,
	T_POSE = 3,
	UNKNOWN = 4,
};

inline glm::vec4 toGlmVec4(const Vector4& v) {
	return glm::vec4(v.x, v.y, v.z, v.w);
}

inline float angleBetweenPoints(const glm::vec3 &origin, const glm::vec3 &p1, const glm::vec3 &p2){
	auto originToP1 = p1 - origin;
	auto originToP2 = p2 - origin;
	return glm::dot(glm::normalize(originToP1), glm::normalize(originToP2));
}

namespace Poses {
	inline bool allJointsTracked(std::vector<NUI_SKELETON_POSITION_TRACKING_STATE> joints) {
		for (auto joint : joints) {
			if (joint != NUI_SKELETON_POSITION_NOT_TRACKED) {
				return false;
			}
		}
		return true;
	}

	inline bool isArmsUp(NUI_SKELETON_DATA skeletonFrame, Vector4 skeletalPoints[NUI_SKELETON_POSITION_COUNT]) {
		NUI_SKELETON_POSITION_TRACKING_STATE leftShoulderTrackingState = skeletonFrame.eSkeletonPositionTrackingState[NUI_SKELETON_POSITION_SHOULDER_LEFT];
		NUI_SKELETON_POSITION_TRACKING_STATE leftElbowTrackingState = skeletonFrame.eSkeletonPositionTrackingState[NUI_SKELETON_POSITION_ELBOW_LEFT];
		NUI_SKELETON_POSITION_TRACKING_STATE leftWristTrackingState = skeletonFrame.eSkeletonPositionTrackingState[NUI_SKELETON_POSITION_WRIST_LEFT];

		NUI_SKELETON_POSITION_TRACKING_STATE rightShoulderTrackingState = skeletonFrame.eSkeletonPositionTrackingState[NUI_SKELETON_POSITION_SHOULDER_RIGHT];
		NUI_SKELETON_POSITION_TRACKING_STATE rightElbowTrackingState = skeletonFrame.eSkeletonPositionTrackingState[NUI_SKELETON_POSITION_ELBOW_RIGHT];
		NUI_SKELETON_POSITION_TRACKING_STATE rightWristTrackingState = skeletonFrame.eSkeletonPositionTrackingState[NUI_SKELETON_POSITION_WRIST_RIGHT];

		NUI_SKELETON_POSITION_TRACKING_STATE headState = skeletonFrame.eSkeletonPositionTrackingState[NUI_SKELETON_POSITION_HEAD];

		std::vector<NUI_SKELETON_POSITION_TRACKING_STATE> joints = { headState, leftShoulderTrackingState, leftElbowTrackingState, leftWristTrackingState, rightShoulderTrackingState, rightElbowTrackingState, rightWristTrackingState };
		if (allJointsTracked(joints)) {
			return false;
		}

		Vector4 leftShoulder = skeletalPoints[NUI_SKELETON_POSITION_SHOULDER_LEFT];
		Vector4 leftElbow = skeletalPoints[NUI_SKELETON_POSITION_ELBOW_LEFT];
		Vector4 leftWrist = skeletalPoints[NUI_SKELETON_POSITION_WRIST_LEFT];

		Vector4 rightShoulder = skeletalPoints[NUI_SKELETON_POSITION_SHOULDER_RIGHT];
		Vector4 rightElbow = skeletalPoints[NUI_SKELETON_POSITION_ELBOW_RIGHT];
		Vector4 rightWrist = skeletalPoints[NUI_SKELETON_POSITION_WRIST_RIGHT];

		Vector4 head = skeletalPoints[NUI_SKELETON_POSITION_HEAD];

		float leftAngle = angleBetweenPoints(toGlmVec4(leftElbow), toGlmVec4(leftShoulder), toGlmVec4(leftWrist));
		float rightAngle = angleBetweenPoints(toGlmVec4(rightElbow), toGlmVec4(rightShoulder), toGlmVec4(rightWrist));

		float lowerThreshold = std::numbers::pi - glm::radians(10.0f);
		float higherThreshold = std::numbers::pi + glm::radians(10.0f);
		if (higherThreshold >= leftAngle >= lowerThreshold && higherThreshold >= rightAngle >= lowerThreshold) {
			return false;
		}

		if (leftShoulder.y < leftWrist.y && rightShoulder.y < leftWrist.y && leftWrist.y > head.y && rightWrist.y > head.y) {
			return true;
		}

		return false;
	}

	inline bool isArmsDown(NUI_SKELETON_DATA skeletonFrame, Vector4 skeletalPoints[NUI_SKELETON_POSITION_COUNT]) {
		NUI_SKELETON_POSITION_TRACKING_STATE leftShoulderTrackingState = skeletonFrame.eSkeletonPositionTrackingState[NUI_SKELETON_POSITION_SHOULDER_LEFT];
		NUI_SKELETON_POSITION_TRACKING_STATE leftElbowTrackingState = skeletonFrame.eSkeletonPositionTrackingState[NUI_SKELETON_POSITION_ELBOW_LEFT];
		NUI_SKELETON_POSITION_TRACKING_STATE leftWristTrackingState = skeletonFrame.eSkeletonPositionTrackingState[NUI_SKELETON_POSITION_WRIST_LEFT];

		NUI_SKELETON_POSITION_TRACKING_STATE rightShoulderTrackingState = skeletonFrame.eSkeletonPositionTrackingState[NUI_SKELETON_POSITION_SHOULDER_RIGHT];
		NUI_SKELETON_POSITION_TRACKING_STATE rightElbowTrackingState = skeletonFrame.eSkeletonPositionTrackingState[NUI_SKELETON_POSITION_ELBOW_RIGHT];
		NUI_SKELETON_POSITION_TRACKING_STATE rightWristTrackingState = skeletonFrame.eSkeletonPositionTrackingState[NUI_SKELETON_POSITION_WRIST_RIGHT];

		NUI_SKELETON_POSITION_TRACKING_STATE hipState = skeletonFrame.eSkeletonPositionTrackingState[NUI_SKELETON_POSITION_HIP_CENTER];

		std::vector<NUI_SKELETON_POSITION_TRACKING_STATE> joints = { hipState, leftShoulderTrackingState, leftElbowTrackingState, leftWristTrackingState, rightShoulderTrackingState, rightElbowTrackingState, rightWristTrackingState };
		if (allJointsTracked(joints)) {
			return false;
		}

		Vector4 leftShoulder = skeletalPoints[NUI_SKELETON_POSITION_SHOULDER_LEFT];
		Vector4 leftElbow = skeletalPoints[NUI_SKELETON_POSITION_ELBOW_LEFT];
		Vector4 leftWrist = skeletalPoints[NUI_SKELETON_POSITION_WRIST_LEFT];

		Vector4 rightShoulder = skeletalPoints[NUI_SKELETON_POSITION_SHOULDER_RIGHT];
		Vector4 rightElbow = skeletalPoints[NUI_SKELETON_POSITION_ELBOW_RIGHT];
		Vector4 rightWrist = skeletalPoints[NUI_SKELETON_POSITION_WRIST_RIGHT];

		Vector4 hip = skeletalPoints[NUI_SKELETON_POSITION_HIP_CENTER];

		float leftAngle = angleBetweenPoints(toGlmVec4(leftElbow), toGlmVec4(leftShoulder), toGlmVec4(leftWrist));
		float rightAngle = angleBetweenPoints(toGlmVec4(rightElbow), toGlmVec4(rightShoulder), toGlmVec4(rightWrist));

		float lowerThreshold = std::numbers::pi - glm::radians(10.0f);
		float higherThreshold = std::numbers::pi + glm::radians(10.0f);
		if ((higherThreshold >= leftAngle) && (leftAngle >= lowerThreshold) && (higherThreshold >= rightAngle  >= lowerThreshold)) {
			return false;
		}

		if ((leftWrist.y < hip.y) && (rightWrist.y < hip.y)) {
			return true;
		}

		return false;
	}

	inline bool isTPose(NUI_SKELETON_DATA skeletonFrame, Vector4 skeletalPoints[NUI_SKELETON_POSITION_COUNT]) {
		NUI_SKELETON_POSITION_TRACKING_STATE leftShoulderTrackingState = skeletonFrame.eSkeletonPositionTrackingState[NUI_SKELETON_POSITION_SHOULDER_LEFT];
		NUI_SKELETON_POSITION_TRACKING_STATE leftElbowTrackingState = skeletonFrame.eSkeletonPositionTrackingState[NUI_SKELETON_POSITION_ELBOW_LEFT];
		NUI_SKELETON_POSITION_TRACKING_STATE leftWristTrackingState = skeletonFrame.eSkeletonPositionTrackingState[NUI_SKELETON_POSITION_WRIST_LEFT];

		NUI_SKELETON_POSITION_TRACKING_STATE rightShoulderTrackingState = skeletonFrame.eSkeletonPositionTrackingState[NUI_SKELETON_POSITION_SHOULDER_RIGHT];
		NUI_SKELETON_POSITION_TRACKING_STATE rightElbowTrackingState = skeletonFrame.eSkeletonPositionTrackingState[NUI_SKELETON_POSITION_ELBOW_RIGHT];
		NUI_SKELETON_POSITION_TRACKING_STATE rightWristTrackingState = skeletonFrame.eSkeletonPositionTrackingState[NUI_SKELETON_POSITION_WRIST_RIGHT];

		NUI_SKELETON_POSITION_TRACKING_STATE headState = skeletonFrame.eSkeletonPositionTrackingState[NUI_SKELETON_POSITION_HEAD];

		std::vector<NUI_SKELETON_POSITION_TRACKING_STATE> joints = { headState, leftShoulderTrackingState, leftElbowTrackingState, leftWristTrackingState, rightShoulderTrackingState, rightElbowTrackingState, rightWristTrackingState };
		if (allJointsTracked(joints)) {
			return false;
		}

		Vector4 leftShoulder = skeletalPoints[NUI_SKELETON_POSITION_SHOULDER_LEFT];
		Vector4 leftElbow = skeletalPoints[NUI_SKELETON_POSITION_ELBOW_LEFT];
		Vector4 leftWrist = skeletalPoints[NUI_SKELETON_POSITION_WRIST_LEFT];

		Vector4 rightShoulder = skeletalPoints[NUI_SKELETON_POSITION_SHOULDER_RIGHT];
		Vector4 rightElbow = skeletalPoints[NUI_SKELETON_POSITION_ELBOW_RIGHT];
		Vector4 rightWrist = skeletalPoints[NUI_SKELETON_POSITION_WRIST_RIGHT];

		float leftAngle = angleBetweenPoints(toGlmVec4(leftElbow), toGlmVec4(leftShoulder), toGlmVec4(leftWrist));
		float rightAngle = angleBetweenPoints(toGlmVec4(rightElbow), toGlmVec4(rightShoulder), toGlmVec4(rightWrist));

		float lowerThreshold = std::numbers::pi - glm::radians(10.0f);
		float higherThreshold = std::numbers::pi + glm::radians(10.0f);

		// Check if arms are straight
		if ((higherThreshold >= leftAngle && leftAngle >= lowerThreshold) && (higherThreshold >= rightAngle && rightAngle >= lowerThreshold)) {
			return false;
		}

		float verticalThreshold = 0.1f;
		bool leftArmT = leftWrist.y < leftShoulder.y + verticalThreshold && leftWrist.y > leftShoulder.y - verticalThreshold;
		bool rightArmT = rightWrist.y < rightShoulder.y + verticalThreshold && rightWrist.y > rightShoulder.y - verticalThreshold;

		return leftArmT && rightArmT;
	}

	inline SkeletalPoses detectPose(NUI_SKELETON_DATA skeletonFrame) {
		Vector4 skeletalPoints[NUI_SKELETON_POSITION_COUNT];
		for (int i = 0; i < NUI_SKELETON_POSITION_COUNT; ++i)
		{
			skeletalPoints[i] = skeletonFrame.SkeletonPositions[i];
		}
		skeletalPoints[NUI_SKELETON_POSITION_SHOULDER_LEFT];

		if (isArmsUp(skeletonFrame, skeletalPoints)) {
			return SkeletalPoses::ARMS_UP;
		}
		else if (isArmsDown(skeletonFrame, skeletalPoints)) {
			return SkeletalPoses::ARMS_DOWN;
		}
		else if (isTPose(skeletonFrame, skeletalPoints)) {
			return SkeletalPoses::T_POSE;
		}
		else {
			return SkeletalPoses::UNKNOWN;
		}
	}

	inline std::vector<SkeletalPoses> detectPoses(NUI_SKELETON_FRAME skeletonFrame) {
		std::vector<SkeletalPoses> detectedPoses;
		for (int i = 0; i < NUI_SKELETON_COUNT; i++) {
			if (NUI_SKELETON_TRACKED == skeletonFrame.SkeletonData[i].eTrackingState) {
				detectedPoses.push_back(detectPose(skeletonFrame.SkeletonData[i]));
			}
		}
		while (detectedPoses.size() != 2) {
			detectedPoses.push_back(SkeletalPoses::UNKNOWN);
		}
		return detectedPoses;
	}	
};