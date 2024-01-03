import 'package:flutter/material.dart';
import 'package:photo_booth/app/core/shared/widgets/text_form_field_widget.dart';
import 'package:photo_booth/app/core/theme/app_colors.dart';
import 'package:photo_booth/app/core/theme/app_text_styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/icons/photo_booth_logo.png"),
            Padding(
              padding: const EdgeInsets.only(left:40.0),
              child: Text("Sign in",style: AppTextStyles.titleLarge,),
            ),

            SizedBox(height: 21),

            TextFormFieldWidget(text: 'abc@gmail.com', image: 'assets/icons/message_icon.png'),
            SizedBox(height: 19,),
            TextFormFieldWidget(text: 'abc@gmail.com', image: 'assets/icons/message_icon.png'),
            SizedBox(height: 36),
            InkWell(
              onTap: () {
                
              },
              child: Center(
                child: Container(

                  width: 271,
                  height: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.blueButton
                  ),
                  child: Center(child: Text("SIGN IN",style: AppTextStyles.titleMedium.copyWith(fontSize: 20),)),
                ),
              ),
            )

            
          ],
        ),
    );
  }
}