import 'package:flutter/material.dart';
import 'package:kapitan_bomba_go/components/text_field_container.dart';
import 'package:kapitan_bomba_go/constants/constants.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final String text;
  bool state = true;

  // const RoundedPasswordField({Key key, this.onChanged, this.text}) : super(key: key);
  RoundedPasswordField({Key key, this.onChanged, this.text, this.state = true})
      : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  @override
  Widget build(BuildContext context) {
    // return Container();
    return TextFieldContainer(
        child: TextField(
      obscureText: widget.state,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        hintText: widget.text,
        icon: Icon(
          Icons.lock,
          color: kPrimaryColor,
        ),
        suffixIcon: IconButton(
            icon: Icon(Icons.visibility),
            color: kPrimaryColor,
            onPressed: () => setState(() => widget.state = !widget.state)
            // {
            // },
            ),
        border: InputBorder.none,
      ),
    ));
  }
}
