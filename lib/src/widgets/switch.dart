import 'package:flutter/material.dart';
import '../locale/application.dart';

class SwitchX extends StatefulWidget {
  final String titleLeft;
  final String titleRight;
  final Function(bool) onChanged;

  SwitchX({this.titleLeft, this.titleRight, this.onChanged});

  @override
  _SwitchXState createState() => _SwitchXState();
}

class _SwitchXState extends State<SwitchX> {
  bool isSwitched = true;

  static final List<String> languagesList = application.supportedLanguages;
  static final List<String> languageCodesList =
      application.supportedLanguagesCodes;

  final Map<dynamic, dynamic> languagesMap = {
    languagesList[0]: languageCodesList[0],
    languagesList[1]: languageCodesList[1],
  };

  _onChanged() {
    setState(() {
      isSwitched = !isSwitched;
    });
    widget.onChanged(isSwitched);

    if (isSwitched) {
      application.onLocaleChanged(Locale(languagesMap[languagesList[0]]));
    } else {
      application.onLocaleChanged(Locale(languagesMap[languagesList[1]]));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 72,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
      child: InkWell(
        onTap: _onChanged,
        child: Row(
          children: <Widget>[
            _buildSwitchItem(
                isLeft: true,
                selected: isSwitched,
                title: '${widget.titleLeft}'),
            _buildSwitchItem(
                isLeft: false,
                selected: !isSwitched,
                title: '${widget.titleRight}')
          ],
        ),
      ),
    );
  }

  Widget _buildSwitchItem({isLeft: bool, selected: bool, title: String}) {
    final borderRadius = 20.0;

    return Container(
      width: 36.0,
      height: 32.0,
      decoration: BoxDecoration(
          color: selected ? Colors.white : Colors.black,
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: selected
                  ? [Color(0xFF2F80ED), Color(0xFF3E259B)]
                  : [Colors.white, Colors.white]),
          borderRadius: isLeft
              ? BorderRadius.only(
                  topLeft: Radius.circular(borderRadius),
                  bottomLeft: Radius.circular(borderRadius))
              : BorderRadius.only(
                  topRight: Radius.circular(borderRadius),
                  bottomRight: Radius.circular(borderRadius)),
          boxShadow: [
            BoxShadow(
              color: Color(0x14000000),
              blurRadius: 5.0,
            )
          ]),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              color: selected ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 10),
        ),
      ),
    );
  }
}
