import 'package:flutter/material.dart';

class insert_page extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.headline1;
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Padding(
          padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
          child: ListView(children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: TextField(
//controller: titleController,
                style: textStyle,
                onChanged: (value) {
                  debugPrint('Something changed in Title Text Field');
//updateTitle();
                },
                decoration: InputDecoration(
                    labelText: 'Title',
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      color: Theme.of(context).primaryColorDark,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text(
                        'Save',
                        textScaleFactor: 1.5,
                      ),
                      onPressed: () {
                        debugPrint("Save button clicked");
//_save(context);
//_showAlertDialog("ok","ok",context);
                      },
                    ),
                  ),
                  Container(
                    width: 5.0,
                  ),
                ],
              ),
            )
          ])),
    );
  }
}
