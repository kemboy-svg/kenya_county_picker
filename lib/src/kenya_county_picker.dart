library kenya_county_picker;

import 'package:flutter/material.dart';
import 'package:kenya_county_picker/src/counties.dart';

class KenyaCountyPicker extends StatefulWidget {
  final Function(String)? onCountySelected;

  KenyaCountyPicker({this.onCountySelected});

  @override
  _KenyaCountyPickerState createState() => _KenyaCountyPickerState();
}

class _KenyaCountyPickerState extends State<KenyaCountyPicker> {
  String? selectedCounty;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      hint: Text('Select a County'),
      value: selectedCounty,
      onChanged: (String? newValue) {
        setState(() {
          selectedCounty = newValue!;
        });
        widget.onCountySelected!(newValue!);
      },
      items: counties.map<DropdownMenuItem<String>>((String county) {
        return DropdownMenuItem<String>(
          value: county,
          child: Text(county),
        );
      }).toList(),
    );
  }
}
