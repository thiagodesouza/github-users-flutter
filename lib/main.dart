import 'package:flutter/material.dart';
import 'package:github_users/app/pages/user_list.page.dart';
import 'package:github_users/app/store/user_list.store.dart';
import 'package:github_users/app/themes/app.theme.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: MultiProvider(
        providers: [
          Provider<UserListStore>(create: (_) => UserListStore()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: appTheme(),
          home: UserListPage(),
        ),
      ),
    );
  }
}
