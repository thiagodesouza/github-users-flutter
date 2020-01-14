import 'package:flutter/widgets.dart';
import 'package:github_users/app/themes/app.theme.dart';

class UserAvatarWidget extends StatelessWidget {
  final String src;
  final double width;
  final double height;

  UserAvatarWidget({
    @required this.src,
    @required this.width,
    @required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(src),
        ),
      ),
    );
  }
}
