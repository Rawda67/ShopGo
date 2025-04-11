import 'package:ecommerce_app/Constant.dart';
import 'package:ecommerce_app/Screens/HomeState.dart';
import 'package:flutter/material.dart';

import 'Home.dart';
import 'Login.dart';

class Signup extends StatelessWidget {
   Signup({super.key});
  GlobalKey<FormState> formKey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.backColor,
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              Image.asset("assets/SignUp.png",height: 270,),
              Text("Create Account",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Constant.primaryColor,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(4),
                margin: const EdgeInsets.all(5),
                alignment: Alignment.center,
                child: TextFormField(
                  validator: (value) {
                    if(value!.isEmpty){
                      return 'you must Enter Something!';
                    }else if(value.length<3)
                      return 'Name must be greater than or equal 3 characters';
                    return null;
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      label: const Text(
                        "Name",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      hintText: 'Enter your name',
                      hintStyle: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.person,
                          size: 30,
                          color: Constant.primaryColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black45,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Constant.primaryColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide:  BorderSide(
                          color: Constant.primaryColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide:  BorderSide(
                          color: Constant.errormess,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      errorStyle:  TextStyle(
                        color:  Constant.errormess,
                      )
                  ),
                  textInputAction: TextInputAction.next,
                ),
              ),
      
              Container(
                padding: const EdgeInsets.all(4),
                margin: const EdgeInsets.all(5),
                alignment: Alignment.center,
                child: TextFormField(
                  validator: (value) {
                    if(value!.isEmpty) {
                      return 'you must Enter Something!';
                      return null;
                    }
                    return null;},
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      label: const Text(
                        "Email",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      hintText: 'Enter your Email',
                      hintStyle: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.email,
                          size: 30,
                          color: Constant.primaryColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black45,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:  BorderSide(
                          color: Constant.primaryColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide:  BorderSide(
                          color: Constant.primaryColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide:  BorderSide(
                          color:Constant.errormess,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      errorStyle:  TextStyle(
                        color:  Constant.errormess,
                      )
                  ),
                  textInputAction: TextInputAction.next,
                ),
              ),

              Container(
                padding: const EdgeInsets.all(4),
                margin: const EdgeInsets.all(5),
                alignment: Alignment.center,
                child: TextFormField(
                  validator: (value) {
                    if(value!.isEmpty){
                      return 'you must Enter Something!';
                    }else if(value.length!=11)
                      return 'Password must be 11 number only!';
                    return null;
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      label: const Text(
                        "Phone",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      hintText: 'Enter your phone number',
                      hintStyle: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.phone,
                          size: 30,
                          color: Constant.primaryColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black45,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:  BorderSide(
                          color: Constant.primaryColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide:  BorderSide(
                          color: Constant.primaryColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide:  BorderSide(
                          color: Constant.errormess,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      errorStyle:  TextStyle(
                        color:  Constant.errormess,
                      )
                  ),
                  textInputAction: TextInputAction.next,
                ),
              ),
      
              Container(
                padding: const EdgeInsets.all(4),
                margin: const EdgeInsets.all(5),
                alignment: Alignment.center,
                child: TextFormField(
                  validator: (value) {
                    if(value!.isEmpty){
                      return 'you must Enter Something!';
                    }else if(value.length<6)
                      return 'Password must be greater than 6 characters';
                    return null;
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      label: const Text(
                        "Password",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      hintText: 'Enter your Password',
                      hintStyle: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.password_outlined,
                          size: 30,
                          color: Constant.primaryColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black45,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:  BorderSide(
                          color: Constant.primaryColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide:  BorderSide(
                          color: Constant.primaryColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide:  BorderSide(
                          color: Constant.errormess,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      errorStyle:  TextStyle(
                        color:  Constant.errormess,
                      )
                  ),
                  textInputAction: TextInputAction.next,
                ),
              ),
      
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate())
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Homestate(),));
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Constant.primaryColor,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 17),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), // Rounded corners
                  ),
                ),
                child: const Text("Sign up",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 17,
                  ),),
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("You already have an account?",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 15,
                    ),),
                  TextButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  }, child:  Text("Log in",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color:Constant.primaryColor,
                    ),))
                ],
              )
      
            ],
          ),
        ),
      ),
    );
  }
}
