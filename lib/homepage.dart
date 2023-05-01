import 'package:biberon_o_clock/history.dart';
import 'package:biberon_o_clock/settings.dart';
import 'package:biberon_o_clock/time_to.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var selectedIndex = 0;

  void _onItemTapped(int index) {
  setState(() {
    print(index);
    selectedIndex = index;
  });
}

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch(selectedIndex) {
      case 0:
      page = TimeToPage();
      break;
      case 1: 
      page = HistoryPage();
      break;
      case 2:
      page = SettingsPage();
      break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Biberon O\'Clock'),
          ),
  bottomNavigationBar: BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.watch),
        label: 'Heure du biberon',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.history),
        label: 'Historique',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Paramètres',
      ),
    ],
    onTap: _onItemTapped
  ),
          body: Row(
            children: [
              Expanded(
                child: Container(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: page,
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}