import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keleya/helpers/snackbar.dart';
import 'package:keleya/screens/createaccount/date_collection.dart';
import 'package:keleya/widgets/button.dart';
import 'package:keleya/widgets/input.dart';

class NameCollectionScreen extends StatefulWidget {
  static const id = '/name_collection';

  const NameCollectionScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NameCollectionScreenState();
}

class _NameCollectionScreenState extends State<NameCollectionScreen> {
  dynamic name;

  /// Go to date of birth collection page
  void gotoDateCollectionScreen() {
    if (name == null || name.isEmpty) {
      toastMessage(context, "Name is required");
      return;
    }
    Get.toNamed(DateCollectionScreen.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 25.0),
              child: Text('What should we call \n you?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  )),
            ),
            Input(
                hint: 'Name',
                labelTitle: 'Name',
                onChange: (value) {
                  setState(() {
                    name = value;
                  });
                },
                inputType: TextInputType.text),
            Button(text: 'Next Question', onPressed: gotoDateCollectionScreen)
          ],
        ),
      ),
    );
  }
}
