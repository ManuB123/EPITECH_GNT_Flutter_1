import 'package:flutter/material.dart';
import 'package:test_flutter/data/userData.dart';
import 'package:test_flutter/Components/userWidget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:test_flutter/Components/ImageSlider.dart';
import 'package:camera/camera.dart';
import 'package:test_flutter/Page/Camera.dart';
import 'dart:io';

const LopesUrl = 'https://media-exp1.licdn.com/dms/image/C5603AQFxIX8VwOWAIQ/profile-displayphoto-shrink_800_800/0/1554474920022?e=1651708800&v=beta&t=UBWzx5dexpgjgs3D7FRiGk9Q4XX989T9HHTBmeXLvB4';

class Account extends StatefulWidget {
  final String? imagePath;

  const Account({Key? key, this.imagePath}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}
class _AccountState extends State<Account> {
  final ValueNotifier<String> _img = ValueNotifier<String>('lopes');
  @override
  Widget build(BuildContext context) {
    var user = Profile.user;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("My Profile", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
        Center(
          child: Stack(
            children: [
                ElevatedButton(onPressed: () async {
                  final result = await availableCameras().then(
                        (value) => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TakePictureScreen(camera: value[0],),
                      ),
                    ),
                  );
                  _img.value = result;
                }, child: ValueListenableBuilder<String> (
                  valueListenable: _img,
                  builder: (context, _img, _) {
                    var myImage = Image.network(LopesUrl, width: 128, height: 128, fit: BoxFit.cover);
                    if (_img != 'lopes') {
                      myImage = Image.file(File(_img), width: 128,height: 128, fit: BoxFit.cover,);
                    }
                    return ClipOval(
                      child: Material(
                        color: Colors.transparent,
                        child: myImage
                      ),
                    );
                  },
                )
              ),
            ]
          )
        ),
          const UserWidget(),
        ],
      )
    );
  }
}