import 'package:auth_test/features/auth/login/view/page/LoginPage.dart';
import 'package:flutter/material.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
           
          },
          child: const Text("confirm"),
        ),
        
       Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
               Text(
                "Have account?",
                style: TextStyle(color: Colors.blue),
              ),
            
            TextButton(
              onPressed: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()), 
                );
              },
              child: const Text("Login"),
            ),
          ],
        ),
      ],
    );
  }
}
