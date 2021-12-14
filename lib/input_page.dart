import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                    cardChild: IconContent(icon: FontAwesomeIcons.mars, label: 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    containerColor: reusableCardBackgroundColor,
                    cardChild: IconContent(icon: FontAwesomeIcons.venus, label: 'FEMALE'),
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

class IconContent extends StatelessWidget {

  IconContent({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80.0),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.containerColor, this.cardChild});

  final Color containerColor;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
      // child: TextButton.icon(
      //   onPressed: () {},
      //   icon: Text("Next"),
      //   label: CircleAvatar(child: Icon(Icons.chevron_right),),
      // ),
    );
  }
}
