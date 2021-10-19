import 'package:flutter/material.dart';
import 'package:uy_ishi/bottom_cart.dart';
import 'package:uy_ishi/bottom_home.dart';
import 'package:uy_ishi/bottom_profil.dart';
import 'package:uy_ishi/bottom_search.dart';

class NewOne extends StatefulWidget {
  @override
  _NewOneState createState() => _NewOneState();
}

class _NewOneState extends State<NewOne> {
  var keyHome = PageStorageKey("jome_pahe_key");
  var keySearch = PageStorageKey("search_page");
  var _bucket = PageStorageBucket();
  int _currentIndexOfBottomBar = 0;
  List<Widget> _listOfWidget = [];
  Widget? homePage, searchPage, cartPage, profilPage;

  @override
  void initState() {
    super.initState();
    homePage = BoottomHome();
    searchPage = BottomSearch();
    cartPage = BoottomCart();
    profilPage = BoottomProfile();
    _listOfWidget = [homePage!, searchPage!, cartPage!, profilPage!];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: _listOfWidget[_currentIndexOfBottomBar],
      bottomNavigationBar: _bottomNavFunc(),
    );
  }

  Widget _bottomNavFunc() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.open_with),
          icon: Icon(Icons.home_outlined),
          label: "Home",
          tooltip: "Home",
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.open_with),
          icon: Icon(Icons.search),
          label: "Search",
          tooltip: "Search",
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.open_with),
          icon: Icon(Icons.shopping_cart),
          label: "Cart",
          tooltip: "Cart",
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.open_with),
          icon: Icon(Icons.person),
          label: "Profile",
          tooltip: "Profile",
        ),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndexOfBottomBar,
      onTap: (i) {
        setState(() {
          _currentIndexOfBottomBar = i;
        });
      },
    );
  }
}
