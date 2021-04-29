import 'package:flutter/material.dart';
import 'package:lmma_box/view/signinscreens/widgets/buton_reset.dart';

class ContainerColored extends StatelessWidget {
  const ContainerColored({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
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
        child: ButtonReset(),
      ),
    );
  }
}
