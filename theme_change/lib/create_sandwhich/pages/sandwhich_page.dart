import 'package:flutter/material.dart';
import 'package:theme_change/create_sandwhich/pages/sandwhich_model.dart';

class SandWichView extends StatefulWidget {
  const SandWichView({Key? key}) : super(key: key);

  @override
  _SandWichViewState createState() => _SandWichViewState();
}

class _SandWichViewState extends State<SandWichView> {
  List<String> sauce = ['Ketchup', 'Mayo', 'Barbecue'];
  String selected = 'Ketchup';

  int countbacon = 0;
  int countsalad = 0;
  int countfries = 0;
  int countmeat = 0;
  int countonion = 0;
  int countsausages = 0;
  int counttomato = 0;
  int countcheese = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => const SandWichView()));
            },
          ),
        ],
        title: const Text(
          'Make your personal SandWhich!',
          style: TextStyle(fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                'You can create your perfect Sandwhich',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${countbacon.toString()} x '),
                  Image.asset('assets/food/bacon_icon.png')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          countbacon++;
                        });
                      },
                      child: const Icon(Icons.add)),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          countbacon--;
                        });
                      },
                      child: const Icon(Icons.remove))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${countmeat.toString()} x '),
                  Image.asset('assets/food/meat_icon.png')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          countmeat++;
                        });
                      },
                      child: const Icon(Icons.add)),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          countmeat--;
                        });
                      },
                      child: const Icon(Icons.remove))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${countsausages.toString()} x '),
                  Image.asset('assets/food/sausages_icon.png')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          countsausages++;
                        });
                      },
                      child: const Icon(Icons.add)),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          countsausages--;
                        });
                      },
                      child: const Icon(Icons.remove))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${countsalad.toString()} x '),
                  Image.asset('assets/food/salad_icon.png')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          countsalad++;
                        });
                      },
                      child: const Icon(Icons.add)),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          countsalad--;
                        });
                      },
                      child: const Icon(Icons.remove))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${countonion.toString()} x '),
                  Image.asset('assets/food/onion_icon.png')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          countonion++;
                        });
                      },
                      child: const Icon(Icons.add)),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          countonion--;
                        });
                      },
                      child: const Icon(Icons.remove))
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${countcheese.toString()} x '),
                  Image.asset('assets/food/cheese_icon.png')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          countcheese++;
                        });
                      },
                      child: const Icon(Icons.add)),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          countcheese--;
                        });
                      },
                      child: const Icon(Icons.remove))
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${counttomato.toString()} x '),
                  Image.asset('assets/food/tomato_icon.png')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          counttomato++;
                        });
                      },
                      child: const Icon(Icons.add)),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          counttomato--;
                        });
                      },
                      child: const Icon(Icons.remove))
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${countfries.toString()} x '),
                  Image.asset('assets/food/fries_icon.png')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          countfries++;
                        });
                      },
                      child: const Icon(Icons.add)),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          countfries--;
                        });
                      },
                      child: const Icon(Icons.remove))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Image.asset('assets/food/sauce_icon.png')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownButton<String>(
                      onChanged: (String? newValue) {
                        setState(() {
                          selected = newValue!;
                        });
                      },
                      value: selected,
                      items: sauce.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem(
                          child: Text(value),
                          value: value,
                        );
                      }).toList()),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SandModel(
                            countbacon: countbacon,
                            countsalad: countsalad,
                            countfries: countfries,
                            counttomato: counttomato,
                            countmeat: countmeat,
                            countcheese: countcheese,
                            countonion: countonion,
                            countsausages: countsausages)));
                  },
                  child: const Text('Click for save!')),
            ],
          ),
        ),
      ),
    );
  }
}
