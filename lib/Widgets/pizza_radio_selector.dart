import 'package:flutter/material.dart';

class PizzaRadioSelector extends StatefulWidget {
  const PizzaRadioSelector({Key? key, required this.size, required this.rate})
      : super(key: key);
  final String size;
  final String rate;

  @override
  State<PizzaRadioSelector> createState() => _PizzaRadioSelectorState();
}

class _PizzaRadioSelectorState extends State<PizzaRadioSelector> {
  @override
  Widget build(BuildContext context) {
    String level = "Regular";
    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.size),
          Row(
            children: [
              Text(
                widget.rate,
                style: const TextStyle(color: Colors.red),
              ),
              Radio(
                activeColor: Colors.red,
                value: widget.size,
                groupValue: level,
                onChanged: (value) {
                  setState(
                    () {
                      level = value.toString();
                    },
                  );
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
