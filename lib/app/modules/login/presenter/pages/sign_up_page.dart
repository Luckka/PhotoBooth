import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:photo_booth/app/core/shared/app_routes.dart';
import 'package:photo_booth/app/core/shared/widgets/text_form_field_widget.dart';
import 'package:photo_booth/app/core/theme/app_colors.dart';
import 'package:photo_booth/app/core/theme/app_text_styles.dart';
import 'package:photo_booth/app/modules/login/presenter/services/auth_service.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final authService = Modular.get<Auth>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blueButton,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Modular.to.navigate(AppRoutes.login);
          },
          child: Icon(Icons.arrow_back)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40.0, top: 40),
            child: Text(
              "Sign up",
              style: AppTextStyles.titleMedium
                  .copyWith(color: AppColors.blackText),
            ),
          ),
          SizedBox(height: 20),
          TextFormFieldWidget(
              text: "Full name", image: "assets/icons/profile_icon.png"),
          SizedBox(
            height: 19,
          ),
          TextFormFieldWidget(
            controller: emailController,
              text: "abc@email.com", image: "assets/icons/message_icon.png"),
          SizedBox(
            height: 19,
          ),
          TextFormFieldWidget(
              controller: passwordController,
              text: "Your password", image: "assets/icons/lock.png"),
          SizedBox(height: 19,),
          TextFormFieldWidget(
              text: "Confirm password", image: "assets/icons/lock.png"),
          SizedBox(height: 40),
          InkWell(
              onTap: () {
                authService.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text);
              },
              child: Center(
                child: Container(
                  width: 271,
                  height: 58,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.blueButton),
                  child: Center(
                      child: Text(
                    "SIGN UP",
                    style: AppTextStyles.titleMedium.copyWith(fontSize: 20),
                  )),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
