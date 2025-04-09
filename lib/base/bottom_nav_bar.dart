
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_ticket_app3/Screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
// list is iterated using index
  final appScreens = [
    HomeScreen(),
    Center(child: const Text ("Search")),
    Center(child: const Text ("Ticket")),
    Center(child: const Text ("Profile")),
  ];

  //change our index for botttomnavbar

  int _selectedIndex = 0;
  void _onItemTapped(int index){
    setState(() {
    _selectedIndex = index ;  
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My ticket"),
      ),
      body: appScreens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Color(0xFF526400),
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular), 
          activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
          label : "Home"),

          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular), 
          activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
          label : "Search"),

          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular), 
          activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
          label : "Ticket"),

          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular), 
          activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
          label : "Profile"),
         
        ] 
        
        ),
    );
  }
}