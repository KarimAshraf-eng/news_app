import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Features/Home/Data/category_model.dart';

import '../../managers/cubit/article_cubit.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel categoryModel;
  const CategoryCard({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        BlocProvider.of<ArticleCubit>(context).featchArticle(categoryModel.name == "Entertainment"?
        "sources=techcrunch":"country=us&category=${categoryModel.name.toLowerCase()}"
        );
      },
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: SizedBox(
                width: 200,
                height: 120,
                child: Image.asset(
                  categoryModel.image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black45,
            ),
            width: 200,
            height: 120,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Text(
                  categoryModel.name,
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        offset: Offset(0, 0),
                        color: Colors.black,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                ),
                Text(
                  categoryModel.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
