import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';
import 'package:github_users/app/pages/user_create.page.dart';
import 'package:github_users/app/pages/user_detail.page.dart';
import 'package:github_users/app/store/user_list.store.dart';
import 'package:github_users/app/themes/app.theme.dart';
import 'package:github_users/app/widgets/user_item.widget.dart';
import 'package:provider/provider.dart';

class UserListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userListStore = Provider.of<UserListStore>(context);

    return Scaffold(
      appBar: AppBar(
        // title: Text('Github Users'),
        title: Row(
          children: <Widget>[
            Hero(
              tag: 'githubLogoHero',
              child: SvgPicture.asset(
                'assets/images/github-logo.svg',
                height: 24,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: Text('Github Users'),
            ),
            Observer(
              builder: (_) {
                return Container(
                  padding: EdgeInsets.all(4),
                  margin: EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: Text(
                    '${userListStore.totalItems}',
                    style: TextStyle(
                      fontSize: 10,
                      color: secundaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Observer(
          builder: (_) {
            if (userListStore.totalItems > 0) {
              return ListView.builder(
                padding: EdgeInsets.only(bottom: 86),
                itemCount: userListStore.totalItems,
                itemBuilder: (_, index) {
                  var user = userListStore.items[index];
                  return UserItemWidget(
                    user: user,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) {
                          return UserDetailPage(user: user);
                        }),
                      );
                    },
                  );
                },
              );
            }
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(
                  'assets/images/empty-data.svg',
                  height: 160,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: Text(
                    'There\'s nothing here :(',
                    style: TextStyle(
                      fontSize: 16,
                      color: foregroundColor,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => UserCreatePage(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
