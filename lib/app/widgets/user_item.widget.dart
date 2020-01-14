import 'package:flutter/material.dart';
import 'package:github_users/app/models/user.model.dart';
import 'package:github_users/app/themes/app.theme.dart';

import 'user_avatar.widget.dart';

class UserItemWidget extends StatelessWidget {
  final UserModel user;
  final Function onTap;

  UserItemWidget({
    @required this.user,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(left: 8, right: 8, top: 8),
        width: MediaQuery.of(context).size.width - 16,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
          color: secundaryColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: '${user.login}AvatarHero',
              child: UserAvatarWidget(
                src: user.avatarUrl,
                width: 64,
                height: 64,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - (128),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        user.name != null ? user.name : user.login,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 4, bottom: 4),
                        child: Text(
                          '@${user.login}',
                          style: TextStyle(
                            fontSize: 12,
                            color: primaryColor,
                          ),
                        ),
                      ),
                      Text(
                        user.location != null ? user.location : '-',
                        softWrap: true,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: primaryColor,
                    size: 28,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
