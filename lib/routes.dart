import 'package:flutter/material.dart';
import 'package:gam/screens/admin_home_page/admin_home_page_screen.dart';
import 'package:gam/screens/admin_register/admin_register_screen.dart';
import 'package:gam/screens/institute_details/institute_details_screen.dart';
import 'package:gam/screens/issue_details/issue_details.dart';
import 'package:gam/screens/post_issue/post_issue_screen.dart';
import 'package:gam/screens/signup/signup_screen.dart';
import 'package:gam/screens/institute_register/institute_register_screen.dart';
import 'package:gam/screens/home/home_screen.dart';

final Map<String,WidgetBuilder> routes = {
  SignupScreen.route: (context) => SignupScreen(),
  InstituteRegisterScreen.route: (context) => InstituteRegisterScreen(),
  AdminRegisterScreen.route: (context) => AdminRegisterScreen(),
  HomeScreen.route: (context) => HomeScreen(),
  PostIssueScreen.route: (context) => PostIssueScreen(),
  IssueDetailsScreen.route: (context) => IssueDetailsScreen(),
  AdminHomePageScreen.route: (context) => AdminHomePageScreen(),
  InstituteDetailsScreen.route: (context)=> InstituteDetailsScreen(),
};