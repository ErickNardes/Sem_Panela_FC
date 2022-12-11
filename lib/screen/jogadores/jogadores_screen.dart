import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class JogadoresScreen extends StatefulWidget {
  JogadoresScreen({super.key});

  State<JogadoresScreen> createState() => _JogadoresScreenState();
}

class _JogadoresScreenState extends State<JogadoresScreen> {
  TextEditingController addController = TextEditingController();

  List<String> listaJog = [];

  void addJogadores() {
    setState(() {
      listaJog.add(addController.text);
    });
  }

  void removeJogadores() {
    setState(() {
      listaJog.remove(listaJog);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Card(
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: addController,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    hintText: 'Adicionar novo jogador',
                    suffixIcon: IconButton(
                      onPressed: () {
                        addJogadores();
                      },
                      icon: Icon(Icons.add),
                      iconSize: 32,
                    ),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: ((contex, index) {
                    return ListTile(
                      title: Text(
                        listaJog[index],
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            removeJogadores();
                          });
                        },
                        icon: const Icon(
                          Icons.delete,
                          size: 32,
                          color: Colors.red,
                        ),
                      ),
                    );
                  }),
                  itemCount: listaJog.length,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
