import 'package:flutter/material.dart';
import 'package:pickids_flutter/common/common_image_button.dart';
// 김용겸 20240119
/**
 * 폰트 및 해당 Weight 미적용 소스입니다.
 * 작업 중인 소스 import후 맞추는 작업 하셔야합니다.
 */
class MyPickInviteEmpty extends StatefulWidget {
  const MyPickInviteEmpty({Key? key}) : super(key: key);

  @override
  State<MyPickInviteEmpty> createState() => _MyPickInviteEmptyState();
}

class _MyPickInviteEmptyState extends State<MyPickInviteEmpty> {
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
      body: SafeArea(
        child: PopScope(
          canPop: true,
          onPopInvoked: (didPop) {},
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                color: const Color(0xffffffff),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 56,
                      width: constraints.maxWidth,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonImageButton(
                            resPath: 'ic_top_back_24_bl',
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
                                color: Color(0xff1b1b1b),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/img_common_emotion_48.png',
                            width: 48,
                            height: 48,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            '개설한 전시가 없습니다.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: -0.32,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            '아이의 소중한 순간을 담은 전시를 개설해보세요.',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff888888),
                              fontWeight: FontWeight.normal,
                              letterSpacing: -0.28,
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          InkWell(
                            onTap: (){
                              print('전시 개설하기 click');
                            },
                            child: Container(
                              width: 184,
                              height: 40,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                color: Color(0xff555555),
                              ),
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/ic_common_exhibition_16_wh.png',
                                      width: 16,
                                      height: 16,
                                      fit: BoxFit.cover,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      '지금 바로 전시 개설하기',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xffffffff),
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: -0.28,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
