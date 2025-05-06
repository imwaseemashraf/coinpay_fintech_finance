import 'package:coinpay_fintech_finance/dev_export/dev_export.dart';

// NAVIGATE TO
navigateToPage(Widget page, BuildContext context) {
  return Navigator.push(context, MaterialPageRoute(builder: (_) => page));
}

// APP SCREEN HEIGHT
appHeight(BuildContext context) {
  return MediaQuery.sizeOf(context).height;
}

// APP SCREEN WIDTH
appWidth(BuildContext context) {
  return MediaQuery.sizeOf(context).width;
}
