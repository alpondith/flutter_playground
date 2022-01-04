import 'package:flutter/material.dart';
import '../../box.dart';
import '../../utils/colors.dart';
import '../../utils/letters.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color> colors = ColorManager.PRIMARY_LIST;
    List<String> data = Letters.DATA;

    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            runSpacing: 10,
            children: [
              for (int i = 0; i < data.length; i++)
                Box(
                  color: colors[i % colors.length],
                  text: data[i],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
