import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:metro_app/screens_admin/resetpass_admin.dart';
import 'package:metro_app/utils_admin/constanst_admin.dart';
import 'package:metro_app/widget_admin/rep_textfiled_admin.dart';


class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(45),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: FadeInLeft(
              delay: const Duration(milliseconds: 2100),
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.only(
            right: 15,
            left: 15,
            bottom: 15,
          ),
          width: gWidth,
          height: gHeight,
          child:SingleChildScrollView(
          child: Column(
            children: const [
              TopImage(),
              SizedBox(
                height: 5,
              ),
              ForgotText(),
              SizedBox(
                height: 20,
              ),
              MiddleText(),
              SizedBox(height: 30),
              EmailTextFiled(),
              SizedBox(height: 50),
              SubmitButton(),
            ],
          ),
          ),),
      ),
    );
  }
}

// Submit Button Components
class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: const Duration(microseconds: 200),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        width: gWidth,
        height: gHeight / 15,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ResetPasswordScreen()),
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
          child: const Text("Submit"),
        ),
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
      delay: const Duration(milliseconds: 600),
      child: const RepTextFiled(
        type: TextInputType.number,
        icon: LineIcons.identificationCard,
        text: "Work ID",
        sufIcon: null,
      ),
    );
  }
}

// Middle Text Components
class MiddleText extends StatelessWidget {
  const MiddleText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: const Duration(milliseconds: 1000),
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          width: gWidth,
          height: gHeight / 19,
          child: const Text(
            "Don't worry! it happens. Please enter your work id.",
            style: TextStyle(color: text1Color, height: 1.2, wordSpacing: 2),
          )),
    );
  }
}

// Top Forgot Text Components
class ForgotText extends StatelessWidget {
  const ForgotText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: const Duration(milliseconds: 1400),
      child: Container(
        margin: const EdgeInsets.only(right: 160, top: 10),
        width: gWidth / 2,
        height: gHeight / 8,
        child: const FittedBox(
          child: Text(
            "Forgot\nPassword?",
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
      delay: const Duration(milliseconds: 1800),
      child: SizedBox(
        width: gWidth,
        height: gHeight / 2.7,
        child: Image.asset(
          "assets/images/reset_admin.png",
        ),
      ),
    );
  }
}