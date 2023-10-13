import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';
import '../../utils/utils.dart';

class AccauntPage extends StatelessWidget {
  const AccauntPage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgrountColorScaffold,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 30, bottom: 30, left: 18, right: 18),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 5,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Image.asset(
                            'assets/page-1/images/vector-21.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Text(
                          'Профиль',
                          style: SafeGoogleFont(
                            'SF Pro Display',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            height: 1.2,
                            letterSpacing: 0.3799999952,
                            color: textSmollColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: width * 0.3),
                  Expanded(
                    child: Image.asset(
                      'assets/page-1/images/auto-group-las3.png',
                      width: 21,
                      height: 25,
                      color: textSmollColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: height,
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: const BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/page-1/images/mask-group.png',
                            width: 95,
                            height: 95,
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            'Васильков Кирилл Александрович ',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'SF Pro Display',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              height: 1.25,
                              letterSpacing: -0.3199999928,
                              color: textContColor,
                            ),
                          ),
                          SizedBox(height: height * 0.005),
                          Text(
                            '+7 922 123 45 67',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'SF Pro Display',
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              height: 1.2307692308,
                              letterSpacing: -0.0780000016,
                              color: infoTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.05),
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      style: SafeGoogleFont(
                                        'SF Pro Display',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        height: 1,
                                        letterSpacing: -0.3199999928,
                                        color: backgrountColorScaffold,
                                      ),
                                      children: [
                                        const TextSpan(
                                          text: '1 485,67 ',
                                        ),
                                        TextSpan(
                                          text: '₽',
                                          style: SafeGoogleFont(
                                            'SF Pro Display',
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            height: 1,
                                            letterSpacing: -0.3199999928,
                                            color: backgrountColorScaffold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Text(
                                  'Кошелек ImPay',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'SF Pro Display',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    height: 1.25,
                                    letterSpacing: -0.2399999946,
                                    color: infoTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const VerticalDivider(
                            width: 20,
                            thickness: 2,
                            // indent: 4,
                            endIndent: 0,
                            color: textContColor,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      style: SafeGoogleFont(
                                        'SF Pro Display',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        height: 1,
                                        letterSpacing: -0.3199999928,
                                        color: backgrountColorScaffold,
                                      ),
                                      children: [
                                        const TextSpan(
                                          text: '5 485,67 ',
                                        ),
                                        TextSpan(
                                          text: '₽',
                                          style: SafeGoogleFont(
                                            'SF Pro Display',
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            height: 1,
                                            letterSpacing: -0.3199999928,
                                            color: backgrountColorScaffold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Text(
                                  'Накомленно бонусов',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'SF Pro Display',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    height: 1.25,
                                    letterSpacing: -0.2399999946,
                                    color: infoTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.05),
                    Row(
                      children: [
                        Image.asset(
                          'assets/page-1/images/auto-group-hlnt.png',
                          width: 38,
                          height: 38,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Мои данные',
                                style: SafeGoogleFont(
                                  'SF Pro Display',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  height: 1.25,
                                  letterSpacing: -0.3199999928,
                                  color: const Color(0xff222a34),
                                ),
                              ),
                              SizedBox(width: 175),
                              Image.asset(
                                'assets/page-1/images/vector-34.png',
                                width: 16,
                                height: 16,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.04),
                    Row(
                      children: [
                        Image.asset(
                          'assets/page-1/images/auto-group-yplj.png',
                          width: 38,
                          height: 38,
                        ),
                        SizedBox(width: width * 0.05),
                        Text(
                          'Помощ',
                          style: SafeGoogleFont(
                            'SF Pro Display',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            height: 1.25,
                            letterSpacing: -0.3199999928,
                            color: Color(0xff222a34),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
