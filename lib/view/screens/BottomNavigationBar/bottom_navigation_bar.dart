import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_design_project_second/view/screens/Home/home_page.dart';
import 'package:mobile_design_project_second/view/screens/Hospital/hospital_page.dart';
import 'package:mobile_design_project_second/view/screens/Menu/menu_page.dart';
import 'package:mobile_design_project_second/view/screens/Notification/notification_page.dart';
import 'package:mobile_design_project_second/view/screens/Setting/setting_page.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  final List<Widget> _screens = [
    const MenuPage(),
    const NotificationPage(),
    const HomePage(),
    const HospitalPage(),
    const SettingPage(),
  ];

  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: ClipRRect(
        // borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomNavigationBar(
          elevation: 30,
          currentIndex: _currentIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          iconSize: 26.0,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/menu.svg"),
              label: 'Menu',
              backgroundColor: const Color(0xff027C90),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/message.svg"),
              label: 'Notification',
              backgroundColor: const Color(0xff027C90),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/home.svg"),
              label: 'Home',
              backgroundColor: const Color(0xff027C90),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/hospital.svg"),
              label: 'Hospital',
              backgroundColor: const Color(0xff027C90),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/settings.svg"),
              label: 'Settings',
              backgroundColor: const Color(0xff027C90),
            ),
          ],
          backgroundColor: const Color(0xff027C90),
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
