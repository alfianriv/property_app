import 'package:flutter/cupertino.dart';
import 'package:line_icons/line_icons.dart';
import 'package:property_app/helpers/color_helpers.dart';

class StarRateWidget extends StatelessWidget {
  final int rate;

  const StarRateWidget({
    Key key,
    this.rate,
  }) : super(key: key);

  List<Widget> _starBuilder() {
    return new List<Widget>.generate(rate, (index) {
      return new Icon(
        LineIcons.star,
        size: 14,
        color: Color(
          ColorHelpers.fromHexString('f9d56e'),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _starBuilder(),
    );
  }
}
