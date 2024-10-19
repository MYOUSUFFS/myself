import 'package:flutter/material.dart';
import 'package:myself/myself.dart';

import '../../style/text.dart';

class PrintColorFunctions extends StatelessWidget {
  const PrintColorFunctions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Color Printing Demo"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              Text("Default Print options", style: MyText.heading),
              ElevatedButton(
                  onPressed: () {
                    MySelfColor().printSuccess();
                  },
                  child: const Text("🟢 Success Print")),
              ElevatedButton(
                  onPressed: () {
                    MySelfColor().printWarning();
                  },
                  child: const Text("🟡 Warning Print")),
              ElevatedButton(
                  onPressed: () {
                    MySelfColor().printError();
                  },
                  child: const Text("🔴 Error Print")),
              //! ------------- End Default Print ------------------

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text("Custom Color print", style: MyText.heading),
              ),
              ElevatedButton(
                  onPressed: () {
                    MySelfColor().colorPrint(Colors.blueAccent, "Custom Color");
                  },
                  child: const Text("Flutter Colors Print")),
              ElevatedButton(
                  onPressed: () {
                    MySelfColor().printHex('#18FFFF', "Custom Color");
                  },
                  child: const Text("HEX code Colors Print")),
              ElevatedButton(
                  onPressed: () {
                    MySelfColor().printRGB(0, 0, 255, "Custom Color");
                  },
                  child: const Text("RGB Colors Print")),
              //! ------------- End Custom Color print ------------------

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text("Find HEX Code", style: MyText.heading),
              ),
              ElevatedButton(
                  onPressed: () {
                    MySelfColor().colorPrint(
                      Colors.blueAccent,
                      Colors.cyanAccent.toHexCode(),
                    );
                  },
                  child: const Text("Color to hex code")),
              //! ------------- End Find HEX Code ------------------
            ],
          ),
        ),
      ),
    );
  }
}
