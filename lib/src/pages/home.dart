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
                    margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                    child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)
                          ),
                          elevation: 3.0,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 15.0),
                            child: ListTile(
                              title: Text('Citas'),
                              subtitle: Text('Agendar citas'),
                              trailing: Icon(Icons.chevron_right, size: 40.0,),
                              leading: Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color(0XFFE2E9FB)
                                ),
                                child: Image.asset('assets/images/medical.png')
                              ),
                            ),
                          ),
                        )
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