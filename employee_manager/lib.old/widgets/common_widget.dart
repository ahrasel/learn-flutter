 import 'package:flutter/material.dart';
 
 GestureDetector kCircleAvater(String url) {
    return GestureDetector(
      onTap: () {
        print('Click on cirlce avatr');
      },
      child: CircleAvatar(backgroundImage: NetworkImage(url)),
    );
  }
  