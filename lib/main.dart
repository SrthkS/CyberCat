import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(initialRoute: "/", routes: {
    "/": (context) => MainMenu(),
    "/home": (context) => Home(),
    "/tripledes": (context) => TripleDES(),
    "/aes": (context) => AES(),
    "/rsa": (context) => RSA(),
    "/blowfish": (context) => Blowfish(),
    "/twofish": (context) => Twofish(),
    "/fpe": (context) => FPE(),
    "/credits": (context) => Credits(),


  }));
}

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 150.0),
            Center(
               child: Image.asset(
                "Assets/CyberCatLogo.png",
                height: 220.0,
                width: 220.0,
        ),
      ),
            Text(
              "CyberCat",
              style: TextStyle(
                fontFamily: "Typewriter",
                fontSize: 36.0,
                letterSpacing: 4.0,
              )
            ),
            SizedBox(height: 30.0),
            InkWell(
              child: Container(
                padding: EdgeInsets.fromLTRB(70.0, 20.0, 70.0, 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Color.fromARGB(255, 76, 46, 5),
              ),
                child: Text(
                  "Learn",
                  style: TextStyle(
                    fontFamily: "Typewriter",
                    color: Colors.white,
                    fontSize: 24.0
                  ))),
              onTap: () {
                Navigator.pushNamed(context, "/home");
              },
            ),
            SizedBox(height: 30.0),
            InkWell(
              child: Container(
                  padding: EdgeInsets.fromLTRB(62.0, 20.0, 62.0, 20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color.fromARGB(255, 76, 46, 5),
                  ),

                  child: Text(
                      "Credits",
                      style: TextStyle(
                          fontFamily: "Typewriter",
                          color: Colors.white,
                          fontSize: 24.0,
                      )
                  )
              ),
              onTap: () {
                Navigator.pushNamed(context, "/credits");
              },
            )
            ]
      )
    )
    );
  }
}

class Credits extends StatefulWidget {
  @override
  _CreditsState createState() => _CreditsState();
}

class _CreditsState extends State<Credits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[100],
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Credits",
          style: TextStyle(
            fontFamily: "Typewriter",
            color: Colors.black,
            fontSize: 24.0,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
        Center(
        child: Image.asset(
          "Assets/CyberCatLogo.png",
          height: 220.0,
          width: 220.0,
        ),
      ),
      Text(
        "CyberCat",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 36.0,
          fontFamily: "Typewriter",
          letterSpacing: 7.0,
        ),
      ),
            Text(
              "A project by Saarthak Sinha",
              style: TextStyle(
                fontFamily: "Typewriter",
                color: Colors.black,
              ),
            ),
            SizedBox(height: 80.0),
            Text(
              "Information from goodcore.co.uk",
              style: TextStyle(
                fontFamily: "Typewriter",
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              "Project submission for RevUC 2022",
              style: TextStyle(
                fontFamily: "Typewriter",
              ),
            ),
            Image.asset(
              "Assets/revuc.png",
              height: 200.0,
              width: 200.0,
            )
        ]
        )
      )
    );
  }
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[100],
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Image.asset(
                  "Assets/CyberCatLogo.png",
                  height: 220.0,
                  width: 220.0,
                ),
              ),
              Text(
                "CyberCat",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 36.0,
                  fontFamily: "Typewriter",
                  letterSpacing: 7.0,
                ),
              ),
              Divider(
                height: 80.0,
                color: Color.fromARGB(255, 76, 46, 5),
                thickness: 5.0,
              ),
              Row(children: <Widget>[
                Expanded(
                  flex: 6,
                  child: InkWell(
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Color.fromARGB(255, 76, 46, 5),
                          ),
                          padding: EdgeInsets.all(40.0),
                          child: Text("Triple DES",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Typewriter",
                                color: Colors.white,
                                letterSpacing: 1.0,
                                fontSize: 12
                              ))),
                      onTap: () {
                        Navigator.pushNamed(context, "/tripledes");
                      }),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex: 6,
                  child: InkWell(
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Color.fromARGB(255, 76, 46, 5),
                          ),
                          padding: EdgeInsets.all(40.0),
                          child: Text("AES",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Typewriter",
                                color: Colors.white,
                                letterSpacing: 2.0,
                              ))),
                      onTap: () {
                        Navigator.pushNamed(context, "/aes");
                      }),
                ),
              ]),
              SizedBox(height: 24.0),
              Row(children: <Widget>[
                Expanded(
                  flex: 6,
                  child: InkWell(
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Color.fromARGB(255, 76, 46, 5),
                          ),
                          padding: EdgeInsets.all(40.0),
                          child: Text("RSA",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Typewriter",
                                color: Colors.white,
                                letterSpacing: 2.0,
                              ))),
                      onTap: () {
                        Navigator.pushNamed(context, "/rsa");
                      }),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex: 6,
                  child: InkWell(
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Color.fromARGB(255, 76, 46, 5),
                          ),
                          padding: EdgeInsets.all(40.0),
                          child: Text("Blowfish",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Typewriter",
                                color: Colors.white,
                                letterSpacing: 1.9,
                              ))),
                      onTap: () {
                        Navigator.pushNamed(context, "/blowfish");
                      }),
                ),
              ]),
              SizedBox(height: 24.0),
              Row(children: <Widget>[
                Expanded(
                  flex: 6,
                  child: InkWell(
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Color.fromARGB(255, 76, 46, 5),
                          ),
                          padding: EdgeInsets.all(40.0),
                          child: Text("Twofish",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Typewriter",
                                color: Colors.white,
                                letterSpacing: 2.0,
                              ))),
                      onTap: () {
                        Navigator.pushNamed(context, "/twofish");
                      }),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex: 6,
                  child: InkWell(
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Color.fromARGB(255, 76, 46, 5),
                          ),
                          padding: EdgeInsets.all(40.0),
                          child: Text("FPE",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Typewriter",
                                color: Colors.white,
                                letterSpacing: 2.0,
                              ))),
                      onTap: () {
                        Navigator.pushNamed(context, "/fpe");
                      }),
                ),
              ]),
            ],
          ),
        ));
  }
}

