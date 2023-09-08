import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/services/news_services.dart';
import 'package:news/views/home_view.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {

  runApp(const NewsApp());
}

final dio = Dio();



class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}