import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import '../palette.dart';


class number_auth extends StatefulWidget {
  const number_auth({Key? key}) : super(key: key);

  @override
  State<number_auth> createState() => _number_authState();
}

class _number_authState extends State<number_auth> {
  final TextEditingController _textEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Please Insert Confirmation Message:",
          style: bHeading,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.1,),
          PinCodeTextField(
            autofocus: true,
            controller: _textEditingController,
            maxLength: 4,
            highlight: true,
            hasUnderline: false,
            hideCharacter: true,
            pinBoxColor: Colors.white,
            highlightPinBoxColor: Colors.white,
            onDone: (text){
              print(_textEditingController.text);
            },
            highlightColor: Colors.blue,
            defaultBorderColor: Colors.black,
            hasTextBorderColor: Colors.teal,
            maskCharacter: '*' ,
              pinTextStyle: bHeading,

          ),
        ],
      )
    );
  }
}
