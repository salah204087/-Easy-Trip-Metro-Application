import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:metro_app/controller_user/submit_user.dart';
import 'package:metro_app/utils_user/constanst_user.dart';
import 'package:metro_app/widget_user/rep_textfiled_user.dart';


class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

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
                  Get.find<SubmitController>().isSubmit.value = false;
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
            children: [
              const TopImage(),
              const ResetText(),
              const SizedBox(
                height: 20,
              ),
              const NewPasswordTextFiled(),
              const SizedBox(
                height: 20,
              ),
              const ConfirmNewPasswordTextFiled(),
              const SizedBox(height: 50),
              SubmitButton()
            ],
          ),
          ),),
      ),
    );
  }
}

// Submit Button Components
class SubmitButton extends StatelessWidget {
  //
  final _submitController = Get.find<SubmitController>();

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: const Duration(microseconds: 200),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        width: gWidth,
        height: gHeight / 15,
        child: GetBuilder<SubmitController>(builder: (context) {
          return ElevatedButton(
            onPressed: () {
              _submitController.submiting();
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(buttonColor),
            ),
            child: _submitController.isSubmit == false
                ? const Text("Submit")
                : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                  height: 20,
                  width: 20,
                  child: CupertinoActivityIndicator(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Submitting..."),
              ],
            ),
          );
        }),
      ),
    );
  }
}

// Confirm New Password TextFiled Components
class ConfirmNewPasswordTextFiled extends StatelessWidget {
  const ConfirmNewPasswordTextFiled({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: const Duration(milliseconds: 600),
      child: const RepTextFiled(
        type: TextInputType.visiblePassword,
        icon: LineIcons.alternateUnlock,
        text: "Confirm new password",
        sufIcon: null,
      ),
    );
  }
}

// New Password TextFiled Components
class NewPasswordTextFiled extends StatelessWidget {
  const NewPasswordTextFiled({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: const Duration(milliseconds: 1000),
      child: const RepTextFiled(
        type: TextInputType.visiblePassword,
        icon: LineIcons.alternateUnlock,
        text: "New password",
        sufIcon: Icon(LineIcons.eyeSlash),
      ),
    );
  }
}

// Top Reset Text Components
class ResetText extends StatelessWidget {
  const ResetText({
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
            "Reset\nPassword",
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
          "assets/images/reset.png",
        ),
      ),
    );
  }
}