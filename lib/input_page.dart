import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const reusableCardBackgroundColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

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
                  child: ReusableCard(
                    containerColor: reusableCardBackgroundColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    containerColor: reusableCardBackgroundColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  containerColor: reusableCardBackgroundColor,
                ),
              ),
            ],
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    containerColor: reusableCardBackgroundColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    containerColor: reusableCardBackgroundColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
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

  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      // child: TextButton.icon(
      //   onPressed: () {},
      //   icon: Text("Next"),
      //   label: CircleAvatar(child: Icon(Icons.chevron_right),),
      // ),
    );
  }
}
