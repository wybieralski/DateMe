import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/material.dart';

import './settings_page.dart';
import './page_three.dart';
import './menu.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
//import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;



// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
//import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

class MyProfile extends StatelessWidget {

  Widget _buildBody(context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: [
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    'Łukasz, 23',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text(
                  'WBO & WBA Champion',
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );


    Widget textSection = new Container(
      padding: const EdgeInsets.only(left: 32.0, right: 32.0,top: 5.0, bottom: 20.0),
      child: new Text(
        'Opcjonalny opis Opcjonalny opis Opcjonalny opis Opcjonalny opis Opcjonalny opis Opcjonalny opis Opcjonalny opis Opcjonalny opis ',
        softWrap: true,
      ),
    );

    return new MaterialApp(
      title: 'Flutter Demo',
      home: new Scaffold(
        body: new ListView(
          children: [
            new AspectRatio(
              aspectRatio: 487 / 451,
              child: new Container(
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                      fit: BoxFit.fitWidth,
                      alignment: FractionalOffset.topCenter,
                      image: new NetworkImage('https://firebasestorage.googleapis.com/v0/b/firefire-b30fc.appspot.com/o/31631948_1663984553649692_827987523354492928_n.jpg?alt=media&token=4c3b757f-b17b-48b7-8737-3f9df1bd7b1f'),
                    )
                ),
              ),
            ),
            titleSection,

            textSection,
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: const Text('Your profile'),backgroundColor: Colors.red,
        ),
        body: new ConstrainedBox(
          constraints: const BoxConstraints.expand(),
          child: _buildBody(context),
        ));
  }
}