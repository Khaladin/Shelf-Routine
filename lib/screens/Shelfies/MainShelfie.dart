import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainShelfie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> list = ['Skin','Hair','body','tincture','hands'];
    return Scaffold(
        appBar: AppBar(
            title: Text('My Shelfie')
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('My Shelfies'),
              CarouselSlider(
                options: CarouselOptions(),
                items: list.map((item) => Container(
                  child: Center(

                      child: Text(item.toString())
                  ),
                  color: Colors.green,
                )).toList(),
              ),
              RaisedButton(
                  child: Text('Add new'),
                  onPressed: () {
                    //Add new product or shelf?
                  }
              ),
            ]
        )
    );
  }
}