#include "water_map_v2.h"

WaterMapV2::WaterMapV2() {
}

WaterMapV2::~WaterMapV2() {
}

WaterRegionType WaterMapV2::ReturnRegionType(float y, float x, float z) const {
	size_t sz = regions.size();
	for(size_t i = 0; i < sz; ++i) {
		auto const &region = regions[i];
		if (region.second.ContainsPoint(glm::vec3(x, y, z))) {
			return region.first;
		}
	}
	return RegionTypeNormal;
}

bool WaterMapV2::InWater(const xyz_location& location) const {
	return ReturnRegionType(location.m_Y, location.m_X, location.m_Z) == RegionTypeWater;
}

bool WaterMapV2::InVWater(float y, float x, float z) const {
	return ReturnRegionType(y, x, z) == RegionTypeVWater;
}

bool WaterMapV2::InLava(float y, float x, float z) const {
	return ReturnRegionType(y, x, z) == RegionTypeLava;
}

bool WaterMapV2::InLiquid(float y, float x, float z) const {
    auto location = xyz_location(y, x, z);
	return InWater(location) || InLava(y, x, z);
}

bool WaterMapV2::Load(FILE *fp) {
	uint32 region_count;
	if (fread(&region_count, sizeof(region_count), 1, fp) != 1) {
		return false;
	}

	for(uint32_t i = 0; i < region_count; ++i) {
		uint32_t region_type;
		float x;
		float y;
		float z;
		float x_rot;
		float y_rot;
		float z_rot;
		float x_scale;
		float y_scale;
		float z_scale;
		float x_extent;
		float y_extent;
		float z_extent;

		if (fread(&region_type, sizeof(region_type), 1, fp) != 1) {
			return false;
		}

		if (fread(&x, sizeof(x), 1, fp) != 1) {
			return false;
		}

		if (fread(&y, sizeof(y), 1, fp) != 1) {
			return false;
		}

		if (fread(&z, sizeof(z), 1, fp) != 1) {
			return false;
		}

		if (fread(&x_rot, sizeof(x_rot), 1, fp) != 1) {
			return false;
		}

		if (fread(&y_rot, sizeof(y_rot), 1, fp) != 1) {
			return false;
		}

		if (fread(&z_rot, sizeof(z_rot), 1, fp) != 1) {
			return false;
		}

		if (fread(&x_scale, sizeof(x_scale), 1, fp) != 1) {
			return false;
		}

		if (fread(&y_scale, sizeof(y_scale), 1, fp) != 1) {
			return false;
		}

		if (fread(&z_scale, sizeof(z_scale), 1, fp) != 1) {
			return false;
		}

		if (fread(&x_extent, sizeof(x_extent), 1, fp) != 1) {
			return false;
		}

		if (fread(&y_extent, sizeof(y_extent), 1, fp) != 1) {
			return false;
		}

		if (fread(&z_extent, sizeof(z_extent), 1, fp) != 1) {
			return false;
		}

		regions.push_back(std::make_pair((WaterRegionType)region_type,
			OrientedBoundingBox(glm::vec3(x, y, z), glm::vec3(x_rot, y_rot, z_rot), glm::vec3(x_scale, y_scale, z_scale), glm::vec3(x_extent, y_extent, z_extent))));
	}

	return true;
}
