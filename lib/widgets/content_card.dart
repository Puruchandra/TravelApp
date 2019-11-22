import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
  final Size size;
  final Color color;
  final String tag;
  final String imgUrl;
  final String offer;
  ContentCard({this.imgUrl, this.color, this.size, this.tag, this.offer});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
          width: size.width * 0.8,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(14.0)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14.0),
            child: Image.network(
              imgUrl,
              fit: BoxFit.fill,
              color: Colors.black.withAlpha(130),
              colorBlendMode: BlendMode.darken,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10.0, 110.0, 0.0, 10.0),
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: tag,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold)),
              TextSpan(text: "\n"),
              TextSpan(
                  text: offer,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal))
            ]),
          ),
        ),
      ],
    );
  }
}
