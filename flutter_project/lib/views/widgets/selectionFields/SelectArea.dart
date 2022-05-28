import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectArea extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SelectAreaState();
  }
}

class _SelectAreaState extends State<SelectArea> {
  String _txt = "";
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      child: createTextField(),
    );
  }

  Widget createTextField() {
    if (_txt.isEmpty) {
      return TextField(
          readOnly: true,
          decoration: InputDecoration(
              filled: true,
              hintText: "Select Area",
              fillColor: Colors.white,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none),
              prefixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return SimpleDialog(
                            children: [
                              SimpleDialogOption(
                                onPressed: () {
                                  Navigator.pop(context);
                                  _setField("Hi");
                                },
                                child: const Text("Tal Al Hawa"),
                              ),
                              SimpleDialogOption(
                                onPressed: () {
                                  Navigator.pop(context, "");
                                },
                                child: const Text("Al Remal"),
                              ),
                              SimpleDialogOption(
                                onPressed: () {
                                  Navigator.pop(context, "");
                                },
                                child: const Text("Al Naser"),
                              ),
                              SimpleDialogOption(
                                onPressed: () {
                                  Navigator.pop(context, "");
                                },
                                child: const Text("Al Senaa"),
                              ),
                              SimpleDialogOption(
                                onPressed: () {
                                  Navigator.pop(context, "");
                                },
                                child: const Text("Al Thaltheeny"),
                              ),
                              SimpleDialogOption(
                                onPressed: () {
                                  Navigator.pop(context, "");
                                },
                                child: const Text("Omar Al Mokhtar"),
                              )
                            ],
                          );
                        },
                      );
                    });
                  },
                  icon: Icon(
                    Icons.location_on_outlined,
                    color: Colors.blue[900],
                  ))));
    } else {
      return TextField(
          readOnly: true,
          decoration: InputDecoration(
              labelText: _txt,
              filled: true,
              hintText: "Select Area",
              fillColor: Colors.white,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none),
              prefixIcon: IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return SimpleDialog(
                          children: [
                            SimpleDialogOption(
                              onPressed: () {
                                Navigator.pop(context, "");
                                _setField("test");
                                myController.text = "Tal Al Hawa";
                              },
                              child: const Text("Tal Al Hawa"),
                            ),
                            SimpleDialogOption(
                              onPressed: () {
                                Navigator.pop(context, "");
                              },
                              child: const Text("Al Remal"),
                            ),
                            SimpleDialogOption(
                              onPressed: () {
                                Navigator.pop(context, "");
                              },
                              child: const Text("Al Naser"),
                            ),
                            SimpleDialogOption(
                              onPressed: () {
                                Navigator.pop(context, "");
                              },
                              child: const Text("Al Senaa"),
                            ),
                            SimpleDialogOption(
                              onPressed: () {
                                Navigator.pop(context, "");
                              },
                              child: const Text("Al Thaltheeny"),
                            ),
                            SimpleDialogOption(
                              onPressed: () {
                                Navigator.pop(context, "");
                              },
                              child: const Text("Omar Al Mokhtar"),
                            )
                          ],
                        );
                      },
                    );
                  },
                  icon: Icon(
                    Icons.location_on_outlined,
                    color: Colors.blue[900],
                  ))));
    }
  }

  void _setField(String t) {
    setState(() {
      _txt = t;
    });
  }
}
