import 'package:flutter/material.dart';
import 'package:lmma_box/view/signin_screen/widgets/reset_password_widgets/container_colored.dart';
import 'package:lmma_box/view/signin_screen/widgets/reset_password_widgets/forma_mail.dart';


class MainContainer extends StatelessWidget {
  const MainContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          FormaEmail(),
          SizedBox(
            height: 20,
          ),
          ContainerColored(),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
