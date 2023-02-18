import 'package:flutter/material.dart';
import 'package:game_test/app_colors.dart';
import 'package:game_test/app_styles.dart';
import 'package:game_test/app_text.dart';
import 'package:game_test/test_page.dart';

import 'components.dart';
import 'continents.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      appBar: AppBar(
        title: const Text(
          AppText.gameTitle,
          style: AppStyle.textStyle,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings, color: AppColor.blue)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert, color: AppColor.black)),
        ],
        centerTitle: true,
        backgroundColor: AppColor.bgColor,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          const Divider(
            height: 5,
            color: AppColor.blue,
            indent: 30,
            endIndent: 30,
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: continents.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return ContinentsCard(
                  item: continents[index],
                  onTap: () {
                    if (continents[index].suro != null) {
                      Navigator.push<void>(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => TestPage(
                            suroo: continents[index].suro!,
                            item: continents[index],
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content:
                              Text('Кечиресиз бул континентте суроо жок!!!'),
                        ),
                      );
                    }
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
