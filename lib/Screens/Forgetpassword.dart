import 'package:flutter/material.dart';

import '../Constant.dart';
import 'Login.dart';
import 'RestPhone.dart';

class Forgetpassword extends StatelessWidget {
   Forgetpassword({super.key});
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.backColor,
      body: Padding(
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
              'Enter your email address below and we will send you a link to reset your password.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 40),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email Address',
                hintText: 'Enter your email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Constant.primaryColor),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:  BorderSide(
                    color: Constant.primaryColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:  BorderSide(
                    color: Constant.primaryColor,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                prefixIcon: Icon(Icons.email,color: Constant.primaryColor,),
                suffixIcon: IconButton(onPressed: (){emailController.clear();}, icon:Icon(Icons.close,color: Constant.errormess)),
              ),

            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPhone(),));
                  },
                  child:  Text(
                    'Rest Using Phone Number',
                    style: TextStyle(fontSize: 16, color: Constant.primaryColor,fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            // Reset Button
            SizedBox(height: 27,),
            ElevatedButton(
              onPressed: () {
                // Add functionality for password reset
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
                style: TextStyle(fontSize: 18,color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),

            // Back to Login Link
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Login(),));
              },
              child:  Text(
                'Back to Login',
                style: TextStyle(fontSize: 16, color: Constant.primaryColor,fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
