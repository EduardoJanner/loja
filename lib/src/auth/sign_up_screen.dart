import 'package:flutter/material.dart';

import 'config/custom_colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: CustomColors.customSwatchColor,
        body: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Nome do app
                      Text.rich(
                        TextSpan(
                          style: const TextStyle(
                            fontSize: 40,
                          ),
                          children: [
                            const TextSpan(
                              text: 'Green',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: 'grocer',
                              style: TextStyle(
                                color: CustomColors.customContrastColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                      padding:  EdgeInsets.fromLTRB(0, 10, 0 ,10),
                      child: Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontSize: 30,
                            ),
                            children: [
                              TextSpan(
                                text: 'Cadastro',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                    ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 40,
                  ),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(45),
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}
