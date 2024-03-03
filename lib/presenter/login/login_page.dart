import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketplace_auth/data/model/request/login/login.dart';
import 'package:marketplace_auth/presenter/login/bloc/login_bloc.dart';


class LoginPage extends StatefulWidget {
  String? phoneNumber;

  LoginPage({super.key, this.phoneNumber});

  @override
  State<LoginPage> createState() => _LoginPageState(phoneNumber);
}

class _LoginPageState extends State<LoginPage> {
  String? phoneNumber;

  _LoginPageState(this.phoneNumber);

  final bloc = LoginBloc();

  @override
  void initState() {
    super.initState();
  }


  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocConsumer<LoginBloc, LoginScreenState>(
  listener: (context, state) {

  },
  builder: (context, state) {
    return Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 30),
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff636C79)),
                      child: const Center(
                          child: Icon(Icons.keyboard_arrow_left_outlined,
                              color: Colors.white)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Image.asset(
                            "assets/images/app_image.png",
                            height: 64,
                            width: 64,
                          ),
                        ),
                      ],
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, top: 30),
                            child: Text(
                              "Tasdiqlash kodi",
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, top: 16),
                            child: Text(
                              "Quyidagi telefon raqamiga sms-kod yuborildi!",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, top: 16),
                            child: Text(
                              widget.phoneNumber ?? "998907322702",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TextField(
                        controller: controller,
                        maxLength: 4,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(14),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xffF1F2F4), // Border rangi
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(14),
                            ),
                          ),
                        ),
                        onChanged: (satr) {
                          setState(() {});
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        height: 40,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadiusDirectional.circular(14)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "00:17",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(14)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/update.png"),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Kodni qayta yuboring",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        if (controller.text.length == 4) {
                          bloc.add(LoginUser(LoginRequest(controller.text, widget.phoneNumber.toString(), "")));

                        }
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: controller.text.length == 4
                                ? Colors.blue
                                : Colors.black12,
                            borderRadius: BorderRadiusDirectional.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Tasdiqlash",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffF1F2F4)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 16, right: 16, top: 90),
                      child: Row(
                        children: [
                          Text(
                            "Mobil ilovadan ro‘yxatdan o‘tish orqali, siz  ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            "Foydalanuvchi kelishuvi",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 10, color: Colors.blue),
                          ),
                          Text(
                            "va",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 10, color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Maxfiylik siyosati ",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 10, color: Colors.blue),
                          ),
                          Text(
                            "shartlariga rozi ekanligingizni tasdiqlaysiz.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  },
),
    );
  }
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     body: SafeArea(
//       child: CustomScrollView(
//         slivers: [
//           SliverList(
//             delegate: SliverChildListDelegate(
//               [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Container(
//                         // margin: EdgeInsets.only(left: 20, top: 30),
//                         width: 24,
//                         height: 24,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                           color: Color(0xff636C79),
//                         ),
//                         child: Icon(
//                           size: 24,
//                           Icons.keyboard_arrow_left_outlined,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Center(
//                       child: Image.asset(
//                         "assets/images/app_image.png",
//                         height: 64,
//                         width: 64,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(left: 20, top: 30),
//                   child: Text(
//                     "Kirish yoki Ro‘yxatdan o‘tish",
//                     style: TextStyle(
//                       fontSize: 28,
//                       fontWeight: FontWeight.w700,
//                     ),
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.only(left: 20, top: 30),
//                       child: Text(
//                         "To’liq ismingizni kiriting",
//                         style: TextStyle(
//                           fontSize: 14,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(top: 30),
//                       child: Text(
//                         "*",
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: Colors.red,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20, right: 20),
//                   child: TextField(
//                     decoration: InputDecoration(
//                       hintText: "Kirish",
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(14),
//                         ),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(
//                           color: Color(0xffF1F2F4), // Border rangi
//                         ),
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(14),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 InkWell(
//                   onTap: () {
//                     Navigator.pushNamed(context, "mapScreen");
//                   },
//                   child: Container(
//                     margin: EdgeInsets.only(left: 20, right: 20),
//                     height: 50,
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       color: Colors.black12,
//                       borderRadius: BorderRadiusDirectional.circular(30),
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           "Kodni yuborish",
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w500,
//                             color: Color(0xff99A0A8),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 16, right: 16, top: 200),
//                   child: Row(
//                     children: [
//                       Text(
//                         "Mobil ilovadan ro‘yxatdan o‘tish orqali, siz  ",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontSize: 10,
//                         ),
//                       ),
//                       Text(
//                         "Foydalanuvchi kelishuvi",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(fontSize: 10, color: Colors.blue),
//                       ),
//                       Text(
//                         "va",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(fontSize: 10, color: Colors.blue),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 16, right: 16),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         "Maxfiylik siyosati ",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(fontSize: 10, color: Colors.blue),
//                       ),
//                       Text(
//                         "shartlariga rozi ekanligingizni tasdiqlaysiz.",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontSize: 10,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }
}

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});
//
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   bool isFocused = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               margin: EdgeInsets.only(left: 20, top: 30),
//               width: 24,
//               height: 24,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   color: Color(0xff636C79)),
//               child: Center(
//                   child: Icon(Icons.keyboard_arrow_left_outlined,
//                       color: Colors.white)),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Center(
//                   child: Image.asset(
//                     "assets/images/app_image.png",
//                     height: 64,
//                     width: 64,
//                   ),
//                 ),
//               ],
//             ),
//             Padding(
//               padding: EdgeInsets.only(left: 20, top: 30),
//               child: Text(
//                 "Kirish yoki Ro‘yxatdan o‘tish",
//                 style: GoogleFonts.montserrat(
//                     fontSize: 28, fontWeight: FontWeight.w700),
//               ),
//             ),
//             Row(
//               children: [
//                 Padding(
//                   padding: EdgeInsets.only(left: 20, top: 30),
//                   child: Text(
//                     "To’liq ismingizni kiriting",
//                     style: GoogleFonts.montserrat(
//                         fontSize: 14, fontWeight: FontWeight.w600),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(top: 30),
//                   child: Text(
//                     "*",
//                     style: GoogleFonts.montserrat(
//                         fontSize: 14,
//                         color: Colors.red,
//                         fontWeight: FontWeight.w600),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 20, right: 20),
//               child: TextField(
//                 decoration: InputDecoration(
//                   hintText: "Kirish",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(14),
//                     ),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Color(0xffF1F2F4), // Border rangi
//                     ),
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(14),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             InkWell(
//               onTap: () {
//                 Navigator.pushNamed(context, "mapScreen");
//               },
//               child: Container(
//                 margin: EdgeInsets.only(left: 20, right: 20),
//                 height: 50,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: Colors.black12,
//                     borderRadius: BorderRadiusDirectional.circular(30)),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       "Kodni yuborish",
//                       style: TextStyle(
//                           fontSize: 14,
//                           fontWeight: FontWeight.w500,
//                           color: Color(0xff99A0A8)),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 16, right: 16, top: 200),
//               child: Row(
//                 children: [
//                   Text(
//                     "Mobil ilovadan ro‘yxatdan o‘tish orqali, siz  ",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 10,
//                     ),
//                   ),
//                   Text(
//                     "Foydalanuvchi kelishuvi",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(fontSize: 10, color: Colors.blue),
//                   ),
//                   Text(
//                     "va",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(fontSize: 10, color: Colors.blue),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 16, right: 16),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Maxfiylik siyosati ",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(fontSize: 10, color: Colors.blue),
//                   ),
//                   Text(
//                     "shartlariga rozi ekanligingizni tasdiqlaysiz.",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 10,
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
