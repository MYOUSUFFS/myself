import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data.dart';
import 'screens/list_examples_screens.dart';
import 'style/text.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<DataIs>(create: (_) => DataIs()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final dataIs = Provider.of<DataIs>(context);
    return MaterialApp(
      title: 'MySelf Package Demo',
      debugShowCheckedModeBanner: false,
      theme: dataIs.themeDataIs,
      themeMode: ThemeMode.dark,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MySelf Package Demo"),
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
        body: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) =>
              examples(context)[index],
          separatorBuilder: (BuildContext context, int index) => const Divider(),
          itemCount: examples(context).length,
        ),
      ),
    );
  }
}
