import 'package:flutter/material.dart';

class TravelCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(12.0),
        child: Row(
          children: [
            TravelCardImage(
              imageUrl:
                  'https://destinazionebarcellona.it/wp-content/uploads/2019/12/Barcellona_2.jpg',
            ),
            Padding(padding: EdgeInsets.all(8.0), child: Text('Barcellona'))
          ],
        ));
  }
}

class TravelCardImage extends StatelessWidget {
  final String imageUrl;
  TravelCardImage({this.imageUrl});

  Widget build(BuildContext context) {
    return Container(
        child: ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Image.network(
        imageUrl,
        width: 100,
        height: 100,
        fit: BoxFit.cover,
      ),
    ));
  }
}
