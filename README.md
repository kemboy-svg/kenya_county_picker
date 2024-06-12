# Kenya_county_picker
Flutter package that easily picks a kenyan county.


## Getting started

In your library add the following import:

```dart
import 'package:kenya_county_picker/kenya_county_picker.dart';
```

Define this function
```dart
 void _onCountySelected(String county) {
    print('Selected county: $county');
  }
```

Then you just need to use the widget `KenyaCountyPicker`
```dart
 body: Center(
        child: KenyaCountyPicker(
          onCountySelected: _onCountySelected,
        ),
      ),
```
Simply use the selected county

## Contributions

Feel free to contribute to this project.

If you find a bug or want a feature, but don't know how to fix/implement it, please fill an [issue](https://github.com/kemboy-svg/Kenya_county_picker/issues).  
If you fixed a bug or implemented a feature, please send a [pull request](https://github.com/kemboy-svg/Kenya_county_picker/pulls).
