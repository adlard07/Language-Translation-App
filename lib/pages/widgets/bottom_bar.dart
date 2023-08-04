import 'package:applicationiator/pages/profile.dart';
import 'package:applicationiator/pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

//home button
class HomeButton extends StatefulWidget {
  const HomeButton({Key? key}) : super(key: key);

  @override
  State<HomeButton> createState() => HomeeButtonState();
}

class HomeeButtonState extends State<HomeButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeButton()),
        );
      },
      icon: Icon(Icons.home),
      color: Colors.white,
      iconSize: 30,
    );
  }
}

//proflie button
class ProfileButton extends StatefulWidget {
  const ProfileButton({Key? key}) : super(key: key);

  @override
  State<ProfileButton> createState() => _ProfileButtonState();
}

class _ProfileButtonState extends State<ProfileButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Profile()),
        );
      },
      icon: Icon(Icons.person),
      color: Colors.white,
      iconSize: 30,
    );
  }
}

//settings button
class SettingsBotton extends StatefulWidget {
  const SettingsBotton({Key? key}) : super(key: key);

  @override
  State<SettingsBotton> createState() => _SettingsBottonState();
}

class _SettingsBottonState extends State<SettingsBotton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Settings()),
        );
      },
      icon: Icon(Icons.settings),
      color: Colors.white,
      iconSize: 30,
    );
  }
}
