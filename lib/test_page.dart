import 'package:flutter/material.dart';
import 'package:game_test/app_colors.dart';
import 'package:game_test/continents.dart';
import 'package:game_test/suroo.dart';
import 'package:game_test/slider_widget.dart';
import 'package:game_test/variant.dart';

import 'appBar_title_widget.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key, required this.suroo, required this.item});
  final List<Suroo> suroo;
  final Continents item;

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int index = 0;
  int tuuraJooptor = 0;
  int kataJooptor = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      appBar: AppBar(
          foregroundColor: AppColor.black,
          elevation: 0.0,
          backgroundColor: AppColor.bgColor,
          title: AppBarTitleWidget(
            tuuraJooptor: tuuraJooptor,
            kataJooptor: kataJooptor,
            item: widget.item,
          )),
      body: Column(
        children: [
          SliderWidget(
            value: index,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            widget.suroo[index].text,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                  'assets/images/${widget.suroo[index].images}.jpg'),
            ),
          ),
          VariantButton(
            jooptor: widget.suroo[index].jooptor,
            onTap: (isTrue) {
              if (index + 1 == widget.suroo.length) {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Тесттин жыйынтыгы'),
                    content: Text(
                      'Туура жооптор: $tuuraJooptor,\n Ката жооптор $kataJooptor',
                      style: const TextStyle(fontSize: 20),
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          setState(() {
                            index = 0;
                            tuuraJooptor = 0;
                            kataJooptor = 0;
                          });
                          Navigator.pop(
                            context,
                          );
                        },
                        child: const Text(
                          'кайрадан баштоо',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                if (isTrue == true) {
                  tuuraJooptor++;
                } else {
                  kataJooptor++;
                }
                setState(() {
                  index++;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
