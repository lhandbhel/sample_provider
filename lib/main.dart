import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_provider/home_page.dart';
import 'package:sample_provider/provider/business_logic.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //Can have multiple providers.
        //Providers declared here can be inherited by child widgets.
        ChangeNotifierProvider<BusinessLogic>.value(value: BusinessLogic()),
      ],
      child: MaterialApp(
        title: 'Sample Provider',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
