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
  TextEditingController _searchController = TextEditingController();
  List<County> filteredCounties = counties; 
  bool isDropdownOpen = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: _toggleDropdown, 
            child: InputDecorator(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                label: selectedCounty!=null ? const Text('county'): const Text("select county") ,
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 10, horizontal: 12),              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(selectedCounty ?? ''),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          if (isDropdownOpen)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    controller: _searchController,
                    decoration: const InputDecoration(
                      labelText: 'Search County',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                    ),
                    onChanged: _filterCounties,
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    child: Container(
                      height: 400,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: ListView.builder(
                        itemCount: filteredCounties.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(filteredCounties[index].name), 
                            onTap: () => _selectCounty(filteredCounties[index].name), 
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  void _filterCounties(String query) {
    setState(() {
      filteredCounties = counties
          .where((county) => county.name
              .toLowerCase()
              .contains(query.toLowerCase())) 
          .toList();
    });
  }

  void _selectCounty(String county) {
    setState(() {
      selectedCounty = county;
      isDropdownOpen = false; 
      _searchController.clear(); 
      filteredCounties = counties; 
    });
    if (widget.onCountySelected != null) {
      widget.onCountySelected!(county);
    }
  }

  void _toggleDropdown() {
    setState(() {
      isDropdownOpen = !isDropdownOpen;
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
