import 'package:flutter/material.dart';
import 'package:mezuri/views/utils/theme.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return UIUtils.GradientBackground(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Image.asset('assets/images/icon/mezuri.png'),
                ),
                Text(
                  'Welcome to Mezuri new-version',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16),
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}
