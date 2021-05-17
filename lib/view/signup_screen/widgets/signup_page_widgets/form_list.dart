import 'package:flutter/material.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/keyboard_visibility_builder.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/layout_invisible_keyboard.dart';
import 'package:keyboard_visibility/keyboard_visibility.dart';
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
  bool pom = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    KeyboardVisibilityNotification().addNewListener(
      onChange: (bool visible) {
        if (visible) {
          print("visible $visible");
          setState(() {
            pom = true;
          });
          return layoutVisibleKeyboard(context, _formKey, widget._scaffoldKey);
        } else {
          setState(() {
            pom = false;
          });
          return layoutInvisibleKeyboard(
              context, _formKey, widget._scaffoldKey);
        }
      },
    );

    return KeyboardVisibilityBuilder(
      builder: (context, child, isKeyboardVisible) {
        if (pom) {
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
