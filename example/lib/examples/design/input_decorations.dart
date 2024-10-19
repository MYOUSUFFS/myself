import 'package:flutter/material.dart';
import 'package:myself/myself.dart';
import 'package:provider/provider.dart';

import '../../data.dart';
import '../../style/text.dart';

class MyInputDecorations extends StatelessWidget {
  const MyInputDecorations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataIs = Provider.of<DataIs>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Decoration Demo'),
        actions: [
          Switch(
            value: dataIs.themeIsDark,
            onChanged: (value) {
              dataIs.changeTheme(value);
            },
          ),
          Text("Theme\nMode", style: MyText.heading.copyWith(fontSize: 14)),
          const SizedBox(width: 10)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            TextField(
              decoration: elevatedInputDecoration(
                'Elevated Input',
                // prefixIcon: Icon(Icons.person),
                // suffixIcon: Icon(Icons.clear),
                filled: true,
                fillColor: Theme.of(context).brightness == Brightness.light
                    ? Colors.grey[200]
                    : Colors.grey[800],
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: roundedInputDecoration(
                hintText: 'Rounded Input',
                // prefixIcon: Icon(Icons.search),
                // suffixIcon: Icon(Icons.clear),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: squaredInputDecoration(
                hintText: 'Squared Input',
                // prefixIcon: Icon(Icons.lock),
                // suffixIcon: Icon(Icons.visibility),
                // borderRadius: 10,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: squaredInputDecorationWhite(
                hintText: 'Squared Input (White)',
                // prefixIcon: Icon(Icons.email),
                // suffixIcon: Icon(Icons.clear),
                // borderRadius: 10,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: squaredInputDecorationBorderColor(
                hintText: 'Squared Input (Border Color)',
                // prefixIcon: Icon(Icons.phone),
                // suffixIcon: Icon(Icons.clear),
                // color: Theme.of(context).brightness == Brightness.light
                //     ? Colors.red
                //     : Colors.green,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: labelInputDecoration('Label Input'),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: labelInputDecorationSuffix(
                context,
                'Label Input with Suffix',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
