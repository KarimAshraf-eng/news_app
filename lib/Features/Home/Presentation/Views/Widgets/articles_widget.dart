import 'package:flutter/material.dart';
import 'package:news_app/Features/Home/Data/models/articles_model/articles_model.dart';

class ArticlesWidget extends StatelessWidget {
  final ArticlesModel model;
  const ArticlesWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        width: 100,
        height: 400,
        child: Column(
          children: [
            SizedBox(
              height: 250,
              width: double.infinity,
              child: Image.network(
                model.urlToImage??"https://th.bing.com/th/id/OIP.ErVqyhnxrnRtwNPi-lXhwQHaDb?rs=1&pid=ImgDetMain",
                fit: BoxFit.cover,
              ),
            ),
            Text(
              model.title??"No Title !",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 25),
            ),
            Text(
              model.description??"No Description !",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
