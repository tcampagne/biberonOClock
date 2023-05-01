import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List aline = ['9h', '12h', '15h'];
    List marion = ['9h', '12h', '15h'];
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
            child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text('Aline :'),
            ),
            for (var pair in aline)
              ListTile(
                leading: Icon(Icons.watch),
                title: Text(pair),
              )
          ],
        )),
        SizedBox(width: 10),
        Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text('Marion :'),
              ),
              for (var pair in aline)
                ListTile(
                  leading: Icon(Icons.watch),
                  title: Text(pair),
                )
            ],
          ),
        )
      ],
    );
  }
}
