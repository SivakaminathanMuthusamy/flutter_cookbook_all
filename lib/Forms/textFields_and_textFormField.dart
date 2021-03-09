import 'package:flutter/material.dart';

class TextFieldAndTextFormField extends StatefulWidget {
  @override
  _TextFieldAndTextFormFieldState createState() =>
      _TextFieldAndTextFormFieldState();
}

class _TextFieldAndTextFormFieldState extends State<TextFieldAndTextFormField> {
  final _formKey = GlobalKey<FormState>();
  final _textEditingController = TextEditingController();
  FocusNode focusNode;

  void _doSomethingWithValue() {
    print(_textEditingController.text);
  }

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
    _textEditingController.addListener(_doSomethingWithValue);
  }

  @override
  void dispose() {
    focusNode.dispose();
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TF and TFF'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          focusNode.requestFocus();
        },
        child: Icon(Icons.edit),
      ),
      body: Center(
        child: Form(
          child: Column(
            children: [
              TextField(
                autofocus: true,
                onChanged: (value) {
                  print(value);
                },
              ),
              TextFormField(
                key: _formKey,
                controller: _textEditingController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
