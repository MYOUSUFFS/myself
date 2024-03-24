
import 'package:flutter/material.dart';

import '../examples/colors/colors.dart';
import '../examples/design/input_decorations.dart';
import '../examples/validation/validation.dart';

List<Widget> examples(BuildContext context) => [
      ListTile(
        leading: Icon(Icons.stars),
        title: Text('Color Print Examples'),
        onTap: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => PrintColorFunctions())),
      ),
      ListTile(
        leading: Icon(Icons.stars),
        title: Text('Animation Examples'),
        // onTap: () => Navigator.of(context).push(
        //     MaterialPageRoute(builder: (context) => PrintColorFunctions())),
      ),
      ListTile(
        leading: Icon(Icons.stars),
        title: Text('InputDecoration Examples'),
        onTap: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => MyInputDecorations())),
      ),
      ListTile(
        leading: Icon(Icons.stars),
        title: Text('Validation Examples'),
        onTap: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ValidationPage())),
      ),
    ];
