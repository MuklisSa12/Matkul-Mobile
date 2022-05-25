import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


final List<String> imgList = [
  'https://images.unsplash.com/photo-1649752466858-d3e598c4cd8d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
  'https://blog.mizanstore.com/wp-content/uploads/2018/05/Revisian-Feed-Ig-Lowongan-Kerja.jpg',
  'https://images.unsplash.com/photo-1584472667886-d921c9805134?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=399&q=80',
  'https://images.unsplash.com/photo-1649735916347-083fa2b01d7e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=771&q=80'
];
final List<Widget> imageSliders = imgList
    .map((item) => Container(
  child: Container(
    margin: EdgeInsets.all(5.0),
    child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Image.network(item, fit: BoxFit.cover, width: 1000.0),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
              ),
            ),
          ],
        )),
  ),
))
    .toList();

class CarouselNew extends StatefulWidget {
  @override
  State<CarouselNew> createState() => _CarouselNewState();
}

class _CarouselNewState extends State<CarouselNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.5,
            enlargeCenterPage: true
          ),
          items: imageSliders,
        ),
      ),
    );
  }
}
