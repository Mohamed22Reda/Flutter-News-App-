
import 'package:dio/dio.dart';
import 'package:news/models/article_model.dart';

class NewsService
{
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getTopHeadlines({required String category,required String country}) async
  {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=$country&apiKey=715cd81cd2054869bc071dd09503059d&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
            image: article['urlToImage'],
            title: article['title'],
            subTitle: article['description'],
            url: article['url']
        );
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch(e){
      return [];
    }
  }

}