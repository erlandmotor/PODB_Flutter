import 'package:flutter/material.dart';

import 'package:ppodb_2/page/login_register/welcome_page.dart';
import 'package:ppodb_2/service/providers/profil/profil_provider.dart';
import 'package:ppodb_2/service/providers/wallet/wallet_provider.dart';
import 'package:ppodb_2/shared/shared.dart';
import 'package:ppodb_2/view_model/auth_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthViewModel(),
        ),
          ChangeNotifierProvider(
          create: (context) => BalanceProvider(),
          ),
          ChangeNotifierProvider(
          create: (context) => ProfilProvider(),
          ),
      ],
      child: GestureDetector(
        onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);//???
        if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus!.unfocus();
        }
      },
        child:  MaterialApp(
            
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              backgroundColor: whiteColor,
            ),
            home: WelcomePage(),
          ),
        ),
      );
    
  }
}
