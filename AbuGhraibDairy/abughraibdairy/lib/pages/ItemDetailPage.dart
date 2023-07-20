import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ItemDetailPage extends StatelessWidget {
  final Map<String, dynamic> item;

  ItemDetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900, // Makes the entire background blue
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'منتجاتنا',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
          ),
        ),
        backgroundColor:
            Colors.blue.shade900, // Makes the AppBar background blue
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              item['name'],
              style: TextStyle(
                color: Colors.white, // Makes the text color white
                fontSize: 28.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              item['fulltext'],
              style: TextStyle(
                color: Colors.white, // Makes the text color white
                fontSize: 14.0,
              ),
              textAlign: TextAlign.center,
            ),
            // Add more widgets as needed
          ],
        ),
      ),
    );
  }
}
