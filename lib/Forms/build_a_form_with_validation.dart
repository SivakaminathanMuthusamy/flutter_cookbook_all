import 'package:flutter/material.dart';

class FormWithValidation extends StatefulWidget {
  @override
  _FormWithValidationState createState() => _FormWithValidationState();
}

class _FormWithValidationState extends State<FormWithValidation> {
  final _formKey = GlobalKey<FormState>();
  final _formController = TextEditingController();

  void _printValueOnChanged() {
    print(_formController.text);
  }

  @override
  void initState() {
    super.initState();
    _formController.addListener(_printValueOnChanged);
  }

  @override
  void dispose() {
    _formController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form with validation'),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'This field cannot be empty';
                }
                return null;
              },
              onChanged: (value) {
                print(value);
              },
              decoration: InputDecoration(
                labelText: 'Text Form Field with OnChanged',
              ),
            ),
            TextField(
              controller: _formController,
              decoration: InputDecoration(
                labelText: 'Text Field with TextEditingController',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Yay! The form is valid'),
                    ),
                  );
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
