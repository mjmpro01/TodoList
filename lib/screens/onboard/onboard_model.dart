import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardModel {
  String? img;
  String? text;
  String? desc;
  Color? bg;
  Color? button;

  OnboardModel(
      {required this.img,
      required this.text,
      required this.desc,
      required this.bg,
      required this.button});
}

List<OnboardModel> screens = <OnboardModel>[
  OnboardModel(
      img: 'assets/1.gif',
      text: "Welcome to asking",
      desc: "What's going to happen tomorrow?",
      bg: Colors.white,
      button: Colors.white),
  OnboardModel(
      img: 'assets/2.gif',
      text: "Work happens",
      desc: "Get notified when work happens",
      bg: Colors.white,
      button: Colors.white),
  OnboardModel(
      img: 'assets/3.gif',
      text: "Tasks and assign",
      desc: "Task and assign them to colleagues",
      bg: Colors.white,
      button: Colors.white)
];
