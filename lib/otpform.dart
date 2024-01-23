import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeText extends StatefulWidget {
  const PinCodeText({Key? key}) : super(key: key);

  @override
  State<PinCodeText> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PinCodeText> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        child: PinCodeTextField(
          appContext: context,
          length: 4,
          onChanged: (value) {},
          cursorHeight: 19,
          textStyle: TextStyle(
              fontSize: 20, fontWeight: FontWeight.normal, color: Colors.white),
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            fieldWidth: 48,
            fieldHeight: 50,
            // Set padding for each box
            inactiveColor: Colors.grey,
            selectedColor: Color.fromARGB(255, 255, 255, 255),
            activeFillColor: Color.fromARGB(255, 247, 248, 248),
            selectedFillColor: const Color.fromARGB(255, 255, 255, 255),
            inactiveFillColor: Colors.grey.shade100,
            // borderWidth: 1,
            borderRadius: BorderRadius.circular(3),
          ),
        ),
      ),
    );
  }
}
