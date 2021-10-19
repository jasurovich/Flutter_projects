import 'package:flutter/material.dart';
import 'package:uy_ishi/Expansion/page1.dart';
import 'package:uy_ishi/Expensiontile.dart';
import 'package:uy_ishi/Project/new_ui.dart';
import 'package:uy_ishi/bottom_state.dart';
import 'package:uy_ishi/find_number.dart';
import 'package:uy_ishi/fonts.dart';
import 'package:uy_ishi/homework/homework_1.dart';
import 'package:uy_ishi/hotel/Page1.dart';
import 'package:uy_ishi/list.dart';
import 'package:uy_ishi/login.dart';
import 'package:uy_ishi/messenger.dart';
import 'package:uy_ishi/page_2.dart';
import 'package:uy_ishi/steplar/first_page.dart';
import 'package:uy_ishi/tabbar/indigo.dart';
import 'package:uy_ishi/tabbar/telegram.dart';
import 'package:uy_ishi/telegram.dart';
import 'package:uy_ishi/tesla_info.dart';
import 'package:uy_ishi/ui1/fashion_login.dart';
import 'package:uy_ishi/ui10/1first_page.dart';
import 'package:uy_ishi/ui11/first_page.dart';
import 'package:uy_ishi/ui2/ui2_2page.dart';
import 'package:uy_ishi/ui3/ui_page1.dart';
import 'package:uy_ishi/ui4/uipage.dart';
import 'package:uy_ishi/ui5/sliver_app_bar.dart';
import 'package:uy_ishi/ui7/cofe2.dart';
import 'package:uy_ishi/ui9/Login_page.dart';
import 'ui6/second_page.dart';

class AsosiyPage extends StatefulWidget {
  @override
  _AsosiyPageState createState() => _AsosiyPageState();
}

class _AsosiyPageState extends State<AsosiyPage> {
  List<Widget> _listOfWidget = [];

  Widget? fashionLogin,
   dressStore, 
   sportPage,
   explorePage, 
   scrollPage, 
   burgerPage, 
   coffeePage, 
   project,
   rentCar,
   sample,
   findNumber,
   newOne,
   chtPage,
   expansion,
   fontPage,
   loginPage,
   teslaPage,
   messengerPage,
   uiPage,
   indigoPage,
   stepPage,
   loginPag,
   homework,
   barberShop,
   hotel,
   newUi;

  @override
  void initState() {
    super.initState();
    fashionLogin = FashionLogin2();
    dressStore = RepresentPage();
    sportPage = SportPage();
    explorePage = ExplorePage();
    scrollPage = ScrollPage();
    burgerPage = BurgerPage();
    coffeePage = CoffeePage2();
    project = HomePage();
    rentCar = RentCar();
    sample = FirstttPage();
    findNumber = FindNumber();
    newOne = NewOne();
    chtPage = MyHomePage();
    expansion = Expansion();
    fontPage = FontPage();
    loginPage = LoginPage();
    teslaPage = TeslaPage();
    messengerPage = MessengerPage();
    indigoPage = IndigoPage();
    uiPage = Telegram();
    stepPage = StepPage();
    loginPag = LoginPag();
    homework = Homework();
    barberShop = BarberShop();
    hotel = FPage();
    newUi = NewUI();
    _listOfWidget = [
      fashionLogin!,
      dressStore!,
      sportPage!,
      explorePage!,
      scrollPage!,
      burgerPage!,
      coffeePage!,
      project!,
      rentCar!,
      sample!,
      findNumber!,
      newOne!,
      chtPage!,
      expansion!,
      fontPage!,
      loginPage!,
      teslaPage!,
      messengerPage!,
      uiPage!,
      indigoPage!,
      stepPage!,
      loginPag!,
      homework!,
      barberShop!,
      hotel!,
      newUi!,
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.blue[300],
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/mobile.png",
                fit: BoxFit.cover,
              ),
            ),
            expandedHeight: 180.0,
            centerTitle: false,
            pinned: true,
            stretch: true,
            toolbarHeight: 80.0,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  width: double.infinity,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: Homeworks.Names.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          cardMethod(context, index),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding cardMethod(BuildContext context, index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xFF00CCFF),
              const Color(0xFF3366FF),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: InkWell(
          child: ListTile(
            leading: CircleAvatar(
              child: Text(
                "${index + 1}",
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
              radius: 30.0,
              backgroundColor: Colors.yellow,
            ),
            title: Text(
              Homeworks.Names[index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18.0),
            ),
            subtitle: Text(
              Homeworks.Definition[index],
              style: TextStyle(fontSize: 18.0, color: Colors.white),
            ),
            trailing: Text(
              Homeworks.Info[index],
              style: TextStyle(
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => _listOfWidget[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
