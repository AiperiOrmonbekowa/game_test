import 'package:flutter/material.dart';
import 'package:game_test/continents.dart';
import 'package:game_test/suroo.dart';

import 'app_colors.dart';

class AppBarTitleWidget extends StatelessWidget {
  const AppBarTitleWidget({
    Key? key,
    required this.item,
    required this.tuuraJooptor,
    required this.kataJooptor,
  }) : super(key: key);
  final Continents item;
  final int tuuraJooptor;
  final int kataJooptor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 4.5),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13),
                  child: Text(
                    item.name,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
                Text(
                  '$tuuraJooptor :',
                  style: const TextStyle(color: AppColor.green, fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.5),
                  child: Text(
                    '${europaQuestions.length}',
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Text(
                  ': $kataJooptor',
                  style: const TextStyle(color: AppColor.red, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
        Row(
          children: [
            SizedBox(
              width: 50,
              height: 30,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return const Icon(Icons.favorite, color: AppColor.red);
                }),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const Icon(Icons.more_vert),
            ),
          ],
        ),
      ],
    );
  }
}
