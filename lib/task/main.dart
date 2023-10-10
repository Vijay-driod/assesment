import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_assesment/Task/textlistview.dart';
import 'buttons.dart';
import 'textdescription.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          children: [
            ImageSliderWithStackIndicators(),
            ContainerWithRows(),
            TextListView(),
            ButtonRow(),
            // MyHomePage(),

          ],
        ),
      ),
    );
  }
}

class ImageSliderWithStackIndicators extends StatefulWidget {
  @override
  _ImageSliderWithStackIndicatorsState createState() =>
      _ImageSliderWithStackIndicatorsState();
}

class _ImageSliderWithStackIndicatorsState
    extends State<ImageSliderWithStackIndicators> {
  int _currentIndex = 0;

  final List<String> imageList = [
    'https://www.gap.com/webcontent/0053/975/793/cn53975793.jpg',
    'https://www.gap.com/webcontent/0053/973/026/cn53973026.jpg',
    'https://www.gap.com/webcontent/0053/862/293/cn53862293.jpg',
    'https://www.gap.com/webcontent/0053/870/125/cn53870125.jpg',
    // Add more image URLs here
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            CarouselSlider(
              options: CarouselOptions(
                height: 480,
                autoPlay: false,
                viewportFraction: 1.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: imageList.map((imageURL) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      height: 4,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: Image.network(
                        imageURL,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList.map((url) {
                int index = imageList.indexOf(url);
                return Container(
                  width: 8,
                  height: 16,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index
                        ? Colors.blue
                        : Colors.grey.withOpacity(0.8),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ],
    );
  }
}




