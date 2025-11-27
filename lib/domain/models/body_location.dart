/// Body location model for tattoo placement
class BodyLocation {
  static const Map<String, List<BodyLocationItem>> categories = {
    'arms': [
      BodyLocationItem('arm_shoulder', 'shoulder', 0xe50e), // Icons.accessibility_new
      BodyLocationItem('arm_bicep', 'bicep', 0xe50e),
      BodyLocationItem('arm_forearm', 'forearm', 0xe50e),
      BodyLocationItem('arm_wrist', 'wrist', 0xe50e),
      BodyLocationItem('arm_full', 'fullArm', 0xe50e),
    ],
    'legs': [
      BodyLocationItem('leg_thigh', 'thigh', 0xe3eb), // Icons.directions_walk
      BodyLocationItem('leg_calf', 'calf', 0xe3eb),
      BodyLocationItem('leg_ankle', 'ankle', 0xe3eb),
      BodyLocationItem('leg_full', 'fullLeg', 0xe3eb),
    ],
    'torso': [
      BodyLocationItem('torso_chest', 'chest', 0xe87d), // Icons.person
      BodyLocationItem('torso_back', 'back', 0xe87d),
      BodyLocationItem('torso_ribs', 'ribs', 0xe87d),
      BodyLocationItem('torso_abdomen', 'abdomen', 0xe87d),
    ],
    'headNeck': [
      BodyLocationItem('head_neck', 'headNeck', 0xe420), // Icons.face
    ],
    'handsFeet': [
      BodyLocationItem('hand', 'hand', 0xe8e5), // Icons.pan_tool
      BodyLocationItem('foot', 'foot', 0xe3eb),
    ],
    'other': [
      BodyLocationItem('other', 'other', 0xe145), // Icons.add_circle_outline
    ],
  };

  static String getCategoryLabel(String category) {
    // These will be replaced with localized strings
    switch (category) {
      case 'arms':
        return 'Brazos';
      case 'legs':
        return 'Piernas';
      case 'torso':
        return 'Torso';
      case 'headNeck':
        return 'Cabeza/Cuello';
      case 'handsFeet':
        return 'Manos/Pies';
      case 'other':
        return 'Otro';
      default:
        return category;
    }
  }

  static List<String> getAllValues() {
    final List<String> values = [];
    categories.forEach((_, items) {
      values.addAll(items.map((item) => item.value));
    });
    return values;
  }

  static BodyLocationItem? findByValue(String value) {
    for (final category in categories.values) {
      final item = category.firstWhere(
        (item) => item.value == value,
        orElse: () => BodyLocationItem('', '', 0),
      );
      if (item.value.isNotEmpty) {
        return item;
      }
    }
    return null;
  }
}

class BodyLocationItem {
  final String value;
  final String labelKey;
  final int iconData;

  const BodyLocationItem(this.value, this.labelKey, this.iconData);
}