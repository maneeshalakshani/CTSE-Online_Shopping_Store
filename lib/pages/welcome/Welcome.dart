import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shopping_store/consts.dart';
import 'package:shopping_store/routes/routes.gr.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: APP_COLOR,
      body: Container(
        width: width,
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Welcome to Our Shop",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0),
            ),
            InkWell(
              onTap: () {
                context.router.push(const WidgetTreeRoute());
              },
              child: Container(
                width: width * 0.5,
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                margin: const EdgeInsets.only(top: 50.0),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.red),
                child: const Text(
                  "Start",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Color.fromARGB(113, 244, 67, 54),
              ),
              margin: const EdgeInsets.only(top: 50.0),
              child: const SpinKitWave(
                type: SpinKitWaveType.start,
                color: Colors.white,
                size: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}