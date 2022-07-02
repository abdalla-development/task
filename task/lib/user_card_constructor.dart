import 'package:flutter/material.dart';

class UserCardConstructor extends StatelessWidget {
  const UserCardConstructor({
    Key? key,
    required this.username,
    required this.userEmail,
    required this.userPhotoUrl,
  }) : super(key: key);

  final String username;
  final String userEmail;
  final String userPhotoUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color(0xff444273),
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Colors.black54,
                blurRadius: 4,
                offset: Offset(2, 4), // Shadow position
              ),
            ],
          ),
          margin: const EdgeInsets.only(top: 20, left: 90, right: 20),
          height: 130,
          width: 300,
        ),
        Container(
          margin: const EdgeInsets.only(top: 28, left: 35),
          child: ClipOval(
            child: CircleAvatar(
              radius: 60,
              child: Image.network(
                  userPhotoUrl,
                  fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 55, left: 170),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Text(
                username,
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(userEmail,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),),
            ],
          ),
        ),
      ],
    );
  }
}
