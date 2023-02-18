import 'package:flutter/material.dart';
import 'app_colors.dart';
class SliderWidget extends StatelessWidget {
  const SliderWidget({
    Key? key,
    required this.value,
  }) : super(key: key);
  final int value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: SliderTheme(
        data: SliderThemeData(
          overlayShape: SliderComponentShape.noOverlay,
          thumbShape: SliderComponentShape.noThumb,
        ),
        child: Slider(
          activeColor: AppColor.slaiderColor,
          inactiveColor: AppColor.red,
          value: value.toDouble(),
          max: 10,
          onChanged: (value) {},
        ),
      ),
    );
  }
}
