import 'package:flutter/material.dart';
import 'package:machine_test_ayurvedic/presentation/pages/patient_list_page.dart';
import 'package:machine_test_ayurvedic/provider/login_page_provider.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void _showError(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Error'),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: const Text('Okay'),
            onPressed: () {
              Navigator.of(ctx).pop();
            },
          )
        ],
      ),
    );
  }

  Future<void> _login(BuildContext context) async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    bool success = await authProvider.login(
      _usernameController.text,
      _passwordController.text,
    );

    if (success) {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              PatientListPage(token: authProvider.token ?? ""),
        ),
      );
    } else {
      // ignore: use_build_context_synchronously
      _showError(context, 'Login failed. Please check your credentials.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 217,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/login_page_background.png",
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset("assets/logo.png"),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 20, 20, 30),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Login Or Register To Book Your Appointments',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    height: 1.4,
                    color: Color(0xFF404040),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 30),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                      child: const Text(
                        'Email',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xFF404040),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0x1A000000)),
                        borderRadius: BorderRadius.circular(8.5),
                        color: const Color(0x40D9D9D9),
                      ),
                      child: TextFormField(
                        controller: _usernameController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding:
                              EdgeInsets.fromLTRB(14.1, 15.6, 14.1, 15.6),
                          hintText: 'Enter your email',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            color: Color(0x66000000),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(8, 15, 8, 6),
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Password',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xFF404040),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0x1A000000)),
                        borderRadius: BorderRadius.circular(8.5),
                        color: const Color(0x40D9D9D9),
                      ),
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding:
                              EdgeInsets.fromLTRB(14.1, 15.6, 14.1, 15.6),
                          hintText: 'Enter your password',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            color: Color(0x66000000),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Consumer<AuthProvider>(
              builder: (ctx, authProvider, child) {
                return authProvider.isLoading
                    ? const CircularProgressIndicator()
                    : GestureDetector(
                        onTap: () => _login(context),
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 20, 25),
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFF006837),
                            borderRadius: BorderRadius.circular(8.5),
                          ),
                          child: const Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                                letterSpacing: 0.2,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      );
              },
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(24.7, 30, 24.7, 0),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    letterSpacing: 0.1,
                    color: Color(0xFF000000),
                  ),
                  children: [
                    TextSpan(
                      text:
                          'By creating or logging into an account you are agreeing with our ',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                        height: 1.3,
                        letterSpacing: 0.1,
                      ),
                    ),
                    TextSpan(
                      text: 'Terms and Conditions',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        height: 1.3,
                        letterSpacing: 0.1,
                        color: Color(0xFF0028FC),
                      ),
                    ),
                    TextSpan(
                      text: ' ',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        height: 1.3,
                        letterSpacing: 0.1,
                      ),
                    ),
                    TextSpan(
                      text: 'and',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                        height: 1.3,
                        letterSpacing: 0.1,
                      ),
                    ),
                    TextSpan(
                      text: ' ',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        height: 1.3,
                        letterSpacing: 0.1,
                      ),
                    ),
                    TextSpan(
                      text: 'Privacy Policy.',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        height: 1.3,
                        letterSpacing: 0.1,
                        color: Color(0xFF0028FC),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
