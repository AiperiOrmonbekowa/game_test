import 'package:flutter/material.dart';
import 'package:game_test/suroo.dart';

import 'app_colors.dart';

class VariantButton extends StatelessWidget {
  const VariantButton({
    Key? key,
    required this.jooptor,
    required this.onTap,
  }) : super(key: key);
  final List<Joop> jooptor;
  final Function(bool) onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 130,
        ),
        itemBuilder: ((context, index) {
          return Card(
            color: AppColor.grey,
            child: InkWell(
              onTap: () {
                onTap(jooptor[index].isTrue);
              },
              child: Center(
                  child: Text(
                jooptor[index].text,
                style: const TextStyle(fontSize: 26),
              )),
            ),
          );
        }),
      ),
    );
  }
}
