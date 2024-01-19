//이동규 20230119

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class GallaryPickLoading extends StatefulWidget{
  GallaryPickLoading({Key? key}) : super(key: key);
  /** TODO
      font 적용 필요(3군데)
      LinearProgressIndicator는 total 양이 1이기에 1아래 소숫점으로 percent 변환 필요
   */
  double _value = 50;
  @override
  State<StatefulWidget> createState() => _GallaryPickLoading();
}

class _GallaryPickLoading extends State<GallaryPickLoading>{
  get _progress => GallaryPickLoading()._value / 100;
  get _screenHeight => MediaQuery.of(context as BuildContext).size.height;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Stack(
          children: [
            Container(color: const Color(0xff5b46f9)),
            Align(
                alignment: Alignment.center,
                child: Container(
                  margin: const EdgeInsets.only(right: 0.5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 72,
                        width: 72,
                        margin: EdgeInsets.only(top: (_screenHeight *0.280)),
                        child: Lottie.asset('assets/json/json_common_loading.json'),
                      ),
                      Container(
                        height: 30,
                        margin: const EdgeInsets.only(top: 24),
                        child: const Text(
                          "전시관으로 이동하는 중..",
                          style: TextStyle(
                              fontSize: 24,
                              fontStyle: FontStyle.normal,
                              letterSpacing: -0.48,
                              color: Color(0xffffffff),
                              decoration: TextDecoration.none),
                        ),
                      ),
                      Container(
                          height: 20,
                          margin: const EdgeInsets.only(top: 12),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: const Color(0xffffffff)
                                  ),
                                  child: Container(
                                    padding: const EdgeInsets.fromLTRB(6, 2, 6, 2),
                                    child: const Text(
                                      "Tip",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontStyle: FontStyle.normal,
                                          letterSpacing: -0.24,
                                          color: Color(0xff5b46f9),
                                          decoration: TextDecoration.none),
                                    ),
                                  )
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                "전시관은 가로 화면으로 이용할 수 있어요.",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: -0.28,
                                    color: Color(0xffffffff),
                                    decoration: TextDecoration.none),
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                )
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    height: 16,
                    margin: const EdgeInsets.fromLTRB(25, 0, 24, 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: LinearProgressIndicator(
                            backgroundColor: const Color(0xffffffff).withOpacity(0.2),
                            valueColor: const AlwaysStoppedAnimation<Color>(Color(0xffffffff)),
                            value: _progress,
                            borderRadius: BorderRadius.circular(50),
                            minHeight: 4,
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.only(left: 25),
                            width: 23,
                            height: 16,
                            child: Text(
                              "${(_progress*100).round()}%",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: const Color(0xffffffff).withOpacity(0.8),
                                  decoration: TextDecoration.none),
                            )
                        )
                      ],
                    )
                )
            ),
          ],
        )
    );
  }
}