class TripleDES extends StatefulWidget {
  @override
  _TripleDESState createState() => _TripleDESState();
}

class _TripleDESState extends State<TripleDES> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 76, 46, 5),
        appBar: AppBar(
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
            backgroundColor: Color.fromARGB(255, 76, 30, 0),
            elevation: 0.0,
            title: Text(
                "Triple DES Encryption",
                style: TextStyle(
                    fontFamily: "TypeWriter",
                    fontSize: 22.0,
                ),
            ),
          centerTitle: true,
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 30.0),
              Container(
                width: 800.0,
                height: 250.0,
                child: Image.asset("Assets/TripleDES.png", scale:0.1)
              ),
              Divider(
                color: Color.fromARGB(255, 76, 30, 0),
                thickness: 3.0,
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  "Triple DES uses symmetric encryption, which works on one private key.  It is an advanced version of DES block cipher, which used to have a 56-bit key. However, and as the name suggests, TDES encrypts data using a 56-bit key thrice, making it a 168-bit key. It works in three phases when encrypting and decrypting the data. Since it encrypts thrice, it is much slower as compared to other types of encryption. It also encrypts data in shorter block lengths, which makes it fairly easy to decrypt the data during the entire encryption process.",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.5,
                    fontFamily: "Typewriter",
                    fontSize: 15.0,
                    height: 1.3,

          ),
        ),
              ),
        ],
        )
    );
  }
}

class AES extends StatefulWidget {
  @override
  _AESState createState() => _AESState();
}

class _AESState extends State<AES> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 76, 46, 5),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 76, 30, 0),
          elevation: 0.0,
          title: Text(
            "AES Encryption",
            style: TextStyle(
              fontFamily: "TypeWriter",
              fontSize: 22.0,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                width: 1000.0,
                height: 300.0,
                child: Image.asset("Assets/AES.png", scale:0.1)
            ),
            Divider(
              color: Color.fromARGB(255, 76, 30, 0),
              thickness: 3.0,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                "The Advanced Encryption Standard (AES) is also a symmetric encryption based on the Rijndael algorithm.  It uses block cipher and encrypts one fixed-size block at a time. It works in 128-bit or 192-bit but can be extended up to the 256-bit key length. To encrypt every bit, there are different rounds. For instance, 128-bit will have 10 rounds, 192-bit will have 12 rounds and so on.It is considered one of the best encryption algorithms because it was developed by the US National Institute of Standards and Technology.",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.5,
                  fontFamily: "Typewriter",
                  fontSize: 14.0,
                  height: 1.5,

                ),
              ),
            ),
          ],
        )
    );
  }
}

class RSA extends StatefulWidget {
  @override
  _RSAState createState() => _RSAState();
}

