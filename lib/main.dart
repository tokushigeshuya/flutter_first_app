import 'package:flutter/material.dart';

// voidがreturn type mainに関しては特殊なfunctionで実行の必要がない※dartのルールでvoidは値を返してはいけない
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(), // centerウィジェットで中央揃え（ツリー構造になる）
      ), // 足場となるfunction(Scaffold)
    ),
  );
}
// クラスの継承(extends)
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  // 関数の戻り値の型
  Widget build(context){
    return Container(
      decoration: const BoxDecoration(
        // グラデーション
        gradient: LinearGradient(
          // 複数カラーの選択
          colors: [
            Color.fromARGB(255, 211, 203, 227),
            Color.fromRGBO(175, 131, 250, 1),
          ],
          //グラデーションスタート位置
          begin: Alignment.topLeft,
          // 終了位置
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Text('Hello World!',
        style: TextStyle(
          fontSize: 60,
          color: Colors.blueGrey,
        ),
        ),
      ),
    );
  }
}