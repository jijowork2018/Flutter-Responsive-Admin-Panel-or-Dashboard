import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


getBottomNavigationBarItems(String userType) {
  switch (userType) {
    case 'admin':
      return [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            size: 24,
          ),
          label: 'Home',
          tooltip: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.supervised_user_circle_sharp,
            size: 24,
          ),
          label: '',
          tooltip: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.accessibility_new_sharp,
            size: 24,
          ),
          label: '',
          tooltip: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            size: 24,
          ),
          label: '',
          tooltip: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
            size: 24,
          ),
          label: '',
          tooltip: '',
        )
      ];

    case 'trainer':
      return [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            size: 24,
          ),
          label: 'Home',
          tooltip: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.library_books,
            size: 24,
          ),
          label: '',
          tooltip: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
            size: 24,
          ),
          label: '',
          tooltip: '',
        )
      ];

    case 'client':
      return [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            size: 24,
          ),
          label: 'Home',
          tooltip: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.library_books,
            size: 24,
          ),
          label: '',
          tooltip: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
            size: 24,
          ),
          label: '',
          tooltip: '',
        )
      ];
  }
}



