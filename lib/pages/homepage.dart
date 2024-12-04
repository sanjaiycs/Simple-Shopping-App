import 'package:flutter/material.dart';
import 'package:sample/components/bottom_nav_bar.dart';
import 'package:sample/pages/cartpage.dart';
import 'package:sample/pages/shoppage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedindex =0;

  void navigationbar (int index){
    setState(() {
      selectedindex = index;
    });
  }

  final List _pages=[
    ShopPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: MyBottomBar(
        onTabChange: (index) => navigationbar(index),
      ),

      appBar: AppBar(
        backgroundColor: Colors.transparent,elevation: 0,
        leading:Builder(builder: (context)=>
          IconButton(
           icon: Icon(Icons.menu),
          onPressed: (){
          Scaffold.of(context).openDrawer();
      },

      ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            DrawerHeader(child: Image.asset('lib/images/logo.png',
            ),),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Divider(color: Colors.grey[800],),
            ),

            const Padding(
              padding: EdgeInsets.only(left:25.0),
              child: ListTile(
                leading: Icon(Icons.home, color: Colors.white,),
                title: Text("H O M E",style: TextStyle(color: Colors.white),),
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(left:25.0),
              child: ListTile(
                leading: Icon(Icons.info, color: Colors.white,),
                title: Text("A B O U T",style: TextStyle(color: Colors.white),),
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(left:25.0),
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.white,),
                title: Text("L O G - O U T",style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
      body: _pages[selectedindex],
    ) ;
  }
}
