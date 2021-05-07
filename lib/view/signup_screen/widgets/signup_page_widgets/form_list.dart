import 'package:flutter/material.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/KeyboardVisibilityBuilder.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/layout_invisible_keyboard.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/layout_visible_keyboard.dart';

// ignore: must_be_immutable
class FormList extends StatefulWidget {
  var _scaffoldKey;
  FormList(this._scaffoldKey);
  @override
  _FormListState createState() => _FormListState();
}

class _FormListState extends State<FormList> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context, child, isKeyboardVisible) {
        if (isKeyboardVisible) {
          // build layout for visible keyboard
          return layoutVisibleKeyboard(context, _formKey, widget._scaffoldKey);
        } else {
          // build layout for invisible keyboard
          return layoutInvisibleKeyboard(
              context, _formKey, widget._scaffoldKey);
        }
      },
    );
  }
}
