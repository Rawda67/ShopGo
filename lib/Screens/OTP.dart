import 'package:ecommerce_app/Constant.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import 'RestPhone.dart';

class Otp extends StatefulWidget {
  final String phoneNumber;
  const Otp({Key? key, required this.phoneNumber}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String validPin = "1234";
  bool isOtpValid = false;
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(
      fontSize: 20,
      color: Color.fromRGBO(30, 60, 87, 1),
      fontWeight: FontWeight.w600,
    ),
    decoration: BoxDecoration(
      border: Border.all(color: Constant.primaryColor),
      borderRadius: BorderRadius.circular(20),
    ),
  );

  late final focusedPinTheme = defaultPinTheme.copyDecorationWith(
    border: Border.all(color: Colors.blue),
    borderRadius: BorderRadius.circular(8),
  );

  late final submittedPinTheme = defaultPinTheme.copyWith(
    decoration: defaultPinTheme.decoration!.copyWith(
      color: Color.fromRGBO(234, 239, 243, 1),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.backColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Verification",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Enter the code sent to number",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text('phone you entered: ${widget.phoneNumber}',style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),),
                    SizedBox(height: 30),
                    Pinput(
                      length: 4,
                      defaultPinTheme: defaultPinTheme,
                      focusedPinTheme: focusedPinTheme,
                      submittedPinTheme: submittedPinTheme,
                      validator: (value) {
                        return value == validPin ? null : "Pin is Incorrect";
                      },
                      onCompleted: (pin) {
                        setState(() {
                          isOtpValid = pin == validPin;
                        });
                        if (isOtpValid) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('OTP Verified Successfully!')),
                          );
                        }
                      },
                      errorBuilder: (errorText, pin) {
                        return Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Center(
                            child: Text(
                              errorText ?? "",
                              style: TextStyle(color: Constant.errormess, fontSize: 14,fontWeight: FontWeight.w500),
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Didn't get the code?",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Resending OTP...')),
                            );
                          },
                          child: Text(
                            "Resend",
                            style: TextStyle(
                              color: Constant.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Isn't Your Phone?",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPhone(),));
                          },
                          child: Text(
                            "Edit Number",
                            style: TextStyle(
                              color: Constant.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
