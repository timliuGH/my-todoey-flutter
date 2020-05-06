import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen(this.addTaskCallBack);

  final Function addTaskCallBack;

  @override
  Widget build(BuildContext context) {
    String newTaskString;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(35.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.lightBlueAccent,
                  ),
                ),
              ),
              onChanged: (input) {
                newTaskString = input;
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 25.0),
              child: FlatButton(
                textColor: Colors.white,
                color: Colors.lightBlueAccent,
                child: Text('Add'),
                onPressed: () {
                  addTaskCallBack(newTaskString);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
