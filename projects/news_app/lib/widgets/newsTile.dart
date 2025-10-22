import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/artical_model.dart';

class Newstile extends StatelessWidget {
  final ArticleModel articleModel;
  const Newstile({super.key, required this.articleModel});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: CachedNetworkImage(
          imageUrl:articleModel.urlToImage.toString() ,
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 500),
          ),

        ),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          articleModel.description.toString(),
          style: TextStyle(color: Colors.grey, fontSize: 24),
        ),
      ],
    );
  }
}
