import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_management/ui/screens/sign_in_screen.dart';
import 'package:task_management/ui/utils/app_colors.dart';
import 'package:task_management/ui/widgets/screen_background.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Text(
                  'Join with Us',
                  style: textTheme.displaySmall
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 22),
                _buildSignUpForm(),
                const SizedBox(height: 12),
                Center(
                  child: Column(
                    children: [
                      _buildHaveAccountSection(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }





  Widget _buildSignUpForm() {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            hintText: 'Email',
          ),
        ),
        const SizedBox(height: 22),
        TextFormField(
          decoration: const InputDecoration(hintText: 'First Name'),
        ),const SizedBox(height: 22),
        TextFormField(
          decoration: const InputDecoration(hintText: 'Last Name'),
        ),const SizedBox(height: 22),
        TextFormField(
          keyboardType: TextInputType.phone,
          decoration: const InputDecoration(hintText: 'Mobile Number'),
        ),const SizedBox(height: 22),
        TextFormField(
          decoration: const InputDecoration(hintText: 'Password'),
        ),

        const SizedBox(height: 62),
        ElevatedButton(
          onPressed: _onTapNextButton,
          child: const Icon(Icons.arrow_circle_right_outlined, size: 34),
        ),
      ],
    );
  }


  Widget _buildHaveAccountSection() {
    return RichText(
      text: TextSpan(
        text: "Have an account? ",
        style: const TextStyle(fontWeight: FontWeight.w700, color: Colors.black),
        children: [
          TextSpan(
            text: "Sign in",
            style: const TextStyle(color: Colors.red, fontSize: 17),
            recognizer: TapGestureRecognizer()..onTap = _onTapSignUp,
          ),
        ],
      ),
    );

  }

  void _onTapNextButton(){
    // TODO: implement on tap next button
  }



  void _onTapSignUp(){
    Navigator.pop(context);
  }

}
