import 'package:ecommerce_app/Screens/HomeState.dart';
import 'package:flutter/material.dart';

import '../Constant.dart';
import 'Forgetpassword.dart';
import 'Home.dart';
import 'SignUp.dart';

class Login extends StatelessWidget {
  GlobalKey<FormState> formKey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body:
      Padding(
        padding: const EdgeInsets.only(left: 15,right: 15),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 70,),
                Image.asset("assets/SignIn.png",height: 300,),
            
                Text(" Log In",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color:Constant.primaryColor,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(7),
                  margin: const EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: TextFormField(
                    validator: (username) {
                      if(username!.isEmpty){
                        return 'you must Enter Something!';
                      }else if(username.length<3)
                        return 'Name must be greater than or equal 3 characters';
                      else if(username != "Rawda")
                        return 'Username or Password Invalid';
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
                          borderSide:  BorderSide(
                            color: Constant.primaryColor,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
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
                          color: Constant.errormess,
                        )
                    ),
                    textInputAction: TextInputAction.next,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(7),
                  margin: const EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: TextFormField(
                    obscureText: true,
                    validator: (password) {
                      if(password!.isEmpty){
                        return 'you must Enter Something!';
                      }else if(password.length<6)
                        return 'Password must be greater than 6 characters';
                      else if(password!="667700")
                        return 'Username or Password Invalid';
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
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 8,
                    ),
                    child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Forgetpassword()));
                    },
                        child: Text("Forget Password?",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Constant.primaryColor,
                        ),)),
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
                  child: const Text("Log in",
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
                    const Text("Don't have an account?",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 15,
                      ),),
                    TextButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signup()),
                      );
                    }, child:  Text("Sign up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Constant.primaryColor,
                      ),))
                  ],
                )
            
              ],
            ),
          ),
        ),
      )
      ,
    );
  }
}
