import 'package:editable_pin_field/editable_pin_field.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DemoPinCodeEditor()));
            },
            child: Text("My Pin Code Editor"),
          ),
        ),
      ),
    );
  }
}

class DemoPinCodeEditor extends StatefulWidget {
  @override
  _DemoPinCodeEditorState createState() => _DemoPinCodeEditorState();
}

class _DemoPinCodeEditorState extends State<DemoPinCodeEditor> {
  @override
  void dispose() {
    t1.dispose();
    t2.dispose();
    t3.dispose();
    t4.dispose();
    t5.dispose();
    t6.dispose();

    f1.dispose();
    f2.dispose();
    f3.dispose();
    f4.dispose();
    f5.dispose();
    f6.dispose();
    super.dispose();
  }

  var t1 = TextEditingController(text: " ");
  var t2 = TextEditingController(text: " ");
  var t3 = TextEditingController(text: " ");
  var t4 = TextEditingController(text: " ");
  var t5 = TextEditingController(text: " ");
  var t6 = TextEditingController(text: " ");

  FocusNode f1 = FocusNode();
  FocusNode f2 = FocusNode();
  FocusNode f3 = FocusNode();
  FocusNode f4 = FocusNode();
  FocusNode f5 = FocusNode();
  FocusNode f6 = FocusNode();

  var tbKey = 1;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Dummy Editor"),
      ),
      body: new Container(
        width: MediaQuery.of(context).size.width,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(6, (i) {
                      return Container(
                        margin: EdgeInsets.all(12.0),
                        width: 20.0,
                        child: PinCodeTextField(
                            autofocus: i == 0,
                            focusNode: _getFocusNode(i),
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              counterText: "",
                            ),
                            maxLines: 1,
                            maxLength: 2,
                            onChanged: (p) {
                              if (p.length == 2) {
                                _getFocusNode(i).nextFocus();
                              }
                            },
                            controller: _getController(i),
                            onBackspacePressedOnEmptyField: () {
                              if (i == 0) {
                              } else {
                                _getFocusNode(i).previousFocus();
                              }
                            }),
                      );
                    })))
          ],
        ),
      ),
    );
  }

  TextEditingController _getController(int index) {
    switch (index) {
      case 0:
        return t1;
        break;
      case 1:
        return t2;
        break;
      case 2:
        return t3;
        break;
      case 3:
        return t4;
        break;
      case 4:
        return t5;
        break;
      case 5:
        return t6;
        break;
      default:
        return null;
    }
  }

  FocusNode _getFocusNode(int index) {
    switch (index) {
      case 0:
        return f1;
        break;
      case 1:
        return f2;
        break;
      case 2:
        return f3;
        break;
      case 3:
        return f4;
        break;
      case 4:
        return f5;
        break;
      case 5:
        return f6;
        break;
      default:
        return null;
    }
  }
}
