import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:metro_app/screens_admin/forgotpass_admin.dart';
import 'package:metro_app/screens_admin/signup_admin.dart';
import 'package:metro_app/utils_admin/constanst_admin.dart';
import 'package:metro_app/widget_admin/rep_textfiled_admin.dart';
import '../admin.dart';

class Adminlogin extends StatelessWidget {
  const Adminlogin({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(15),
          width: gWidth,
          height: gHeight,
          child:SingleChildScrollView(
            child: Column(
              children: const [
                TopImage(),
                LoginText(),
                SizedBox(height: 20,),
                NameTextFiled(),
                PasswordTextFiled(),
                ForgotText(),
                LoginButton(),
                SizedBox(height: 15),
                OrText(),
                SizedBox(height: 15),
                RegisterText(),
              ],
            ),
          )

        ),
      ),
    );
  }
}

// Register Text Components
class RegisterText extends StatelessWidget {
  const RegisterText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SignUpScreen()),
          );
        },
        child: Container(
          margin: const EdgeInsets.only(top: 22),
          width: gWidth / 2,
          height: gHeight / 32,
          child: FittedBox(
            child: RichText(
              text: const TextSpan(
                text: "Add new admin?",
                style: TextStyle(color: text1Color),
                children: [
                  TextSpan(
                    text: "Add",
                    style: TextStyle(
                      color: buttonColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



// OR Text Components
class OrText extends StatelessWidget {
  const OrText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: const Duration(milliseconds: 1000),
      child: SizedBox(
        width: gWidth,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 130,
                height: 0.5,
                color: iconColor,
              ),
              const Text(
                "  OR  ",
                style: TextStyle(color: iconColor, fontSize: 20),
              ),
              Container(
                width: 130,
                height: 0.5,
                color: iconColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Login Button Components
class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: const Duration(milliseconds: 1400),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        width: gWidth,
        height: gHeight / 15,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => admin()),
            );
          },
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(buttonColor),
          ),
          child: const Text("Login"),
        ),
      ),
    );
  }
}

// Forgot Text Components
class ForgotText extends StatelessWidget {
  const ForgotText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: const Duration(milliseconds: 1800),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()),
          );
        },
        child: Container(
          margin: const EdgeInsets.only(left: 240, top: 20),
          width: gWidth / 3.7,
          height: gHeight / 32,
          child: const FittedBox(
            child: Text(
              "Forgot Password?",
              style: TextStyle(color: buttonColor, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}

// Password TextFiled Components
class PasswordTextFiled extends StatelessWidget {
  const PasswordTextFiled({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: const Duration(milliseconds: 2300),
      child: const RepTextFiled(
        type: TextInputType.visiblePassword,
        sufIcon: Icon(LineIcons.eyeSlash),
        icon: LineIcons.alternateUnlock,
        text: "Password",
      ),
    );
  }
}

// Email TextFiled Components
class NameTextFiled extends StatelessWidget {
  const NameTextFiled({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: const Duration(milliseconds: 2900),
      child: const RepTextFiled(
        type: TextInputType.name,
        sufIcon: null,
        icon: LineIcons.neutralFaceAlt,
        text: "Name ID",
      ),

    );
  }
}

// Top Login Text Components
class LoginText extends StatelessWidget {
  const LoginText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: const Duration(milliseconds: 3200),
        child: Container(
          margin: const EdgeInsets.only(right: 270, top: 10),
          width: gWidth / 4,
          height: gHeight / 18,
          child: const FittedBox(
            child: Text(
              "Login",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

    );
  }
}

// Top Image Components
class TopImage extends StatelessWidget {
  const TopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: const Duration(milliseconds: 3800),

        child: SizedBox(
          width: gWidth,
          height: gHeight / 2.85,
          child: Image.asset(
            "assets/images/admin_login.png",
          ),
        ),

    );
  }
}