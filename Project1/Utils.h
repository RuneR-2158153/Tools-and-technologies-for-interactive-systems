#pragma once

#include <glm/mat3x3.hpp>
#include "math.h"

namespace Utils 
{
	inline double sqrlenv3(glm::vec3 a) {
		return a.x * a.x + a.y * a.y + a.z * a.z;
	}

	inline double float_epsilon() {
		return 0.000000119;
	}


	inline void make_perp_vectors(glm::vec3 a, glm::vec3& out1, glm::vec3& out2) {
		if (glm::abs(a.x) > glm::abs(a.y) && glm::abs(a.x) > glm::abs(a.z)) {
			out1.x = -a.y;
			out1.y = a.x;
			out1.z = 0.0;
		}
		else {
			out1.x = 0.0;
			out1.y = a.z;
			out1.z = -a.y;
		}
		out1 = glm::normalize(out1);
		out2 = glm::cross(a, out1);
	}

	inline glm::mat3 make_axis_angle_matrix(glm::vec3 axis, double angle) {
		double fCos = cos(angle);
		double fSin = sin(angle);
		double fX2 = axis.x * axis.x;
		double fY2 = axis.y * axis.y;
		double fZ2 = axis.z * axis.z;
		double fXYM = axis.x * axis.y * (1 - fCos);
		double fXZM = axis.x * axis.z * (1 - fCos);
		double fYZM = axis.y * axis.z * (1 - fCos);
		double fXSin = axis.x * fSin;
		double fYSin = axis.y * fSin;
		double fZSin = axis.z * fSin;

		glm::mat3 result = glm::mat3();
		result[0][0] = fX2 * (1 - fCos) + fCos;
		result[0][1] = fXYM - fZSin;
		result[0][2] = fXZM + fYSin;
		result[1][0] = fXYM + fZSin;
		result[1][1] = fY2 * (1 - fCos) + fCos;
		result[1][2] = fYZM - fXSin;
		result[2][0] = fXZM - fYSin;
		result[2][1] = fYZM + fXSin;
		result[2][2] = fZ2 * (1 - fCos) + fCos;
		return result;
	}

	inline glm::mat3 make_align_axis_matrix(glm::vec3 initialAxis, glm::vec3 alignWithAxis) {
		initialAxis = glm::normalize(initialAxis);
		alignWithAxis = glm::normalize(alignWithAxis);

		double axisDot = glm::dot(initialAxis, alignWithAxis);
		glm::vec3 axisCross = glm::cross(initialAxis, alignWithAxis);

		if (sqrlenv3(axisCross) > float_epsilon()) {
			axisCross = glm::normalize(axisCross);
			double fAngle = acos(axisDot);
			return make_axis_angle_matrix(axisCross, fAngle);
		}
		else if (axisDot < 0) {
			glm::vec3 perp1 = glm::vec3();
			glm::vec3 perp2 = glm::vec3();
			make_perp_vectors(initialAxis, perp1, perp2);
			return make_axis_angle_matrix(perp1, 3.14159265);
		}
		else
		{
			return glm::mat3();
		}
	}
}