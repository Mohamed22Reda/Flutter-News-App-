import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import '../services/news_services.dart';
import '../widgets/categories_list_view.dart';
import '../widgets/news_list_view.dart';
import '../widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.amber, fontSize: 30),
            ),
          ],
        ),
      ),

      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),

        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),),
            SliverToBoxAdapter(
              child: SizedBox(
              height: 22,
            ),
            ),
           NewsListViewBuilder(category: 'general',),

          ],
        ),
      ),
      //
      //
    );
  }
}


