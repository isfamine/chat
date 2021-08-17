//@dart=2.3
import 'package:flutter/material.dart';
//import 'package:app_chat/composition_root.dart';
import 'package:app_chat/theme.dart';
import 'package:app_chat/ui/pages/onboarding/onboarding.dart';

void main() {
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await CompositionRoot.configure();
  runApp(MyApp());
  // final firstPage = CompositionRoot.start();
  // runApp(MyApp(firstPage));
}

class MyApp extends StatelessWidget {
  // final Widget firstPage;

  // MyApp(this.firstPage);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(context),
      darkTheme: darkTheme(context),
       home: Onboarding(),
      // home: CompositionRoot.composeOnboardingUi(),
      // home: CompositionRoot.composeHomeUi(),
      // home: firstPage,
    );
  }
}