class _RSAState extends State<RSA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 76, 46, 5),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: Color.fromARGB(255, 76, 30, 0),
          elevation: 0.0,
          title: Text(
            "RSA Encryption",
            style: TextStyle(
              fontFamily: "TypeWriter",
              fontSize: 22.0,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30.0),
            Container(
                width: 800.0,
                height: 250.0,
                child: Image.asset("Assets/RSA.png", scale:0.1)
            ),
            Divider(
              color: Color.fromARGB(255, 76, 30, 0),
              thickness: 3.0,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                "Rivest–Shamir–Adleman (RSA) encryption is an asymmetric cipher that functions on two keys: a public key for encryption and a private key for decryption. Considered as the best encryption algorithm, it functions on 1024-bit and can extend up to 2048-bit key length. This means that the larger the key size, the slower the encryption process becomes.",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.5,
                  fontFamily: "Typewriter",
                  fontSize: 18.0,
                  height: 1.4,
                ),
              ),
            ),
          ],
        )
    );
  }
}

class Blowfish extends StatefulWidget {
  @override
  _BlowfishState createState() => _BlowfishState();
}

class _BlowfishState extends State<Blowfish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 76, 46, 5),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: Color.fromARGB(255, 76, 30, 0),
          elevation: 0.0,
          title: Text(
            "Blowfish Encryption",
            style: TextStyle(
              fontFamily: "TypeWriter",
              fontSize: 22.0,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30.0),
            Container(
                width: 800.0,
                height: 300.0,
                child: Image.asset("Assets/Blowfish.png", scale:0.1)
            ),
            Divider(
              color: Color.fromARGB(255, 76, 30, 0),
              thickness: 3.0,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                "Blowfish is a symmetric block cipher, which works on a variable key length from 32 bits to 448 bits. Since it is a block cipher, therefore it divides data or a message into fixed 64-bit blocks when encrypting and decrypting. It was designed to function fast and is available as free public encryption software for any user. It is neither patented nor licensed. Being a public encryption platform, it has been tested multiple times for its speed, efficiency and security. Many organisations claim that no one has successfully hacked it.",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.5,
                  fontFamily: "Typewriter",
                  fontSize: 14.0,
                  height: 1.4,
                ),
              ),
            ),
          ],
        )
    );
  }
}

class Twofish extends StatefulWidget {
  @override
  _TwofishState createState() => _TwofishState();
}

class _TwofishState extends State<Twofish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 76, 46, 5),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: Color.fromARGB(255, 76, 30, 0),
          elevation: 0.0,
          title: Text(
            "Twofish Encryption",
            style: TextStyle(
              fontFamily: "TypeWriter",
              fontSize: 22.0,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30.0),
            Container(
                width: 800.0,
                height: 300.0,
                child: Image.asset("Assets/Twofish.png", scale:0.1)
            ),
            Divider(
              color: Color.fromARGB(255, 76, 30, 0),
              thickness: 3.0,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                "Twofish is an advanced version of Blowfish encryption. It has a block size of 128-bits and can extend to the 256-bit key length. Like other symmetric ciphers, it also breaks data into fixed-length blocks. However, it functions in 16 rounds regardless of how large the data is. Amongst the various types of encryption, this one is flexible. It allows you to choose the encryption process to be quick while the key setup to be slow and vice versa. Since this is license-free and considerable fast, you have full control over it as compared to other types of encryption.",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.5,
                  fontFamily: "Typewriter",
                  fontSize: 14.0,
                  height: 1.3,
                ),
              ),
            ),
          ],
        )
    );
  }
}

class FPE extends StatefulWidget {
  @override
  _FPEState createState() => _FPEState();
}

class _FPEState extends State<FPE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 76, 46, 5),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: Color.fromARGB(255, 76, 30, 0),
          elevation: 0.0,
          title: Text(
            "FPE Encryption",
            style: TextStyle(
              fontFamily: "TypeWriter",
              fontSize: 22.0,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30.0),
            Container(
                width: 800.0,
                height: 300.0,
                child: Image.asset("Assets/FPE.png", scale:0.1)
            ),
            Divider(
              color: Color.fromARGB(255, 76, 30, 0),
              thickness: 3.0,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                "Format Preserving Encryption (FPE) is one of the fairly new encryption methods. It encrypts your data in a similar format. For instance, if you have encrypted your password having 6 letters, 5 numbers and 4 special letters, then your output will be a different combination of a similar format.In other words, if you use this encryption technique, it will preserve the format of your plain text that is after encryption the structure of your data will remain the same.",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.5,
                  fontFamily: "Typewriter",
                  fontSize: 15.0,
                  height: 1.3,
                ),
              ),
            ),
          ],
        )
    );
  }
}

