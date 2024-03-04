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
    if(state.response!.success){
      Navigator.pushNamed(
          context,'register');
    }
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
                    buildBackContainer(context),
                    SizedBox(
                      height: 20,
                    ),
                    buildLogoColumn(),
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
                              widget.phoneNumber ?? "9989073227",
                              style: const TextStyle(
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
                    buildCodeVerificationPadding(),
                    SizedBox(
                      height: 10,
                    ),

                    SizedBox(
                      height: 42,
                    ),
                    buildCodeRetryCenter(),
                    SizedBox(
                      height: 20,
                    ),
                    buildButtonVerificationInkWell(),
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 16, right: 16, top: 90),
                      child: Row(
                        children: [
                          Text(
                            "Mobil kiloradian ro‘yxatdan o‘tish orqali, siz  ",
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

  InkWell buildButtonVerificationInkWell() {
    return InkWell(
                    onTap: () {
                      if (controller.text.length == 6) {
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
                      child: const Row(
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
                  );
  }

  Center buildCodeRetryCenter() {
    return Center(
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
                          const Text(
                            "Kodni qayta yuboring",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  );
  }

  Padding buildCodeVerificationPadding() {
    return Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      controller: controller,
                      maxLength: 6,
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
                  );
  }

  Column buildLogoColumn() {
    return Column(
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
                  );
  }

  Container buildBackContainer(BuildContext context) {
    return Container(
                    margin: EdgeInsets.only(left: 20, top: 30),
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff636C79)),
                    child: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: const Center(
                          child: Icon(Icons.keyboard_arrow_left_outlined,
                              color: Colors.white)),
                    ),
                  );
  }

}

