import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kolo_purse/locator.dart';
import 'package:kolo_purse/src/screens/log_in.dart';
import 'package:kolo_purse/src/utils/styles.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(KoloPurse());
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}

class KoloPurse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        title: 'KoloPurse',
        theme: theme,
        home: LogInScreen(),
      ),
    );
  }
}
