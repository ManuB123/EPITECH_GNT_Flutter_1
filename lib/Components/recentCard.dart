import 'package:flutter/material.dart';
import 'package:test_flutter/components/starRating.dart';
 
class RecentCard extends StatelessWidget {
  final String name;
  final String image;
  final double score;
 
  const RecentCard({
    Key? key,
    required this.name,
    required this.image,
    required this.score,
  }) : super(key: key);
 
  static RecentCard fromJson(Map<String, dynamic> json) {
    return RecentCard(
      name: json["name"],
      image: json["image"],
      score: json["score"],
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.5),
              child: Image.network(
                image,
                fit: BoxFit.cover,
                width: 150,
                height: 150,
                loadingBuilder: (context, child, progress) => progress == null ? child : const SizedBox(height: 25, width: 25, child: CircularProgressIndicator()),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, right: 8, left: 8),
            child: Text(name, style: const TextStyle(fontSize: 14, fontFamily: 'CircularStd', fontWeight: FontWeight.bold), maxLines: 2,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: StarRating(rating: score),
          ),
        ],
      ),
    );
  }
}