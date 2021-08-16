import 'package:flutter/material.dart';
import 'package:kapitan_bomba_go/components/text_field_container.dart';
import 'package:kapitan_bomba_go/constants/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key, this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
          obscureText: true ,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: login_password_text,

            icon: Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),

            suffixIcon: Icon(Icons.visibility, color: kPrimaryColor),
            border: InputBorder.none,

          ),
        ));
  }
}
