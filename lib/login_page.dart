import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _signIn() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      print("ログイン成功: ${userCredential.user?.email}");
      // ログイン成功後の画面遷移などを追加
    } catch (e) {
      print("ログイン失敗: $e");
      // エラーメッセージを表示するなど
    }
  }

  Future<void> _signUp() async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      print("登録成功: ${userCredential.user?.email}");
    } catch (e) {
      print("登録失敗: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ログイン")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: "メールアドレス"),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: "パスワード"),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _signIn,
              child: Text("ログイン"),
            ),
            ElevatedButton(
              onPressed: _signUp,
              child: Text("新規登録"),
            ),
          ],
        ),
      ),
    );
  }
}
