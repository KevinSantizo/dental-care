import 'package:dentalcare/src/components/appbar.dart';
import 'package:dentalcare/src/components/cards.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CustomScrollView(
          slivers: [
            AppBarComponent(),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    height: 500.0,
                    margin: EdgeInsets.symmetric(vertical: 15.0,),
                    child: Column(
                      children: [
                         
                      ],
                    )
                  )
                ]
              )
            )
          ],
        )
      )
    );
  }
}