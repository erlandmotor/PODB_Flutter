
import 'package:flutter/material.dart';
import 'package:ppodb_2/page/akun/akun.dart';
import 'package:ppodb_2/page/faq/faq.dart';
import 'package:ppodb_2/page/home/home.dart';
import 'package:ppodb_2/page/riwayat/riwayat.dart';

import 'package:ppodb_2/page/widgets/botton_navigation_box.dart';
import 'package:ppodb_2/page/widgets/constanta.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
 int selectedIndex = 0;
  PageController pageController = PageController();
  List<Widget> screens = [
    const HomePage(),
    const Riwayat(),
    const FAQ(),
    const Profil(),
  ];
  List<BottomNavigationItem> bottomItems = [
    BottomNavigationItem("Beranda", "assets/icon/home.png"),
    BottomNavigationItem("Riwayat", "assets/icon/jam.png"),
    BottomNavigationItem("FAQ", "assets/icon/tanda_tanya.png"),
    BottomNavigationItem("Akun", "assets/icon/orang.png"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
  }
@override
  void initState(){
    pageController =  PageController(
      initialPage: selectedIndex,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: PageView.builder(
        controller: pageController,
        itemCount: screens.length,
        onPageChanged: (newPage){
          setState((){
            selectedIndex = newPage;
          });
        },
        itemBuilder: (BuildContext context, int index) {
          return screens[index];
        },
      ),
      bottomNavigationBar: BottomNavigationBox(
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: bottomItems.map(
            (item) => BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(vertical: 7),
                child: Image.asset(
                  item.icon,
                  width:25,
                  height: 25,
                  color: selectedIndex == bottomItems.indexOf(item) ? primaryColor : Colors.grey,
                ),
              ),
              label: item.label,
            ),
          ).toList(),
          currentIndex: selectedIndex,
          selectedItemColor: primaryColor,
          onTap: _onItemTapped,
          selectedFontSize: 14,
          unselectedFontSize: 14,
        ),
      ),
    );
  }
}