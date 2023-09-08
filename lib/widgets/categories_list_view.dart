import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'category_card.dart';


class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const
  [
    CategoryModel(image: 'assets/busines.jpg', categoryName: 'Business'),
    CategoryModel(image: 'assets/general.jpg', categoryName: 'General'),
    CategoryModel(image: 'assets/health.jpg', categoryName: 'Health'),
    CategoryModel(image: 'assets/intertainment.jpg', categoryName: 'Entertainment'),
    CategoryModel(image: 'assets/science.png', categoryName: 'Science'),
    CategoryModel(image: 'assets/sports.jpg', categoryName: 'Sports'),
    CategoryModel(image: 'assets/technology.jpg', categoryName: 'Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context,index)
          {
            return  CategoryCard(
              category: categories[index],
            );
          }
      ),
    );
  }
}
