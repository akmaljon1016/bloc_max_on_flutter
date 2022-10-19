import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddToDoScreen extends StatelessWidget {
  const AddToDoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controllerId = TextEditingController();
    TextEditingController controllerTask = TextEditingController();
    TextEditingController controllerDescription = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("BloC Pattern Add To Do"),
      ),
      body: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              _inputField("ID", controllerId),
              _inputField("Task", controllerTask),
              _inputField("Description", controllerDescription),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor),
                child: const Text("Add To Do"),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column _inputField(String field, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$field',
          style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        Container(
          height: 50,
          margin: const EdgeInsets.only(bottom: 10.0),
          width: double.infinity,
          child: TextFormField(
            controller: controller,
          ),
        )
      ],
    );
  }
}
