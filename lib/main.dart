import 'package:flutter/material.dart';

// voidがreturn type mainに関しては特殊なfunctionで実行の必要がない
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ), // centerウィジェットで中央揃え（ツリー構造になる）
      ), // 足場となるfunction(Scaffold)
    ),
  );
}
