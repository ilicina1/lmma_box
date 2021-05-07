import 'package:flutter/material.dart';
import 'package:lmma_box/view/signin_screen/widgets/reset_password_widgets/buton_reset.dart';

// ignore: must_be_immutable
class ContainerColored extends StatelessWidget {
  var _formKey;
  ContainerColored(this._formKey);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width < 380
          ? MediaQuery.of(context).size.height * 0.05
          : 45,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.3, 1],
          colors: [
            Color(0xFFF58524),
            Color(0XFFF92B7F),
          ],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: SizedBox.expand(
        child: ButtonReset(_formKey),
      ),
    );
  }
}
