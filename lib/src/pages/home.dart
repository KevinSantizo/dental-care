import 'package:dentalcare/src/components/appbar.dart';
import 'package:dentalcare/src/components/cards.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4FCF9),
      body: Stack(
        children: [
          Container(
            child: CustomScrollView(
              slivers: [
                AppBarComponent(),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                        child: Card(
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
                                  padding: EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Color(0XFFE2E9FB)
                                  ),
                                  child: Image.asset('assets/images/medical.png')
                                ),
                              ),
                            ),
                          ),
                      ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0, ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)
                            ),
                            elevation: 3.0,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 15.0),
                              child: ListTile(
                                title: Text('Tratamientos'),
                                subtitle: Text('Ver tratamientos'),
                                trailing: Icon(Icons.chevron_right, size: 40.0,),
                                leading: Container(
                                  padding: EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Color(0XFFE2E9FB)
                                  ),
                                  child: Image.asset('assets/images/medical.png')
                                ),
                              ),
                            ),
                          ),
                        )
                    ]
                  )
                )
              ],
            )
          ),
          DraggableScrollableSheet(
            minChildSize: 0.45,
            initialChildSize: 0.45,
            maxChildSize: 0.45,
            builder: (context, scrollController) => Material(
              borderRadius: BorderRadius.vertical(top: Radius.circular(40.0)),
              color: Colors.white,
              elevation: 10,
              child: ListView.builder(
                controller: scrollController,
                itemBuilder: (context, index) => ListTile(
                  title: Text("Item $index"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}