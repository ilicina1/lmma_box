import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_signup_notifier.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/keyboard_visibility_builder.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/layout_invisible_keyboard.dart';
import 'package:keyboard_visibility/keyboard_visibility.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/layout_visible_keyboard.dart';
import 'package:provider/provider.dart';

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
    // KeyboardVisibilityNotification().addNewListener(
    //   onChange: (bool visible) {
    //     print("visible $visible");
    //     // if (visible) {
    //     //   return layoutVisibleKeyboard(context, _formKey, widget._scaffoldKey);
    //     // } else {
    //     //   return layoutInvisibleKeyboard(
    //     //       context, _formKey, widget._scaffoldKey);
    //     // }
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    // var controllers = context.watch<FormSignUpNotifier>();
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
    print("pom je $pom");

    // return layoutInvisibleKeyboard(context, _formKey, widget._scaffoldKey);

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
