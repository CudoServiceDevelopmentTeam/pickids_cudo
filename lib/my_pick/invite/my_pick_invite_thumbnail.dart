import 'package:flutter/material.dart';
import 'package:pickids_flutter/common/common_image_button.dart';
// 김용겸 20240119

/**
 * 폰트 및 해당 Weight 미적용 소스입니다.
 * 작업 중인 소스 import후 맞추는 작업 하셔야합니다.
 */

class MyPickInviteThumbnail extends StatefulWidget {
  const MyPickInviteThumbnail({Key? key}) : super(key: key);

  @override
  State<MyPickInviteThumbnail> createState() => _MyPickInviteThumbnailState();
}

class _MyPickInviteThumbnailState extends State<MyPickInviteThumbnail> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              Container(
                height: 247,
                width: constraints.maxWidth,
                color: const Color(0xff292643),
              ),
              SafeArea(
                child: PopScope(
                  canPop: true,
                  onPopInvoked: (didPop) {},
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      print('constraints: ${constraints}');
                      return Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 56,
                              width: constraints.maxWidth,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CommonImageButton(
                                    resPath: 'ic_top_back_24_wh',
                                    buttonWidth: 40,
                                    buttonHeight: 40,
                                    padding: 8,
                                    onClick: () {
                                      print('뒤로가기 클릭');
                                    },
                                  ),
                                  const Expanded(
                                    child: Text(
                                      '전시 초대하기',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Color(0xffffffff),
                                          letterSpacing: -0.36),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 40,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 312,
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  SizedBox(
                                    width: 312,
                                    height: 200,
                                    child: ClipRRect(
                                      clipBehavior: Clip.antiAlias,
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(24),
                                        topRight: Radius.circular(24),
                                        bottomRight: Radius.circular(24),
                                      ),
                                      child: Image.network(
                                        'https://bestdesignhub.com/wp-content/uploads/2020/04/zeplin.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 312,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(24),
                                          topRight: Radius.circular(24),
                                          bottomRight: Radius.circular(24),
                                        ),
                                        border: Border.all(
                                          width: 6,
                                          color: const Color(0xffffffff),
                                        ),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Color(0xff40000000),
                                            spreadRadius: 0,
                                            blurRadius: 8.0,
                                            offset: Offset(0, 4),
                                          )
                                        ],
                                        gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Color(0xff000000).withOpacity(0),
                                              Color(0xff000000)
                                                  .withOpacity(0.7),
                                            ])),
                                  ),
                                  Positioned(
                                    top: 16,
                                    right: 16,
                                    width: 99,
                                    height: 32,
                                    child: GestureDetector(
                                      onTap: (){
                                        print('전시 변경 click');
                                      },
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 12),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50)),
                                            color: Color(0xffffffff)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/ic_common_change_16_gr_5.png',
                                              width: 16,
                                              height: 16,
                                              fit: BoxFit.cover,
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Expanded(
                                              child: Text(
                                                '전시 변경',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14,
                                                  color: Color(0xff555555),
                                                  letterSpacing: -0.28,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 32,
                                    bottom: 32,
                                    right: 32,
                                    child: SizedBox(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '전시명 : 즐거운 우리 원의 모습입니다.',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xffffffff),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 1,
                                          ),
                                          Text(
                                            '전시 설명 : 즐거운 우리 원을 구경해 보세요!',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              color: Color(0xffffffff),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 1,
                                          ),
                                          Text(
                                            '개설자 : 김슬기',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              color: Color(0xffffffff),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            '2023-12-10 ~ 2024-01-10',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '초대 인원 정보',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Color(0xff1b1b1b),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            '8명',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color(0xff5b46f9),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              print('썸네일 click');
                                            },
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  'assets/images/ic_my_emotion_16_gr_8.png',
                                                  width: 16,
                                                  height: 16,
                                                  fit: BoxFit.cover,
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Text(
                                                  '썸네일',
                                                  style: TextStyle(
                                                    fontWeight:
                                                    FontWeight.normal,
                                                    fontSize: 14,
                                                    color: Color(0xff555555),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                  width: 1,
                                                  height: 13,
                                                  color: Color(0xffd9d9d9),
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                              ],
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              print('전체보기 click');
                                            },
                                            child: Row(
                                              children: [
                                                Text(
                                                  '전체보기',
                                                  style: TextStyle(
                                                    fontWeight:
                                                    FontWeight.normal,
                                                    fontSize: 14,
                                                    color: Color(0xff555555),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Image.asset(
                                                  'assets/images/ic_common_sort_16_gr_5.png',
                                                  width: 16,
                                                  height: 16,
                                                  fit: BoxFit.cover,
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      print('전체 선택 click');
                                    },
                                    child: Container(
                                      width: 80,
                                      height: 24,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 2),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/ic_checkbox_boxon_24_off.png',
                                            width: 16,
                                            height: 16,
                                            fit: BoxFit.cover,
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Text('전체 선택'),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 16),
                              child: Divider(
                                height: 1,
                                color: Color(0xffeeeeee),
                              ),
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            // thumb / list
                            Expanded(
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: LayoutBuilder(
                                      builder: (context, constraints) {
                                        const double itemHeight = 142;
                                        final double itemWidth =
                                            constraints.maxWidth / 3;
                                        return GridView.builder(
                                          itemCount: 100,
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 3,
                                            mainAxisSpacing: 24,
                                            childAspectRatio:
                                                (itemWidth / itemHeight),
                                          ),
                                          itemBuilder: (context, index) {
                                            return Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    print('$index click');
                                                  },
                                                  child: Stack(
                                                    children: [
                                                      SizedBox(
                                                        width: 88,
                                                        height: 88,
                                                        child: ClipOval(
                                                          child: Image.network(
                                                            'https://bestdesignhub.com/wp-content/uploads/2020/04/zeplin.png',
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: Image.asset(
                                                          index % 2 == 0
                                                              ? 'assets/images/ic_checkbox_boxon_24_off.png'
                                                              : 'assets/images/ic_checkbox_boxon_24_on.png',
                                                          width: 24,
                                                          height: 24,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 8,
                                                ),
                                                SizedBox(
                                                  height: 22,
                                                  child: Text(
                                                    '김시안',
                                                    style: TextStyle(
                                                      color: Color(0xff888888),
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      letterSpacing: -0.32,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 4,
                                                ),
                                                Visibility(
                                                  visible: index % 2 == 0,
                                                  child: Container(
                                                    height: 20,
                                                    width: 63,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        width: 1,
                                                        color: const Color(
                                                            0xffcccccc),
                                                      ),
                                                      color: Color(0xfff7f7f7),
                                                    ),
                                                    child: const Text(
                                                      '승인 대기중',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xff888888),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        letterSpacing: -0.24,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ),
                                                ),
                                                Visibility(
                                                  visible: index % 2 != 0,
                                                  child: Container(
                                                    height: 20,
                                                    width: 33,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        width: 1,
                                                        color: const Color(
                                                            0xffc3bbfe),
                                                      ),
                                                      color: Color(0xffefedff),
                                                    ),
                                                    child: const Text(
                                                      '회원',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xff5b46f9),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        letterSpacing: -0.24,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    child: Container(
                                      width: constraints.maxWidth,
                                      height: 24,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              const Color(0xffffffff)
                                                  .withOpacity(0),
                                              const Color(0xffffffff)
                                            ]),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(16, 8, 16, 16),
                              width: constraints.maxWidth,
                              height: 72,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(24),
                                  ),
                                  color: Color(0xff5b46f9),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  '전시 초대 2명',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: -0.32,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
