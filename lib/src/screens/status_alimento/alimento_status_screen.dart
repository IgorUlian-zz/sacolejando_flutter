// ignore_for_file: prefer_const_constructors, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:projeto_tcc_teste_sacolejando/src/constants/custom_colors.dart';

// ignore: camel_case_types
class alimentoStatusScreen extends StatefulWidget {
  const alimentoStatusScreen({Key? key}) : super(key: key);

  @override
  State<alimentoStatusScreen> createState() => _alimentoStatusScreenState();
}

// ignore: camel_case_types
class _alimentoStatusScreenState extends State<alimentoStatusScreen> {
  final controllerName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 30,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Cadastro de Status",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      autofocus: true,
                      controller: controllerName,
                      decoration: InputDecoration(
                        labelText: "Status",
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.system_update,
                          color: Colors.white,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: (BorderSide(color: Colors.white))),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: (BorderSide(color: Colors.white))),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Cadastrar",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      CustomColors().getActivePrimaryButton()),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
