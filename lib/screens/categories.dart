import 'package:flutter/material.dart';
import 'package:carrented/services/utils.dart';
import 'package:carrented/widgets/categories_widget.dart';
import 'package:carrented/widgets/text_widget.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({Key? key}) : super(key: key);

  List<Color> gridColors = [
    const Color(0xff53B175),
    const Color(0xffF8A44C),
    const Color(0xffF7A593),
    const Color(0xffD3B0E0),
    const Color(0xffFDE598),
    const Color(0xffB7DFF5),
  ];

  List<Map<String, dynamic>> catInfo = [
    {
      'imgPath': 'assets/images/new_cat/saba.png',
      'catText': 'SABA',
    },
    {
      'imgPath': 'assets/images/new_cat/kia.png',
      'catText': 'KIA',
    },
    {
      'imgPath': 'assets/images/new_cat/hounda1.png',
      'catText': 'HONDA',
    },
    {
      'imgPath': 'assets/images/new_cat/audi3.png',
      'catText': 'AUDI',
    },
    {
      'imgPath': 'assets/images/new_cat/bmw.png',
      'catText': 'BMW',
    },
    {
      'imgPath': 'assets/images/new_cat/mercedes.png',
      'catText': 'Marcedes',
    },
  ];
  @override
  Widget build(BuildContext context) {
    final utils = Utils(context);
    Color color = utils.color;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: TextWidget(
            text: 'Categories',
            color: color,
            textSize: 24,
            isTitle: true,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            //عدد العناصر يلي بعرض الشاشة
            crossAxisCount: 2,
            childAspectRatio: 240 / 250,
            //المسافة بين العناصر بالعرض
            crossAxisSpacing: 10, // Vertical spacing
            //المسافة بين العناصر بالطول
            mainAxisSpacing: 10, // Horizontal spacing
            children: List.generate(6, (index) {
              return CategoriesWidget(
                catText: catInfo[index]['catText'],
                imgPath: catInfo[index]['imgPath'],
                passedColor: gridColors[index],
              );
            }),
          ),
        ));
  }
}
