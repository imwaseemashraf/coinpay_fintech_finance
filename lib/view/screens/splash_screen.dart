import 'dart:async';

import 'package:coinpay_fintech_finance/common/utils/appassets.dart';
import 'package:coinpay_fintech_finance/dev_export/dev_export.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(milliseconds: 3000),
      () => navigateToPage(OnBoardingScreen(), context),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: appHeight(context),
        width: appWidth(context),
        child: Image.asset(AppAssets.splash, fit: BoxFit.cover),
      ),
    );
  }
}
