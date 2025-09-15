import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:push_potfolio/constant/constant.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        child: CachedNetworkImage(
          
          imageUrl:
              "https://raw.githubusercontent.com/PushparajManickam/my_assets/main/profile_picture.jpg", // GitHub raw link
          placeholder: (context, url) => Container(
            height: 320,
            width: 320,
            alignment: Alignment.center,
            child: const CircularProgressIndicator(),
          ),
          errorWidget: (context, url, error) => Image.network(
            MyConstant.profileImage,
           height: 320,
            width: 320,
            fit: BoxFit.cover,
          ),
         height: 320,
            width: 320,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
