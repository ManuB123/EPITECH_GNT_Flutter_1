import 'package:flutter/material.dart';
import 'package:test_flutter/data/userData.dart';
import 'package:test_flutter/Components/userWidget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:test_flutter/Components/ImageSlider.dart';
import 'package:camera/camera.dart';
import 'package:test_flutter/Page/Camera.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({
    Key? key,
  }): super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),
        Center(child: Text(Profile.user.name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
        const SizedBox(height: 8),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 48),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              Text(Profile.user.description, style: const TextStyle(fontSize: 16, height: 1.4, color: Color(0xffA1A1A1)))
            ],
          ) ,
        ),
        const SizedBox(height: 24,),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 48),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IntrinsicHeight (
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Text("Recipes"),
                          Text("3", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
                        ],
                      ),
                      VerticalDivider(),
                      Column(
                        children: const [
                          Text("Followers"),
                          Text("160", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
                        ],
                      ),
                      VerticalDivider(),
                      Column(
                        children: const [
                          Text("Following"),
                          Text("120", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
                        ],
                      )
                    ],
                  )
              ),
            ],
          ) ,
        ),
        const SizedBox(height: 24),
        const Divider(thickness: 2),
        const SizedBox(height: 24),
        Padding(padding: EdgeInsets.symmetric(horizontal: 48), child:const Text("My Recipes", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
        const SizedBox(height: 24),
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: false,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
          ),
          items: imageSliders,
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
