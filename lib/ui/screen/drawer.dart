import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassvault/main.dart';
import 'package:glassvault/ui/screen/settings.dart';
import 'package:glassvault/ui/screen/wallets.dart';
import 'package:gradient_ui_widgets/gradient_ui_widgets.dart';

class VaultDrawer extends StatefulWidget {
  const VaultDrawer({Key? key}) : super(key: key);

  @override
  _VaultDrawerState createState() => _VaultDrawerState();
}

class _VaultDrawerState extends State<VaultDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: ListView(
        children: [
          Container(
            height: 200,
            child: Stack(
              children: [
                Center(
                  child: Text("Something"),
                ),
                Padding(
                  padding: EdgeInsets.all(7),
                  child: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                )
              ],
            ),
          ),
          ListTile(
              leading: GradientIcon(
                Icons.account_balance_wallet_rounded,
                gradient: RadialGradient(
                    colors: Grad.sol,
                    radius: 1.787,
                    center: Alignment.topRight),
              ),
              title: Text("Wallets"),
              onTap: () {
                Navigator.pop(context);
                Get.to(() => WalletsScreen(),
                    transition: Transition.leftToRightWithFade);
              }),
          ListTile(
              leading: GradientIcon(
                Icons.settings_rounded,
                gradient: RadialGradient(
                    colors: Grad.sol, radius: 0.387, center: Alignment.center),
              ),
              title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
                Get.to(() => SettingsScreen(),
                    transition: Transition.leftToRightWithFade);
              })
        ],
      ),
    );
  }
}