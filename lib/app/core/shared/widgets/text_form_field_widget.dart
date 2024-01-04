import 'package:flutter/material.dart';
import 'package:photo_booth/app/core/theme/app_colors.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String text;
  final String image;
  final TextEditingController? controller;
  const TextFormFieldWidget({super.key, required this.text, required this.image, this.controller});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 317,
        height: 56,
         decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
    
          ),
         ),
    
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: text          ),
            controller: controller,
             
           ),
         ),
      ),
    );
  }
}