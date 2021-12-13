import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard( containerColor: Color(0xFF1D1E33),),
                ),
                Expanded(
                  child: ReusableCard(containerColor: Color(0xFF1D1E33),),
                ),
              ],
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(containerColor: Color(0xFF1D1E33),),
              ),
            ],
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(containerColor: Color(0xFF1D1E33),),
                ),
                Expanded(
                  child: ReusableCard(containerColor: Color(0xFF1D1E33),),
                ),
              ],
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.containerColor});

  Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }

}
