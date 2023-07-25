import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/community/post_tile/profile_avatar.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Profile_avatar(image_url: 'assets/images/girl_profile.png'),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Wutt Hmone Oo',
              style: TextStyle(
                  color: Color.fromRGBO(51, 33, 62, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              '@wutthnone503',
              style: TextStyle(
                  color: Color.fromRGBO(77, 77, 77, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
            )
          ],
        )
      ]),
    );
  }
}
// background: rgba(77, 77, 77, 1);
