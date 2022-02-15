import 'package:flutter/material.dart';

class UserWidget extends StatelessWidget {
  final VoidCallback onClicked;
  final String image;

  const UserWidget({
    Key? key,
    required this.onClicked,
    required this.image,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Image(),
          Positioned(
            bottom: 0,
            right: 4,
            child: EditButton()
          )
        ],
      )
    );
  }

  Widget EditButton() {
    return ClipOval(
      child:Container(
        padding: EdgeInsets.all(8),
        color: Colors.blue,
        child: const Icon(
          Icons.edit,
          size: 20,
          color: Colors.white,
        ),
      ) ,
    );
  }

  Widget Image() {
    final myImage = NetworkImage(image);
    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: myImage,
          width: 128,
          height: 128,
          fit: BoxFit.cover,
          child: InkWell(onTap: onClicked,),
        ),
      ),
    );
  }
}
