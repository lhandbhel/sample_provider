import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_provider/provider/business_logic.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BusinessLogic businessLogic = Provider.of<BusinessLogic>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Sample Provider'),
      ),
      body: Center(
        //Check the value of isBusy in the provider.
        //if True, returns a CircularProgressIndicator, else returns an Android Icon
        child: businessLogic.isBusy
            ? CircularProgressIndicator()
            : Icon(
                Icons.android,
                size: 50.0,
              ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.adjust),
        onPressed: () => businessLogic.setToBusy(),
      ),
    );
  }
}
