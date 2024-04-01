import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:photo_booth/app/core/shared/app_routes.dart';
import 'package:photo_booth/app/core/theme/app_text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(label: '', icon: Icon(Icons.home)),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: '',
        ),
      ]),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
                height: 100,
                width: 150,
                child: Image.asset('assets/icons/photo_booth_logo.png')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Modular.to.navigate(AppRoutes.newEvent);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 100,
                    width: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: 30,
                              width: 30,
                              child: Image.asset('assets/icons/add-event.png')),
                          SizedBox(height: 10),
                          Text(
                            'Criar novo \nEvento',
                            style: AppTextStyles.bodySmall,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 100,
                  width: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 30,
                            width: 30,
                            child: Image.asset('assets/icons/galeria.png')),
                        SizedBox(height: 10),
                        Text(
                          'Galeria de \nEventos',
                          style: AppTextStyles.bodySmall,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 100,
                  width: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 30,
                            width: 30,
                            child: Image.asset('assets/icons/effects.png')),
                        SizedBox(height: 10),
                        Text(
                          'Efeitos de \nVideo',
                          style: AppTextStyles.bodySmall,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
                child: Center(
              child: Text('Nenhum Evento Criado'),
            ))
          ],
        ),
      ),
    );
  }
}
