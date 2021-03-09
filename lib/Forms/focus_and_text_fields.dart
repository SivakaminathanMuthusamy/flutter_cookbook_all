import 'package:flutter/material.dart';

class FocusTextField extends StatefulWidget {
  @override
  _FocusTextFieldState createState() => _FocusTextFieldState();
}

class _FocusTextFieldState extends State<FocusTextField> {
  final _formKey = GlobalKey<FormState>();
  final _textEditingController = TextEditingController();
  FocusNode _focusNode;

  void _printOnChangedText() {
    print(_textEditingController.text);
  }

  @override
  void initState() {
    super.initState();
    _textEditingController.addListener(_printOnChangedText);
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Focus Text Field'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _focusNode.requestFocus();
        },
        child: Icon(Icons.edit),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextField(
              focusNode: _focusNode,
              onChanged: (value) {
                print(value);
              },
              decoration: InputDecoration(
                labelText: 'TextField with focusNode',
              ),
            ),
            TextFormField(
              autofocus: true,
              validator: (value) {
                if (value.isEmpty) {
                  return 'This field cannot be empty';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'TextFormField with autofocus',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
