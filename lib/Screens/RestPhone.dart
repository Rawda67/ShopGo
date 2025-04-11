import 'package:ecommerce_app/Screens/Forgetpassword.dart';
import 'package:ecommerce_app/Screens/OTP.dart';
import 'package:flutter/material.dart';
import '../Constant.dart';

class ResetPhone extends StatefulWidget {
  @override
  _ResetPhoneState createState() => _ResetPhoneState();
}

class _ResetPhoneState extends State<ResetPhone> {
  TextEditingController phoneController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.backColor,
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Heading Text
              const Text(
                'Reset your password',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Enter your Phone Number below and we will send you a link to reset your password.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 40),

              // Phone Number Field
              TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  hintText: 'Enter your Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: Constant.primaryColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Constant.primaryColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Constant.primaryColor,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixIcon: Icon(Icons.phone, color: Constant.primaryColor),
                  suffixIcon: IconButton(
                    onPressed: () {
                      phoneController.clear();
                    },
                    icon: Icon(Icons.close, color: Constant.errormess),
                  ),
                ),
                validator: (phone) {
                  if (phone!.isEmpty) {
                    return 'You must enter a phone number!';
                  } else if (phone.length != 11) {
                    return 'Phone number must be 11 digits only!';
                  }
                  return null;
                },
              ),

              SizedBox(height: 20),

              // Reset Using Email Button
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Forgetpassword()),
                      );
                    },
                    child: Text(
                      'Reset Using Email',
                      style: TextStyle(fontSize: 16, color: Constant.primaryColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),

              // Send Code Button
              SizedBox(height: 27),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Otp(phoneNumber: phoneController.text),  // تمرير الرقم هنا
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Constant.primaryColor,
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Send Code',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),

              // Back to Login Link
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Back to Login',
                  style: TextStyle(fontSize: 16, color: Constant.primaryColor, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
