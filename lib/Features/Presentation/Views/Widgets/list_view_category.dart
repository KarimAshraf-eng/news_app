import 'package:flutter/material.dart';
import 'package:news_app/Features/Data/category_data.dart';
import 'package:news_app/Features/Presentation/Views/Widgets/category_card.dart';

class ListViewCategory extends StatelessWidget {
  const ListViewCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) {
          return CategoryCard(categoryModel: category[index]);
        },
      ),
    );
  }
}
