import 'package:flutter/material.dart';

class Converter extends StatefulWidget {
  const Converter({Key? key}) : super(key: key);

  @override
  _ConverterState createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  List<String> values = ['Euros', 'Dollar', 'Corone'];
  String selected = 'Euros';
  int ris = 0;

  final TextEditingController textEditingControllerValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Here, you can converter your money!',
            style: TextStyle(fontSize: 22),
          ),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(children: [
              TextField(
                decoration: InputDecoration(
                  icon: const Icon(Icons.money),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  hintText: 'Enter a search term',
                ),
                controller: textEditingControllerValue,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        changeValue(selected);
                      });
                    },
                    child: const Text('Click to change')),
                DropdownButton<String>(
                    onChanged: (String? newValue) {
                      setState(() {
                        selected = newValue!;
                      });
                    },
                    value: selected,
                    items: values.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem(
                        child: Text(value),
                        value: value,
                      );
                    }).toList()),
              ]),
              const SizedBox(
                height: 20,
              ),
              Text('This is the result ${ris.toString()}'),
            ])));
  }

  void changeValue(String value) {
    switch (value) {
      case 'Euros':
        {
          ris = int.parse(textEditingControllerValue.text);
          break;
        }
      case 'Dollar':
        {
          ris = int.parse(textEditingControllerValue.text);
          ris *= 6;
          break;
        }
      case 'Corone':
        {
          ris = int.parse(textEditingControllerValue.text);
          ris *= 7;
        }
    }
  }
}
