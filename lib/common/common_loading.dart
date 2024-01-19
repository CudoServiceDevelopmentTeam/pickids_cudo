//이동규 20240119

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CommonLoading extends StatefulWidget{
  const CommonLoading({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CommonLoading();
}

class _CommonLoading extends State<CommonLoading>{

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Stack(
          children: [
            Container(color: const Color(0xcc000000)),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 72,
                width: 72,
                child: Lottie.asset('assets/json/json_common_loading.json'),
              ),
            )
          ],
        )
    );
  }
}