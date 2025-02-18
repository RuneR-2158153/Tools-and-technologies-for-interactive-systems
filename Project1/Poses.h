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
			NUI_SKELETON_TRACKING_STATE trackingState = skeletonFrame.SkeletonData[i].eTrackingState;

		}
		return detectedPoses;
	}
};