import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keleya/screens/auth_success.dart';
import 'package:keleya/utils/colors.dart';
import 'package:keleya/widgets/button.dart';
import 'package:keleya/widgets/input.dart';

class DateCollectionScreen extends StatefulWidget {
  static const id = '/date_collection';

  const DateCollectionScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DateCollectionScreenState();
}

class _DateCollectionScreenState extends State<DateCollectionScreen> {
  /// Go to date of birth collection page
  void gotoSuccessScreen() {
    Get.toNamed(AuthSuccess.id);
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Column(
                children: const [
                  Text('When was your baby \n born?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(height: 30),
                  Text(
                      'this will help us give your relevant tips to take care for yourself & your baby',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: kInputBorderColor,
                      )),
                ],
              ),
            ),
            const Input(
                hint: 'Date of Birth',
                labelTitle: 'Date of Birth',
                inputType: TextInputType.datetime),
            Button(text: 'Next Question', onPressed: gotoSuccessScreen)
          ],
        ),
      ),
    );
  }
}
