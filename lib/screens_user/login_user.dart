import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:metro_app/screens_admin/login_admin.dart';
import 'package:metro_app/screens_user/forgotpass_user.dart';
import 'package:metro_app/screens_user/signup_user.dart';
import 'package:metro_app/user_profile/home_page__user_profile.dart';
import 'package:metro_app/utils_user/constanst_user.dart';
import 'package:metro_app/widget_user/rep_textfiled_user.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
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
                EmailTextFiled(),
                PasswordTextFiled(),
                ForgotText(),
                LoginButton(),
                SizedBox(height: 15),
                OrText(),
                SizedBox(height: 15),
                GoogleLoginButton(),
                SizedBox(height: 15),
                admin_button(),
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
                text: "New to Application?",
                style: TextStyle(color: text1Color),
                children: [
                  TextSpan(
                    text: "  Register",
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

// Login With Google Button Components
class GoogleLoginButton extends StatelessWidget {
  const GoogleLoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: const Duration(milliseconds: 600),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        width: gWidth,
        height: gHeight / 15,
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(
              buttonColor.withOpacity(0.2),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            backgroundColor:
            MaterialStateProperty.all(const Color.fromARGB(255, 238, 238, 238)),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 30,

              ),
              SizedBox(
                width: 40,
                height: 40,
                child: Image.network(
                    "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-suite-everything-you-need-know-about-google-newest-0.png"),

              ),
              const SizedBox(
                width: 40,
              ),
              const Text(
                "Login with Google",
                style: TextStyle(color: Color.fromARGB(255, 90, 90, 90)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class admin_button extends StatelessWidget {
  const admin_button({
    Key? key,
  }) : super(key: key);
@override
  Widget build(BuildContext context) {
  return FadeInDown(
    delay: const Duration(milliseconds: 600),
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: gWidth,
      height: gHeight / 15,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Adminlogin()),
          );
        },
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(
            buttonColor.withOpacity(0.2),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          backgroundColor:
          MaterialStateProperty.all(const Color.fromARGB(255, 238, 238, 238)),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 30,

            ),
            SizedBox(
              width: 40,
              height: 40,
              child: Image.network(
                  "https://www.pngall.com/wp-content/uploads/2016/04/Analysis-PNG-Image.png"),

            ),
            const SizedBox(
              width: 40,
            ),
            const Text(
              "Login as admin",
              style: TextStyle(color: Color.fromARGB(255, 90, 90, 90)),
            ),
          ],
        ),
      ),
    ),
  );
}}
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
              MaterialPageRoute(builder: (context) => usage()),
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
class EmailTextFiled extends StatelessWidget {
  const EmailTextFiled({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: const Duration(milliseconds: 2900),
      child: const RepTextFiled(
        type: TextInputType.emailAddress,
        sufIcon: null,
        icon: LineIcons.at,
        text: "Email ID",
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
            "assets/images/login.png",
          ),
        ),

    );
  }
}