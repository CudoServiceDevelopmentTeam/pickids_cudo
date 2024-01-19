import 'package:flutter/material.dart';

// 이동규 20240119
/**
 * 폰트 및 해당 Weight 미적용 소스입니다.
 * 작업 중인 소스 import후 맞추는 작업 하셔야합니다.
 * _buttonClick : 이동하기 버튼의 색을 변경하기 위한 item 클릭 여부 체크 변수
 * _itemClickStates : item의 각각의 클릭 여부를 판단하기 위한 체크 리스트
 * _places : 공간의 이름을 갖고 있는 리스트
 * _placeImages : 공간 이미지의 경로를 갖고 있는 리스트
 */

class GalleryPickMapMoving extends StatefulWidget {
  const GalleryPickMapMoving({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _GalleryPickMapMovingState();
}

class _GalleryPickMapMovingState extends State<GalleryPickMapMoving> {

  bool _buttonClick = false;
  List<bool> _itemClickStates = [false, false, false, false];
  List<String> _places = ['인트로 공간', '교실 공간', '블럭 공간', '야외 공간'];
  List<String> _placeImages = ['assets/images/img_exhibition_connect_intro_112_x_84.png',
    'assets/images/img_exhibition_connect_intro_112_x_84.png',
    'assets/images/img_exhibition_connect_intro_112_x_84.png',
    'assets/images/img_exhibition_connect_intro_112_x_84.png'];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void _updateSelected(bool buttonClick) {
    setState(() {
      _buttonClick = buttonClick;
    });
  }

  void _toggleItemClick(int index) {
    setState(() {
      for (int i = 0; i < _itemClickStates.length; i++) {
        if (i == index) {
          if(_itemClickStates[i] == true){
            _itemClickStates[i] = false;
          }else{
            _itemClickStates[i] = true;
          }
        } else {
          _itemClickStates[i] = false;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(color: const Color(0xffffffff).withOpacity(0.8)),
          Container(color: const Color(0xff000000).withOpacity(0.8)),
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xffffffff),
              ),
              margin: const EdgeInsets.fromLTRB(56, 24, 56, 24),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                      child: const Text(
                        "맵 이동",
                        style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 0.36,
                          color: Color(0xff333333),
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: _listItemWidget(),
                  ),
                  Container(
                    height: 40,
                    width: 320,
                    margin: const EdgeInsets.only(bottom: 16),
                    child: _twoButtonWidget(),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _listItemWidget() {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 24, 0, 24),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _places.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Stack(
              children: [
                Container(
                  width: 160,
                  margin: EdgeInsets.fromLTRB(
                    (index == 0) ? 24 : 0,
                    0,
                    (index == (_places.length - 1)) ? 24 : 16,
                    0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      width: 1,
                      color: const Color(0xffdddddd),
                    ),
                    color: const Color(0xffffffff),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x0c000000),
                        spreadRadius: 0,
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      )
                    ],
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(24, 16, 0, 0),
                          child: Text(
                            _places[index],
                            style: const TextStyle(
                              fontSize: 14,
                              letterSpacing: -0.28,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(24, 24, 0, 0),
                          child: Image.asset(_placeImages[index]),
                        )
                      ],
                    ),
                  ),
                ),
                _itemClickStates[index] ? Container(
                  width: 160,
                  margin: EdgeInsets.fromLTRB(
                    (index == 0) ? 24 : 0,
                    0,
                    (index == (_places.length - 1)) ? 24 : 16,
                    0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0x80f7f7f7),
                    border: Border.all(
                      width: 1,
                      color: const Color(0xffdddddd),
                    ),
                  ),
                ) : Container(),
                Positioned.fill(child: Align(
                  alignment: Alignment.topRight,
                  child: _itemClickStates[index] ? Container(
                    margin: EdgeInsets.fromLTRB(
                      (index == 0) ? 24 : 0,
                      0,
                      (index == (_places.length - 1)) ? 24 : 16,
                      0,
                    ),
                    child : Container(
                        height: 20,
                        width: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: const Color(0xffefedff),
                          border: Border.all(
                            width: 1,
                            color: const Color(0xffc3bbfe),
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          child: const Text("현재 위치",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              letterSpacing: -0.24,
                              color: Color(0xff5b46f9),
                              decoration: TextDecoration.none,
                            ),
                          ),
                        )
                    ),
                  ) : Container(),
                ))
              ],
            ),
            onTap: () {
              print('전시관 장소 개별 클릭');
              if (_buttonClick) {
                _updateSelected(false);
              } else {
                _updateSelected(true);
              }
              _toggleItemClick(index);
            },
          );
        },
      ),
    );
  }

  Widget _twoButtonWidget() {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              print('전시관 팝업 닫기 클릭');
            },
            style: ElevatedButton.styleFrom(
              elevation: 0.0,
              backgroundColor: const Color(0xffeeeeee),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            child: const Text(
              "닫기",
              style: TextStyle(
                fontSize: 14,
                letterSpacing: 0.28,
                color: Color(0xff888888),
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              print('전시관 팝업 이동하기 클릭');
            },
            style: ButtonStyle(
              elevation: MaterialStateProperty.all<double>(0.0),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
              ),
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (_itemClickStates.contains(true)) {
                    return const Color(0xff5b46f9);
                  }
                  return const Color(0xffd6d2f2);
                },
              ),
            ),
            child: const Text(
              "이동하기",
              style: TextStyle(
                fontSize: 14,
                letterSpacing: 0.28,
                color: Color(0xffffffff),
                decoration: TextDecoration.none
              ),
            ),
          ),
        )
      ],
    );
  }
}
