import 'package:flutter/material.dart';

class SandModel extends StatelessWidget {
  const SandModel(
      {Key? key,
      required this.countbacon,
      required this.countsalad,
      required this.countfries,
      required this.counttomato,
      required this.countmeat,
      required this.countcheese,
      required this.countonion,
      required this.countsausages})
      : super(key: key);

  final int countbacon,
      countsalad,
      countfries,
      countmeat,
      countonion,
      countsausages,
      counttomato,
      countcheese;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'This is your sandwhich!',
          style: TextStyle(fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: (countfries <= 0 &&
              counttomato <= 0 &&
              countcheese <= 0 &&
              countonion <= 0 &&
              countsausages <= 0 &&
              countmeat <= 0 &&
              countbacon <= 0 &&
              countsalad <= 0)
          ? const Center(
              child: Text(
              'There isn\'t a Sandwhich for you!',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
            ))
          : SingleChildScrollView(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      countbacon == 0 ? const Text('') : Text('${countbacon.toString()} x '),
                      countbacon == 0 ? const Text('') : Image.asset('assets/food/bacon_icon.png')
                    ]),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      countmeat == 0 ? Text('') : Text('${countmeat.toString()} x '),
                      countmeat == 0 ? Text('') : Image.asset('assets/food/meat_icon.png')
                    ]),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      countsausages == 0 ? Text('') : Text('${countsausages.toString()} x '),
                      countsausages == 0 ? Text('') : Image.asset('assets/food/sausages_icon.png')
                    ]),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      countsalad == 0 ? Text('') : Text('${countsalad.toString()} x '),
                      countsalad == 0 ? Text('') : Image.asset('assets/food/salad_icon.png')
                    ]),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      countonion == 0 ? Text('') : Text('${countonion.toString()} x '),
                      countonion == 0 ? Text('') : Image.asset('assets/food/onion_icon.png')
                    ]),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      countcheese == 0 ? Text('') : Text('${countcheese.toString()} x '),
                      countcheese == 0 ? Text('') : Image.asset('assets/food/cheese_icon.png')
                    ]),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      counttomato == 0 ? Text('') : Text('${counttomato.toString()} x '),
                      counttomato == 0 ? Text('') : Image.asset('assets/food/tomato_icon.png')
                    ]),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      countfries == 0 ? Text('') : Text('${countfries.toString()} x '),
                      countfries == 0 ? Text('') : Image.asset('assets/food/fries_icon.png')
                    ]),
                  ],
                ),
              ),
            ),
    );
  }
}
