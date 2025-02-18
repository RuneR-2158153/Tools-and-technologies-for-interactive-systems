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
	std::vector<SkeletalPoses> detectPoses(NUI_SKELETON_FRAME skeletonFrame) {
		std::vector<SkeletalPoses> detectedPoses = {SkeletalPoses::UNKNOWN, SkeletalPoses::UNKNOWN};
		for (int i = 0; i < 2; i++) {
			detectedPoses[i] = detectPose(skeletonFrame.SkeletonData[i]);
		}
		return detectedPoses;
	}

	SkeletalPoses detectPose(NUI_SKELETON_DATA skeletonFrame) {
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
	}

	bool isArmsUp(NUI_SKELETON_DATA skeletonFrame, Vector4 skeletalPoints[NUI_SKELETON_POSITION_COUNT]) {

	}

	bool isArmsDown(NUI_SKELETON_DATA skeletonFrame, Vector4 skeletalPoints[NUI_SKELETON_POSITION_COUNT]) {
		return false;
	}

	bool isTPose(NUI_SKELETON_DATA skeletonFrame, Vector4 skeletalPoints[NUI_SKELETON_POSITION_COUNT]) {
		return false;
	}
};