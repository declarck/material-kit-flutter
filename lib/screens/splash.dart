import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:grock/grock.dart';
import 'package:material_kit_flutter/screens/gelencagribildirimleri.dart';
import 'package:material_kit_flutter/screens/onboarding.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final box = GetStorage();

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      if (box.read('token') != null) {
        Grock.toRemove(GelenCagriBildirimleri());
      } else {
        Grock.toRemove(Onboarding());
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Hoşgeldiniz!',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
