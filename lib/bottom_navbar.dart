import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(

      onWillPop: () async {
        Fluttertoast.showToast(
            msg: "This is Center Short Toast",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
        );
        // ScaffoldMessenger.of(context).removeCurrentSnackBar();
        // ScaffoldMessenger.of(context).showSnackBar(
        //   const SnackBar(content: Text("Exit This App"))
        // );
        // return false;
        // showDialog(context: context, builder: (context){
        //   return Center(
        //     child: AlertDialog(
        //       title: const Text("Exit This App"),
        //       actions: [
        //         TextButton(onPressed: () {
        //           Navigator.pop(context);
        //         }, child: const Text("Cancel")),
        //         TextButton(onPressed: () {
        //           Navigator.pop(context);
        //         }, child: const Text("Ok"))
        //       ],
        //     ),
        //   );
        // }
        // );
         return false;
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("BottomBar"),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(),
          child: const Icon(Icons.camera),
        ),
        bottomNavigationBar: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                activeIcon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Settings",
                activeIcon: Icon(Icons.settings),
              ),
            ],


          ),
        ),
      ),
    );
  }
  // Future<bool> _onBackPress() async {
  //   ScaffoldMessenger.of(context).removeCurrentSnackBar();
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     const SnackBar(content: )
  //   );
  //   return false;
  // }
}
