import 'dart:ui';
import 'package:hw_login/Shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blueAccent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.secondary
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primary
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, -1.2),
                child: Container(
                  height: 300,
                  width: 600,
                  decoration: const BoxDecoration(
                      color: AppColors.accent
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.transparent),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Welcome To A.N',
                      style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 35,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    const SizedBox(height: 8,),
                    const Text(
                      'What is the weather?',
                      style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 25,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    Center(
                    ),
                    const Center(
                      child: Text(
                        'It is very cold.',
                        style: TextStyle(
                            color: AppColors.textColor,
                            fontSize: 25,
                            fontWeight: FontWeight.w300
                        ),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'How do you feel?',
                        style: TextStyle(
                            color: AppColors.textColor,
                            fontSize: 30,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    const SizedBox(height: 5,),
                    const Center(
                      child: Text(
                        'I am amazing.',
                        style: TextStyle(
                            color: AppColors.textColor,
                            fontSize: 25,
                            fontWeight: FontWeight.w300
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [

                            const SizedBox(width: 5,),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'When did you go?',
                                  style: TextStyle(
                                      color: AppColors.textColor,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                                SizedBox(height: 3,),
                                Text(
                                  'at 1:00 pm.',
                                  style: TextStyle(
                                      color: AppColors.textColor,
                                      fontWeight: FontWeight.w400
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),Row(
                          children: [
                            const SizedBox(width: 5,),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: Divider(
                        color: AppColors.accent,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const SizedBox(width: 5,),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'How are you now?',
                                  style: TextStyle(
                                      color: AppColors.textColor,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700
                                  ),
                                ),
                                SizedBox(height: 3,),
                                Text(
                                  'I am good!',
                                  style: TextStyle(
                                      color: AppColors.textColor,
                                      fontWeight: FontWeight.w300
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),Row(
                          children: [
                            const SizedBox(width: 5,),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '',
                                  style: TextStyle(
                                      color: AppColors.textColor,
                                      fontWeight: FontWeight.w700
                                  ),
                                ),
                                SizedBox(height: 3,),
                                Text(
                                  '',
                                  style: TextStyle(
                                      color: AppColors.textColor,
                                      fontWeight: FontWeight.w700
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
