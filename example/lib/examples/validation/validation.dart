import 'package:flutter/material.dart';
import 'package:myself/myself.dart';
import 'package:provider/provider.dart';

import '../../data.dart';
import '../../style/text.dart';

class ValidationPage extends StatefulWidget {
  const ValidationPage({super.key});

  @override
  State<ValidationPage> createState() => _ValidationPageState();
}

class _ValidationPageState extends State<ValidationPage> {
  final MyValidation _validator = MyValidation();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ifscController = TextEditingController();
  final TextEditingController _accNumController = TextEditingController();
  final TextEditingController _mobileNumController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _gstController = TextEditingController();
  final TextEditingController _panNumberController = TextEditingController();
  final TextEditingController _aadhaarNumberController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final dataIs = Provider.of<DataIs>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Validation Demo'),
        actions: [
          Switch(
            value: dataIs.themeIsDark,
            onChanged: (value) {
              dataIs.changeTheme(value);
            },
          ),
          Text("Theme\nMode", style: MyText.heading.copyWith(fontSize: 14)),
          const SizedBox(width: 10)
        ],
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Name'),
                validator: _validator.nameValidator,
              ),
              TextFormField(
                controller: _mobileNumController,
                decoration: const InputDecoration(labelText: 'Mobile Number'),
                validator: _validator.mobileNumValidator,
              ),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                validator: _validator.emailValidator,
              ),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
                validator: _validator.passwordValidator,
              ),
              TextFormField(
                controller: _ifscController,
                decoration: const InputDecoration(labelText: 'IFSC'),
                validator: _validator.ifscValidator,
              ),
              TextFormField(
                controller: _accNumController,
                decoration: const InputDecoration(labelText: 'Account Number'),
                validator: _validator.accNumValidator,
              ),
              TextFormField(
                controller: _fullNameController,
                decoration: const InputDecoration(labelText: 'Full Name'),
                validator: _validator.fullNameValidate,
              ),
              TextFormField(
                controller: _gstController,
                decoration: const InputDecoration(labelText: 'GST Number'),
                validator: _validator.gstValidator,
              ),
              TextFormField(
                controller: _panNumberController,
                decoration: const InputDecoration(labelText: 'PAN Number'),
                validator: _validator.panNumberValidator,
              ),
              TextFormField(
                controller: _aadhaarNumberController,
                decoration: const InputDecoration(labelText: 'Aadhaar Number'),
                validator: _validator.aadhaarNumberValidator,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Form is valid, do something
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Form is valid')),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
