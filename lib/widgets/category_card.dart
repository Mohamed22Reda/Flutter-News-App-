import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        Navigator.of(context).push(MaterialPageRoute(builder:(context)
        {
          return CategoryView(category: category.categoryName,);
        }
        ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 140,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image:  DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(category.image),
            ),

          ),
          child:  Center(
              child: Text(
                category.categoryName,
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )),
        ),
      ),
    );
  }
}
