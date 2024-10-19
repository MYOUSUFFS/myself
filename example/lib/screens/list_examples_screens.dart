
import 'package:flutter/material.dart';

import '../examples/colors/colors.dart';
import '../examples/design/input_decorations.dart';
import '../examples/validation/validation.dart';

List<Widget> examples(BuildContext context) => [
      ListTile(
        leading: const Icon(Icons.stars),
        title: const Text('Color Print Examples'),
        onTap: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const PrintColorFunctions())),
      ),
      const ListTile(
        leading: Icon(Icons.stars),
        title: Text('Animation Examples'),
        // onTap: () => Navigator.of(context).push(
        //     MaterialPageRoute(builder: (context) => PrintColorFunctions())),
      ),
      ListTile(
        leading: const Icon(Icons.stars),
        title: const Text('InputDecoration Examples'),
        onTap: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const MyInputDecorations())),
      ),
      ListTile(
        leading: const Icon(Icons.stars),
        title: const Text('Validation Examples'),
        onTap: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const ValidationPage())),
      ),
    ];
