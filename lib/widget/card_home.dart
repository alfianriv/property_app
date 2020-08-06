import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:property_app/helpers/color_helpers.dart';
import 'package:property_app/widget/star_rate_widget.dart';

class CardHomeWidget extends StatelessWidget {
  final String image;
  final String price;
  final String title;
  final String address;
  final int rate;
  final Function pressDetails;

  const CardHomeWidget({
    Key key,
    this.image,
    this.price,
    this.title,
    this.address,
    this.rate,
    this.pressDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      width: 310,
      child: Stack(
        children: <Widget>[
          Container(
            height: 350,
            decoration: BoxDecoration(
              color: Color(
                ColorHelpers.fromHexString("FFFFFF"),
              ),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            height: 175,
            decoration: BoxDecoration(
              color: Color(
                ColorHelpers.fromHexString("000000"),
              ),
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 190, 20, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    "Rp. $price",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(
                          ColorHelpers.fromHexString("000000"),
                        ),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    address,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(
                          ColorHelpers.fromHexString("aeb4bc"),
                        ),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(
                        ColorHelpers.fromHexString("000000"),
                      ),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 310, 20, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                StarRateWidget(
                  rate: rate,
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "View",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color(
                            ColorHelpers.fromHexString('aeb4bc'),
                          ),
                        ),
                      ),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Icon(
                          LineIcons.arrow_right,
                          size: 16,
                          color: Color(
                            ColorHelpers.fromHexString("aeb4bc"),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
