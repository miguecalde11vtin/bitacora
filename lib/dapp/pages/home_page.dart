import 'package:bitacora/dapp/widgets/button_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double? _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dapp")),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.13,
                decoration: BoxDecoration(
                    color: Colors.deepPurple..withOpacity(.4),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Column(children: const [
                          Text("Current Balance",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w700)),
                          SizedBox(height: 12),
                          Text("0",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 66.6))
                        ])))),
            const SizedBox(height: 20),
            SfSlider(
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
              interval: 1,
              activeColor: Colors.white,
              enableTooltip: true,
              stepSize: 1.0,
              showLabels: true,
              min: 0.0,
              max: 10.0,
            ),
            const SizedBox(height: 40),
            CustomContainerWidget(
                title: "Get Balance", color: Colors.green, onTap: () {}),
            CustomContainerWidget(
                title: "Send", color: Colors.indigo.shade300, onTap: () {}),
            CustomContainerWidget(
                title: "WithDraw", color: Colors.deepOrange, onTap: () {}),
          ],
        ),
      ),
    );
  }
}
