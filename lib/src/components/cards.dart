import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardComponent extends StatelessWidget {

  final Widget widget;
  final String title;
  final Function onTap;
  const CardComponent({Key key,
   @required this.widget, 
   @required this.title, 
   @required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(),
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          elevation: 7.0,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              children: [
                widget,
                Text(title, style: GoogleFonts.nunito(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}