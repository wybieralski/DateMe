
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

import './pages/menu.dart';
import './pages/settings_page.dart';
import './pages/page_three.dart';

void main() => runApp(new MaterialApp(
  home: new HomePage(),
));

