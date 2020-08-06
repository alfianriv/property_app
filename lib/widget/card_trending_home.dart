import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property_app/widget/star_rate_widget.dart';

class CardTrendingWidget extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final int rate;

  const CardTrendingWidget({
    this.image,
    this.title,
    this.price,
    this.rate,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: <Widget>[
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(image),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Rp. $price",
                  style: GoogleFonts.lato(
                    textStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: GoogleFonts.lato(),
                ),
                SizedBox(
                  height: 10,
                ),
                StarRateWidget(
                  rate: rate,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
