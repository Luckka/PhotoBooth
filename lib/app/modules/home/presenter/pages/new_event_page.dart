import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:photo_booth/app/core/shared/app_routes.dart';
import 'package:photo_booth/app/core/shared/widgets/text_form_field_widget.dart';
import 'package:photo_booth/app/core/theme/app_colors.dart';
import 'package:photo_booth/app/core/theme/app_text_styles.dart';

class NewEventPage extends StatelessWidget {
  const NewEventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              SizedBox(
                  height: 100,
                  width: 150,
                  child: Image.asset('assets/icons/photo_booth_logo.png')),
              SizedBox(
                height: 70,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Crie um novo evento',
                    style:
                        AppTextStyles.titleMedium.copyWith(color: Colors.black),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextFormFieldWidget(
                      text: 'Novo do evento',
                      image: 'assets/icons/message_icon.png'),
                  SizedBox(height: 20),
                  TextFormFieldWidget(
                      text: '18/10/2024', image: 'assets/icons/message_icon.png'),
                  SizedBox(height: 20),
                  TextFormFieldWidget(
                      text: 'Selecionar Moldura',
                      image: 'assets/icons/message_icon.png'),
                  SizedBox(height: 20),
                  TextFormFieldWidget(
                      text: 'Processamento Online',
                      image: 'assets/icons/message_icon.png'),
                  SizedBox(height: 40),
                  InkWell(
                    onTap: () {
                      Modular.to.navigate(AppRoutes.home);
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
                          "Crie novo Evento",
                          style: AppTextStyles.titleMedium.copyWith(fontSize: 20),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
