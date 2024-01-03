import 'package:flutter/material.dart';
import 'package:photo_booth/app/core/theme/app_colors.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String text;
  final String image;
  const TextFormFieldWidget({super.key, required this.text, required this.image});

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
           padding: const EdgeInsets.all(15.0),
           child: Row(
                
            children: [
              Image.asset(image),
              SizedBox(width: 20),
              Text(text),
            ],
           ),
         ),
      ),
    );
  }
}