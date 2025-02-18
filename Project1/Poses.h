#pragma once

#include <vector>
#include "NuiApi.h"

enum class SkeletalPoses {
	ARMS_DOWN = 1,
	ARMS_UP = 2,
	T_POSE = 3,
	UNKNOWN = 4,
};

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

		std::vector<NUI_SKELETON_POSITION_TRACKING_STATE> joints = { leftShoulderTrackingState, leftElbowTrackingState, leftWristTrackingState, rightShoulderTrackingState, rightElbowTrackingState, rightWristTrackingState };
		if (allJointsTracked(joints)) {
			return false;
		}

		Vector4 leftShoulder = skeletalPoints[NUI_SKELETON_POSITION_SHOULDER_LEFT];
		Vector4 leftElbow = skeletalPoints[NUI_SKELETON_POSITION_ELBOW_LEFT];
		Vector4 leftWrist = skeletalPoints[NUI_SKELETON_POSITION_WRIST_LEFT];

		Vector4 rightShoulder = skeletalPoints[NUI_SKELETON_POSITION_SHOULDER_RIGHT];
		Vector4 rightElbow = skeletalPoints[NUI_SKELETON_POSITION_ELBOW_RIGHT];
		Vector4 rightWrist = skeletalPoints[NUI_SKELETON_POSITION_WRIST_RIGHT];
	}

	inline bool isArmsDown(NUI_SKELETON_DATA skeletonFrame, Vector4 skeletalPoints[NUI_SKELETON_POSITION_COUNT]) {
		return false;
	}

	inline bool isTPose(NUI_SKELETON_DATA skeletonFrame, Vector4 skeletalPoints[NUI_SKELETON_POSITION_COUNT]) {
		return false;
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
		std::vector<SkeletalPoses> detectedPoses = { SkeletalPoses::UNKNOWN, SkeletalPoses::UNKNOWN };
		for (int i = 0; i < 2; i++) {
			detectedPoses[i] = detectPose(skeletonFrame.SkeletonData[i]);
		}
		return detectedPoses;
	}
};