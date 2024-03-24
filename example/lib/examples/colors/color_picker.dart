import 'package:flutter/material.dart';
import 'package:flex_color_picker/flex_color_picker.dart';

Future<Color> OpenColorPicker(BuildContext context) async {
  Color currentColor = Colors.blue;
  bool enableOpacity = true;

  bool enableShadesSelection = true;
  void _changeColor(Color color) {
    currentColor = color;
  }

  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Pick a color'),
        content: SingleChildScrollView(
          child: Column(
            children: [
              ColorPicker(
                onColorChanged: _changeColor,
                pickersEnabled: {
                  ColorPickerType.both: true,
                },
                enableShadesSelection: enableShadesSelection,
                enableOpacity: enableOpacity,
                showColorCode: true,
                borderRadius: 16,
                spacing: 5,
                runSpacing: 5,
                columnSpacing: 5,
                wheelWidth: 40,
                wheelDiameter: 190,
                heading: Text(
                  'Select color',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                subheading: Text(
                  'Select color shade',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                wheelSubheading: Text(
                  'Selected color',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              CheckboxListTile(
                title: Text('Enable Shades Selection'),
                value: enableShadesSelection,
                onChanged: (value) {
                  enableShadesSelection = value!;
                },
              ),
              CheckboxListTile(
                title: Text('Enable Opacity Selection'),
                value: enableOpacity,
                onChanged: (value) {
                  enableOpacity = value!;
                },
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Close'),
          ),
        ],
      );
    },
  );
  return currentColor;
}
