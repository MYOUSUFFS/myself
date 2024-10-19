import 'package:flutter/material.dart';
import 'package:flex_color_picker/flex_color_picker.dart';

Future<Color> openColorPicker(BuildContext context) async {
  Color currentColor = Colors.blue;
  bool enableOpacity = true;

  bool enableShadesSelection = true;
  void changeColor(Color color) {
    currentColor = color;
  }

  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Pick a color'),
        content: SingleChildScrollView(
          child: Column(
            children: [
              ColorPicker(
                onColorChanged: changeColor,
                pickersEnabled: const {
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
                title: const Text('Enable Shades Selection'),
                value: enableShadesSelection,
                onChanged: (value) {
                  enableShadesSelection = value!;
                },
              ),
              CheckboxListTile(
                title: const Text('Enable Opacity Selection'),
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
            child: const Text('Close'),
          ),
        ],
      );
    },
  );
  return currentColor;
}
