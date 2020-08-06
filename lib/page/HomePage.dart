import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:property_app/helpers/color_helpers.dart';
import 'package:property_app/models/data_home.dart';
import 'package:property_app/widget/card_home.dart';
import 'package:property_app/widget/card_trending_home.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<DataHome> dataHome = DataHome.fetchAll();

  @override
  Widget build(BuildContext context) {
    List<DataHome> dataHomeTop = dataHome.take(4).toList();
    return Stack(
      children: <Widget>[
        Container(
          color: Color(
            ColorHelpers.fromHexString('f5efef'),
          ),
        ),
        NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overscroll) {
            overscroll.disallowGlow();
            return;
          },
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                HeaderTitleHome(),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 350,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: dataHomeTop.length + 1,
                    itemBuilder: (BuildContext context, int index) {
                      if (index == dataHomeTop.length) {
                        return SizedBox(
                          width: 20,
                        );
                      }
                      return CardHomeWidget(
                        title: dataHomeTop[index].title,
                        image: dataHomeTop[index].image,
                        price: dataHomeTop[index].price,
                        address: dataHomeTop[index].address,
                        rate: dataHomeTop[index].rate,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                HeaderTitleTrending(),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    children: List.generate(
                      dataHomeTop.length,
                      (index) => CardTrendingWidget(
                        image: dataHomeTop[index].image,
                        title: dataHomeTop[index].title,
                        price: dataHomeTop[index].price,
                        rate: dataHomeTop[index].rate,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class HeaderTitleTrending extends StatelessWidget {
  const HeaderTitleTrending({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Trending Properties",
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          RichText(
            text: TextSpan(
              text: "See all",
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              children: [
                WidgetSpan(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Icon(
                      LineIcons.arrow_right,
                      size: 16,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HeaderTitleHome extends StatelessWidget {
  const HeaderTitleHome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 60, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "House Hunt",
            style: GoogleFonts.lobster(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 40,
              ),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 80),
            child: Text(
              "The best investment on earth is earth.",
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HeaderTrendingTitle extends StatelessWidget {
  const HeaderTrendingTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Trending Properties",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "See all",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                WidgetSpan(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Icon(
                      LineIcons.arrow_right,
                      size: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
