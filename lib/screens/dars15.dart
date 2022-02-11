import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();
  bool _isSecured = true;
  @override
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Imput Widgets",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  color: Colors.red,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Text("Imail: $_controller"),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _controller,
                          keyboardType: TextInputType.emailAddress,
                          autofocus: false,
                          maxLength: 40,
                          maxLines: 1,
                          //initialValue: "+998",
                          obscureText: _isSecured,
                          decoration: InputDecoration(
                            fillColor: Colors.transparent,
                            filled: true,
                            prefixIcon: Icon(Icons.help, color: Colors.red),
                            suffix: IconButton(
                              icon: const Icon(Icons.remove_red_eye,
                                  color: Colors.cyan),
                              onPressed: () {
                                setState(() {
                                  _isSecured = !_isSecured;
                                });
                              },
                            ),
                            hintText: "Email...",
                            labelText: "Emailni kiriting...",
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.purple),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            labelStyle: const TextStyle(color: Colors.purple),
                          ),
                          onChanged: (text) {
                            print("QIDIRUVDA: $text");
                          },
                          onTap: () {
                            print("TEXTFORMGA BOSILDI!");
                          },
                          validator: (text) {
                            if (!RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(text!)) {
                              return "Email Bo'lishi shart!!";
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              print("MUVAFFAQIYATLI AMALGA OSHIRILDI !");
              print("QIYMAT: ${_controller.text}");
              setState(() {
                
              });
            }
          },
          child: const Icon(Icons.send),
        ),
      );
}
