import 'package:flutter/material.dart';

import 'package:kenya_county_picker/kenya_county_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kenya County Picker Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  void _onCountySelected(String county) {
    print('Selected county: $county');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick a County'),
      ),
      body: Center(
        child: KenyaCountyPicker(
          onCountySelected: _onCountySelected,
        ),
      ),
    );
  }
}
