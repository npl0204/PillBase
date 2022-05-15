import 'package:flutter/material.dart';

import '../../core/constants.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: kGradientPrimary,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.35, 0.55]),
          ),
          child: Column(
            children: [
              const Spacer(flex: 1),
              Row(
                children: [
                  const Spacer(flex: 2),
                  Text(
                    'Welcome to',
                    style: TextStyle(
                        fontSize: 25,
                        color: Theme.of(context)
                            .colorScheme
                            .secondary
                            .withOpacity(0.8)),
                  ),
                  const Spacer(flex: 2),
                  Container(
                    width: 130.0,
                    height: 130.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.1),
                            blurRadius: 8,
                            spreadRadius: 3)
                      ],
                      border: Border.all(
                        width: 1.5,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: Image.asset('assets/images/Logo.png'),
                  ),
                  const Spacer(flex: 2),
                ],
              ),
              const Spacer(flex: 6),
            ],
          )
    );
  }
}
