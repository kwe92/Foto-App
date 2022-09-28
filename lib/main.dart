import 'package:flutter/material.dart';

int main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
  return 0;
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  // use the controller to see what the user typed
  final _categoryNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'Foto Bay',
            style: TextStyle(),
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          alignment: Alignment.topCenter,
          child: ListView(
            children: <Widget>[
              Image.asset(
                'assets/foto.png',
                height: 200,
                width: 200,
              ),
              ListTile(
                title: TextFormField(
                  controller: _categoryNameController,
                  decoration: InputDecoration(
                    labelText: 'Enter a category',
                    hintText: 'eg: goku, bananas, stars.....',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        // clears the text
                        _categoryNameController.clear();
                      },
                      icon: const Icon(Icons.clear),
                    ),
                  ),
                  keyboardType: TextInputType.name,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
