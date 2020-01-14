import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';
import 'package:github_users/app/services/user.service.dart';
import 'package:github_users/app/store/user_create.store.dart';
import 'package:github_users/app/store/user_list.store.dart';
import 'package:github_users/app/themes/app.theme.dart';
import 'package:github_users/app/widgets/button.widget.dart';
import 'package:provider/provider.dart';

class UserCreatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userListStore = Provider.of<UserListStore>(context);
    final userCreateStore = UserCreateStore();
    final userService = UserService();

    Function addUserEventHandler = () {
      if (userCreateStore.username.isEmpty) {
        userCreateStore.setError('Username is required!');
        return;
      }

      userCreateStore.setLoading(true);
      userCreateStore.setError(null);

      userService.getUser(userCreateStore.username).then((user) {
        userListStore.addUser(user);
        Navigator.pop(context);
      }).catchError((err) {
        userCreateStore.setLoading(false);
        userCreateStore.setError('User not found!');
      });
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Add Github User'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: 24,
              left: 16,
              right: 16,
              bottom: 24,
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 32),
                  child: Hero(
                    tag: 'githubLogoHero',
                    child: SvgPicture.asset(
                      'assets/images/github-logo.svg',
                      height: 160,
                    ),
                  ),
                ),
                Observer(
                  builder: (_) {
                    return TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Github Username',
                        fillColor: foregroundColor,
                        errorText: userCreateStore.error,
                      ),
                      onChanged: userCreateStore.setUsername,
                    );
                  },
                ),
                Observer(
                  builder: (_) {
                    return Padding(
                      padding: EdgeInsets.only(top: 16, bottom: 16),
                      child: ButtonWidget(
                        text: userCreateStore.loading
                            ? 'Loading...'
                            : 'Adicionar',
                        color: primaryColor,
                        disabledColor: secundaryColor,
                        onPressed: userCreateStore.loading
                            ? null
                            : addUserEventHandler,
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
