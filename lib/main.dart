import 'package:flutter/material.dart';
import 'package:flutter_pet_app/pages/home.dart';
import 'package:flutter_pet_app/pages/pesquisar.dart';
import 'package:flutter_pet_app/theme/constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Pet App',
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
        scaffoldBackgroundColor: appBackground
      ),
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  
  // lista de icones (pra precisar adicionar um por um em 'bottomNavigationBar')
  List<BottomNavigationBarItem> item = [
    BottomNavigationBarItem(
      icon: Icon(LineIcons.home),
      title: Padding(
        padding: EdgeInsets.only(top: 3),
        child: Text('Home', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
      )
    ),

    BottomNavigationBarItem(
      icon: Icon(LineIcons.search),
      title: Padding(
        padding: EdgeInsets.only(top: 3),
        child: Text('Pesquisar', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
      )
    ),

    BottomNavigationBarItem(
      icon: Icon(LineIcons.book),
      title: Padding(
        padding: EdgeInsets.only(top: 3),
        child: Text('Artigos', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
      )
    ),

    BottomNavigationBarItem(
      icon: Icon(LineIcons.bell),
      title: Padding(
        padding: EdgeInsets.only(top: 3),
        child: Text('Notificações', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
      )
    ),

    BottomNavigationBarItem(
      icon: Icon(Icons.account_circle),
      title: Padding(
        padding: EdgeInsets.only(top: 3),
        child: Text('Perfil', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
      )
    ),
  ];

  int selectedItem = 0;
  List<Widget> pages = [
    Home(),
    Pesquisar(),
    Center(child: Text('Arquivos', style: TextStyle(fontSize: 40),),),
    Center(child: Text('Notificações', style: TextStyle(fontSize: 40),),),
    Center(child: Text('Perfil', style: TextStyle(fontSize: 40),),),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          items: item,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: primary,
          currentIndex: selectedItem,
          onTap: (index){
            setState(() {
              selectedItem = index;
            });
          },
        ),
      ),
    );
  }

  Widget getBody(){
    return pages.elementAt(selectedItem);
  }
}