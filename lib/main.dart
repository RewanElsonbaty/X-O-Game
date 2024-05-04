import 'package:flutter/material.dart';
void main() {
  runApp(const XoGame());
}
class XoGame extends StatefulWidget{
  const XoGame({super.key});

  @override
  State<XoGame> createState() => _XoGameState();
}
class _XoGameState extends State<XoGame> {
  List<String>symbols = ['', '', '', '', '', '', '', '', ''];
  bool isX=true;
  String winner='';
  int counter=0;
  int xScore=0;
  int oScore=0;
  bool checkScreen=false;

  String player1Name='';
  String player2Name='';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: checkScreen==true? AppBar(
          backgroundColor: Colors.black,
          leading:IconButton(
              onPressed: (){
                checkScreen==false;
                setState(() {});
              },
              icon: const Icon(Icons.arrow_back_ios_rounded)),
          title: const Text('X O Game'),
        ) : null,
        body: checkScreen==true? Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '$player1Name (X)\n Score : $xScore',
                    style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.red
                    ),

                  ),
                  Text(
                    '$player2Name (O)\n Score : $oScore',
                    style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.red
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(

                    child:GestureDetector(
                      onTap: (){
                        setSymbol(index:0);
                      },

                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            border:Border.all(color: Colors.red ,width: 4)
                        ),
                        width: 200,
                        height: 200,
                        child: Text(
                          symbols[0],
                          style: const TextStyle(
                              fontSize: 90,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child:GestureDetector(
                      onTap: (){
                        setSymbol(index:1);
                      },

                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            border:Border.all(color: Colors.red ,width: 4)
                        ),
                        width: 200,
                        height: 200,
                        child: Text(
                          symbols[1],
                          style: const TextStyle(
                              fontSize: 90,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child:GestureDetector(
                      onTap: (){
                        setSymbol(index:2);
                      },

                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            border:Border.all(color: Colors.red ,width: 4)
                        ),
                        width: 200,
                        height: 200,
                        child: Text(
                          symbols[2],
                          style: const TextStyle(
                              fontSize: 90,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex:2,
              child: Row(
                children: [
                  Expanded(
                    child:GestureDetector(
                      onTap: (){
                        setSymbol(index:3);
                      },

                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            border:Border.all(color: Colors.red ,width: 4)
                        ),
                        width: 200,
                        height: 200,
                        child: Text(
                          symbols[3],
                          style: const TextStyle(
                              fontSize: 90,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child:GestureDetector(
                      onTap: (){
                        setSymbol(index:4);
                      },

                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            border:Border.all(color: Colors.red ,width: 4)
                        ),
                        width: 200,
                        height: 200,
                        child: Text(
                          symbols[4],
                          style: const TextStyle(
                              fontSize: 90,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child:GestureDetector(
                      onTap: (){
                        setSymbol(index:5);
                      },

                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            border:Border.all(color: Colors.red ,width: 4)
                        ),
                        width: 200,
                        height: 200,
                        child: Text(
                          symbols[5],
                          style: const TextStyle(
                              fontSize: 90,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child:GestureDetector(
                      onTap: (){
                        setSymbol(index:6);
                      },

                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            border:Border.all(color: Colors.red ,width: 4)
                        ),
                        width: 200,
                        height: 200,
                        child: Text(
                          symbols[6],
                          style: const TextStyle(
                              fontSize: 90,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child:GestureDetector(
                      onTap: (){
                        setSymbol(index:7);
                      },

                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            border:Border.all(color: Colors.red ,width: 4)
                        ),
                        width: 200,
                        height: 200,
                        child: Text(
                          symbols[7],
                          style: const TextStyle(
                              fontSize: 90,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child:GestureDetector(
                      onTap: (){
                        setSymbol(index:8);
                      },

                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            border:Border.all(color: Colors.red ,width: 4)
                        ),
                        width: 200,
                        height: 200,
                        child: Text(
                          symbols[8],
                          style: const TextStyle(
                              fontSize: 90,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child:InkWell(
                onTap: (){
                  symbols = ['', '', '', '', '', '', '', '', ''];
                  setState(() {});
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      border:Border.all(color: Colors.red ,width: 4)
                  ),
                  child: const Text(
                    'Restart',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24
                    ),
                  ),
                ),
              ),
            ),
          ],
        ) :
        SafeArea(child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value){
                  player1Name=value;
                },
                decoration: InputDecoration(
                  hintText: 'Enter player1 name',
                  labelText: 'player1',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Colors.red,
                          width: 2
                      )
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                onChanged: (data){
                  player2Name=data;
                },
                decoration: InputDecoration(
                  hintText: 'Enter player2 name',
                  labelText: 'player2',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Colors.red,
                          width: 2
                      )
                  ),
                ),

              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: (){
                  checkScreen=true;
                  setState(() {});
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black ,width: 2)
                  ),
                  child: const Text('play',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        ),
      ),
    );
  }
  void setSymbol({required int index}){
    if(symbols[index].isNotEmpty){
      return;
    }
    if (isX == true) {
      symbols[index] = 'x';
    } else {
      symbols[index] = 'o';
    }
    counter++;
    print(counter);
    Winner();
    isX = !isX;
    setState(() {});
  }
  void Winner() {
    // Checking rows
    if (symbols[0] == symbols[1] &&
        symbols[0] == symbols[2] &&
        symbols[0] != '') {
      winner=(symbols[0]);
      print("winner is $winner");
      newGme();
    }
    else if (symbols[3] == symbols[4] &&
        symbols[3] == symbols[5] &&
        symbols[3] != '') {
      winner=(symbols[3]);
      print("winner is $winner");
      newGme();
    }
    else if (symbols[6] == symbols[7] &&
        symbols[6] == symbols[8] &&
        symbols[6] != '') {
      winner=(symbols[6]);
      print("winner is $winner");
      newGme();
    }

    // Checking Column
    else if (symbols[0] == symbols[3] &&
        symbols[0] == symbols[6] &&
        symbols[0] != '') {
      winner=(symbols[0]);
      print("winner is $winner");
      newGme();
    }
    else if (symbols[1] == symbols[4] &&
        symbols[1] == symbols[7] &&
        symbols[1] != '') {
      winner=(symbols[1]);
      print("winner is $winner");
      newGme();
    }
    else if (symbols[2] == symbols[5] &&
        symbols[2] == symbols[8] &&
        symbols[2] != '') {
      winner=(symbols[2]);
      print("winner is $winner");
      newGme();
    }

    // Checking Diagonal
    else if (symbols[0] == symbols[4] &&
        symbols[0] == symbols[8] &&
        symbols[0] != '') {
      winner=(symbols[0]);
      print(" winner is $winner");
      newGme();
    }
    else if (symbols[2] == symbols[4] &&
        symbols[2] == symbols[6] &&
        symbols[2] != '') {
      winner=(symbols[2]);
      print("winner is $winner");
      newGme();
    }
    else if(counter==9){
      newGme();
      print('try again');
    }
  }
  void newGme(){
    if(counter !=9){
      if(isX==true){
        xScore++;
      }else{
        oScore++;
      }
    }
    symbols = ['', '', '', '', '', '', '', '', ''];
    counter=0;
    setState(() {
    });
  }
}