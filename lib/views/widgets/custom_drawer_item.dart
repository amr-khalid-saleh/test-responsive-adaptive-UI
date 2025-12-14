import 'package:flutter/material.dart';
import 'package:test_responsive_and_adaptive_ui/data/models/drawer_item_model.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(drawerItemModel.icon),
      title: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            drawerItemModel.text,
            style: TextStyle(
              fontSize: getResponsiveFontSize(context, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}

//Scale Factor
//responsive font size
//(min , max) -> value for font size

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;

  if (width < 576) {
    return width / 375;
  } else if (width < 992) {
    return width / 675;
  } else {
    return width / 1100;
  }
}
