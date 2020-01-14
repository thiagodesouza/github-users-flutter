import 'package:flutter/material.dart';
import 'package:github_users/app/models/user.model.dart';
import 'package:github_users/app/store/user_list.store.dart';
import 'package:github_users/app/themes/app.theme.dart';
import 'package:github_users/app/widgets/button.widget.dart';
import 'package:github_users/app/widgets/counter.widget.dart';
import 'package:github_users/app/widgets/user_avatar.widget.dart';
import 'package:provider/provider.dart';

class UserDetailPage extends StatelessWidget {
  final UserModel user;

  UserDetailPage({this.user});

  @override
  Widget build(BuildContext context) {
    final userListStore = Provider.of<UserListStore>(context);

    Function removeUserEventHandler = () {
      userListStore.removeUser(user);
      Navigator.pop(context);
    };

    return Scaffold(
      appBar: AppBar(
        title: Text(user.name != null ? user.name : user.login),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: 32,
              left: 16,
              right: 16,
              bottom: 32,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: '${user.login}AvatarHero',
                  child: UserAvatarWidget(
                    src: user.avatarUrl,
                    width: 120,
                    height: 120,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 2),
                  child: Text(
                    user.name != null ? user.name : user.login,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: foregroundColor,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(2),
                  child: Text(
                    '@${user.login}',
                    style: TextStyle(
                      fontSize: 18,
                      color: primaryColor,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2, bottom: 24),
                  child: Text(
                    user.location != null ? user.location : '-',
                    style: TextStyle(
                      fontSize: 14,
                      color: foregroundColor,
                    ),
                  ),
                ),
                Container(
                  color: secundaryColor,
                  margin: EdgeInsets.only(
                    bottom: 16,
                  ),
                  padding: EdgeInsets.all(24),
                  width: double.infinity,
                  // height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CounterWidget(
                        label: 'Following',
                        value: user.following,
                      ),
                      CounterWidget(
                        label: 'Repositories',
                        value: user.publicRepos,
                      ),
                      CounterWidget(
                        label: 'Followers',
                        value: user.followers,
                      ),
                    ],
                  ),
                ),
                ButtonWidget(
                  text: 'Remove',
                  color: dangerColor,
                  onPressed: removeUserEventHandler,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
