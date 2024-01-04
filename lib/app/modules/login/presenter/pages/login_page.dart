import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:photo_booth/app/core/shared/app_routes.dart';
import 'package:photo_booth/app/core/shared/widgets/text_form_field_widget.dart';
import 'package:photo_booth/app/core/theme/app_colors.dart';
import 'package:photo_booth/app/core/theme/app_text_styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                  height: 200,
                  child: Image.asset("assets/icons/photo_booth_logo.png")),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Text(
                "Sign in",
                style: AppTextStyles.titleLarge,
              ),
            ),
            SizedBox(height: 21),
            TextFormFieldWidget(
                text: 'abc@gmail.com', image: 'assets/icons/message_icon.png'),
            SizedBox(
              height: 19,
            ),
            TextFormFieldWidget(
                text: 'abc@gmail.com', image: 'assets/icons/message_icon.png'),
            SizedBox(height: 36),
            InkWell(
              onTap: () {},
              child: Center(
                child: Container(
                  width: 271,
                  height: 58,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.blueButton),
                  child: Center(
                      child: Text(
                    "SIGN IN",
                    style: AppTextStyles.titleMedium.copyWith(fontSize: 20),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Center(
                child: Text(
              "Or",
              style: AppTextStyles.appBarTitle.copyWith(color: AppColors.grey),
            )),
            SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: () {},
              child: Center(
                child: Container(
                  width: 271,
                  height: 58,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.greyButton),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/google_icon.png"),
                      SizedBox(width: 10),
                      Center(
                          child: Text(
                        "Login com Google",
                        style: AppTextStyles.titleMedium
                            .copyWith(fontSize: 20, color: AppColors.blackText),
                      )),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Não tem uma conta?",
                  style: AppTextStyles.labelInputText
                      .copyWith(color: AppColors.blackText),
                ),
                SizedBox(width: 10),
                InkWell(
                    onTap: () {
                      Modular.to.navigate(AppRoutes.signUp);
                    },
                    child: Text(
                      "Inscreva-se",
                      style: AppTextStyles.labelInputText
                          .copyWith(color: AppColors.blueButton),
                    ))
              ],
            ),
            SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
