import 'package:flutter/material.dart';
import 'package:second_projet/profil.dart';
import 'package:second_projet/widgets/app_widgets.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  Profil myProfil = Profil();
  late TextEditingController nameControler;
  late TextEditingController surNameControler;
  late TextEditingController secretControler;
  bool code = false;
  bool cinema = false;
  bool lecture = false;
  bool jeux = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameControler = TextEditingController();
    surNameControler = TextEditingController();
    secretControler = TextEditingController();
  }

  @override
  void dispose() {
    nameControler.dispose();
    surNameControler.dispose();
    secretControler.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mon Profil',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
        ),
        backgroundColor: Colors.blue.shade900,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Card(
            elevation: 10,
            color: Colors.blue.shade700,
            child: Container(
              padding: const EdgeInsets.all(11),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  simpleText(myProfil.getName()),
                  // Text(
                  //   myProfil.getName(),
                  //   style: TextStyle(fontSize: ),
                  // ),
                  simpleText(myProfil.getAge()),
                  simpleText(myProfil.getHeight()),
                  simpleText(myProfil.getGenre()),
                  simpleText(myProfil.getHobbies()),
                  simpleText(myProfil.getFavorie()),
                ],
              ),
            ),
          ),
          const Divider(
            color: Colors.blue,
            height: 20,
            thickness: 3,
          ),
          Container(
            margin: const EdgeInsets.all(8),
            child: Column(children: [
              tilte('Modifier mes infos'),
              TextField(
                controller: nameControler,
                decoration: const InputDecoration(
                  hintText: 'Entrez votre nom',
                ),
                onSubmitted: (value) {
                  setState(() {
                    myProfil.name = nameControler.text;
                  });
                },
              ),
              TextField(
                controller: surNameControler,
                decoration: const InputDecoration(
                  hintText: 'Entrez votre prénom',
                ),
                onSubmitted: (value) {
                  setState(() {
                    myProfil.surname = surNameControler.text;
                  });
                },
              ),
              TextField(
                controller: secretControler,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Dites nous un sécret',
                ),
                onSubmitted: (value) {
                  setState(() {
                    myProfil.secret = secretControler.text;
                  });
                },
              ),
              Row(
                children: [
                  const Text(
                    'Votre genre',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  const Spacer(),
                  Switch(
                      activeColor: Colors.blue.shade400,
                      trackOutlineColor:
                          MaterialStatePropertyAll(Colors.blue.shade900),
                      inactiveThumbColor: Colors.blue.shade400,
                      inactiveTrackColor: Colors.blue.shade200,
                      value: myProfil.genre,
                      onChanged: (newGenre) {
                        setState(() {
                          myProfil.genre = newGenre;
                        });
                      }),
                  const Padding(padding: EdgeInsets.all(1)),
                ],
              ),
              Row(
                children: [
                  const Text(
                    'Taille',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  const Spacer(),
                  Slider(
                    value: myProfil.height,
                    min: 0,
                    max: 400,
                    activeColor: Colors.blue.shade400,
                    onChanged: (height) {
                      setState(() {
                        myProfil.height = height.toInt().toDouble();
                      });
                    },
                  ),
                ],
              ),
            ]),
          ),
          const Divider(
            color: Colors.blue,
            height: 20,
            thickness: 3,
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
            child: Column(
              children: [
                tilte('Mes hobbies'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Code',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    Checkbox(
                        activeColor: Colors.blue.shade400,
                        value: code,
                        onChanged: (newValue) {
                          setState(() {
                            code = newValue!;
                            if (code) {
                              myProfil.hobbie.add('Code');
                            } else {
                              myProfil.hobbie.remove('Code');
                            }
                          });
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Cinéma',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    Checkbox(
                        activeColor: Colors.blue.shade400,
                        value: cinema,
                        onChanged: (newValue) {
                          setState(() {
                            cinema = newValue!;
                            if (cinema) {
                              myProfil.hobbie.add('Cinéma');
                            } else {
                              myProfil.hobbie.remove('Cinéma');
                            }
                          });
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Jeux vidéo',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    Checkbox(
                        activeColor: Colors.blue.shade400,
                        value: jeux,
                        onChanged: (newValue) {
                          setState(() {
                            jeux = newValue!;
                            if (jeux) {
                              myProfil.hobbie.add('Jeux vidéo');
                            } else {
                              myProfil.hobbie.remove('Jeux vidéo');
                            }
                          });
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Lecture',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    Checkbox(
                        activeColor: Colors.blue.shade400,
                        value: lecture,
                        onChanged: (newValue) {
                          setState(() {
                            lecture = newValue!;
                            if (lecture) {
                              myProfil.hobbie.add('Lecture');
                            } else {
                              myProfil.hobbie.remove('Lecture');
                            }
                          });
                        })
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.blue,
            height: 20,
            thickness: 3,
          ),
          Container(
            padding: const EdgeInsets.only(left: 10.0, right: 5.0),
            child: Column(
              children: [
                tilte('Mon langage préféré'),
              ],
            ),
          )
        ],
      )),
    );
  }
}
