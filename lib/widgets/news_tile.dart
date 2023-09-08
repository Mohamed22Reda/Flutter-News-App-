import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:url_launcher/url_launcher_string.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
          launchUrlString('${articleModel.url}');
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child:  articleModel.image == null ?
              Image.asset(
                'assets/general.jpg',
                fit: BoxFit.fill,
                width: double.infinity,
                height: 250,
              ):


              Image.network(
              articleModel.image!,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              )

          ),
          const SizedBox(
            height: 12,
          ),
          Text(
           articleModel.title ,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
           articleModel.subTitle == null ?
          const Text(
              'No Sub Title',
            maxLines: 2,
            style: TextStyle(
                color: Colors.grey,
                fontSize: 14
            ),
          ) :
          Text(
            articleModel.subTitle!,
            maxLines: 2,
            style: const TextStyle(
                color: Colors.grey,
                fontSize: 14
            ),
          )
        ],
      ),
    );
  }
}
