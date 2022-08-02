import 'package:flutter/cupertino.dart';

class SwitchButton extends StatefulWidget {
  SwitchButton({
    Key? key,
    required this.isSwitch,
  }) : super(key: key);

  bool isSwitch;

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: 64,
      child: FittedBox(
        fit: BoxFit.cover,
        child: CupertinoSwitch(
          activeColor: const Color.fromRGBO(223, 187, 6, 1),
          value: widget.isSwitch,
          onChanged: (value) {
            setState(() {
              widget.isSwitch = value;
            });
          },
        ),
      ),
    );
  }
}
