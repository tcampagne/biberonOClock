import 'package:flutter/material.dart';

// Define a custom Form widget.
class TimeToPage extends StatefulWidget {
  const TimeToPage({super.key});

  @override
  TimeToPageState createState() {
    return TimeToPageState();
  }
}

class TimeToPageState extends State<TimeToPage> {
  final _formKey = GlobalKey<FormState>();
  String dropdownvalue = 'Aline';
    var items = [    
    'Aline',
    'Marion',
  ];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          DropdownButton(
                
              value: dropdownvalue,
                
              icon: const Icon(Icons.keyboard_arrow_down),    
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) { 
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          TextButton(
            onPressed: () {
              showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );
            },
            child: const Text('Select Time'),
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Processing Data')),
                );
              }
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
