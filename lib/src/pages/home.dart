import 'package:dentalcare/src/components/appbar.dart';
import 'package:dentalcare/src/pages/calendar.dart';
import 'package:dentalcare/src/pages/new_appointment.dart';
import 'package:dentalcare/src/pages/patients.dart';
import 'package:dentalcare/src/pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  PersistentTabController _controller = PersistentTabController(initialIndex: 0);
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _buildPersistentBottomNavigationNavBar()
    );
  }

  Widget _buildPersistentBottomNavigationNavBar() {
    return PersistentTabView(
      context, 
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      onItemSelected: (i){
        setState(() {
          _controller.index = i;
        });
      },
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears.
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style3,
      // margin: EdgeInsets.only(bottom: 10.0)
    );
  }

  List <Widget >_buildScreens() {
    return [
      Home(),
      Calendar(),
      NewAppointment(),
      Patients(), 
      SettingsScreen()
    ];
  }

  List<PersistentBottomNavBarItem>  _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        iconSize: 30.0,
        inactiveIcon: Icon(Ionicons.home_outline),
        icon: Icon(Ionicons.home), 
        activeColorPrimary: Color(0xFF59BEB6),
        inactiveColorPrimary: Color(0xff2F4A58),
      ),
      PersistentBottomNavBarItem(
        iconSize: 30.0,
        inactiveIcon: Icon(Ionicons.calendar_outline),
        icon: Icon(Ionicons.calendar), 
        activeColorPrimary: Color(0xFF59BEB6),
        inactiveColorPrimary: Color(0xff2F4A58),
      ),
      PersistentBottomNavBarItem(
        iconSize: 30.0,
        icon: Icon(Feather.plus), 
        activeColorPrimary: Color(0xFF59BEB6),
        inactiveColorPrimary: Color(0xff2F4A58),
      ),
      PersistentBottomNavBarItem(
        iconSize: 30.0,
        inactiveIcon: Icon(Ionicons.people_outline),
        icon: Icon(Ionicons.people), 
        activeColorPrimary: Color(0xFF59BEB6),
        inactiveColorPrimary: Color(0xff2F4A58),
      ),
      PersistentBottomNavBarItem(
        iconSize: 30.0,
        inactiveIcon: Icon(Ionicons.search_outline),
        icon: Icon(Feather.settings), 
        activeColorPrimary: Color(0xFF59BEB6),
        inactiveColorPrimary: Color(0xff2F4A58),
      ),
    ];
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4FCF9),
      body: Container(
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
    );
  }
}