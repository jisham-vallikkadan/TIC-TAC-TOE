import 'package:flutter/material.dart';

import 'answer.dart';

class tictac extends StatefulWidget {
  const tictac({Key? key}) : super(key: key);

  @override
  State<tictac> createState() => _tictacState();
}

class _tictacState extends State<tictac> {
  List<String> tictac=['o','o','o','o','o'];
  bool status=true;

   String result='';
  TextEditingController A1 = TextEditingController();
  TextEditingController B2 = TextEditingController();
  TextEditingController B3 = TextEditingController();
  TextEditingController C2 = TextEditingController();
  TextEditingController C3 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text('Tic Tac Toe')),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  children: [
                    Container(
                      color: A1.text==''?Colors.grey:A1.text=='x'?Colors.red:A1.text=='o'?Colors.black:Colors.grey,
                      child: Center(
                        child: TextField(
                          style: TextStyle(color: Colors.white,fontSize: 25),
                          controller: A1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 50),
                          ),
                        ),
                      ),
                    ),
                    card(),
                    card(),
                    card(),
                    Container(
                      color: B2.text==''?Colors.grey:B2.text=='x'?Colors.red:B2.text=='o'?Colors.black:Colors.grey,
                      child: Center(
                        child: TextField(  style: TextStyle(color: Colors.white,fontSize: 25),

                          controller: B2,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 50),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: B3.text==''?Colors.grey:B3.text=='x'?Colors.red:B3.text=='o'?Colors.black:Colors.grey,
                      child: Center(
                        child: TextField(
                          style: TextStyle(color: Colors.white,fontSize: 25),
                          controller: B3,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 50),
                          ),
                        ),
                      ),
                    ),
                    card(),
                    Container(
                      color: C2.text==''?Colors.grey:C2.text=='x'?Colors.red:C2.text=='o'?Colors.black:Colors.grey,
                      child: Center(
                        child: TextField(
                          style: TextStyle(color: Colors.white,fontSize: 25),
                          controller: C2,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 50),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: C3.text==''?Colors.grey:C3.text=='x'?Colors.red:C3.text=='o'?Colors.black:Colors.grey,
                      child: Center(
                        child: TextField(
                          style: TextStyle(color: Colors.white,fontSize: 25),
                          controller: C3,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 50),
                          ),
                        ),
                      ),
                    ),
                  ]),

               ElevatedButton(onPressed: (){
                 setState(() {
                    // if(A1.text=='x'||B3.text=="x"||C2.text=='x'||C3.text=='x'||B2.text=='x'){
                    //   print('game over');
                    // }
                   if(A1.text=='x'|| B2.text=='x'){
                     print('game over 1');
                     print(A1.text);
                     print(C2.text);
                     status=false;
                   }else if(B3.text=='x' && C3.text=='x'){
                     print('game over 2');
                     status=false;
                   }else if(C2.text=='x' && C3.text=='X'){
                     print('game over 3');
                     status=false;
                   }
                    else{
                      if(A1.text==tictac[0]&&B2.text==tictac[1]&&C3.text==tictac[4]){
                        print('success');
                        status=true;
                      }
                    }
                 });
               }, child: Text(
                A1.text.isEmpty?'check':status==true?'sucess':'game over',
               )),

              SizedBox(
                height: 100,
              ),
              Container(
                width: double.infinity,
                height: 60,
                color: Colors.red,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      // Answer.Input.add(A1.text);
                              A1.text='';
                              B2.text="";
                              B3.text="";
                              C2.text="";
                              C3.text="";
                              result='';
                    });
                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget card() {
  return Container(
    color: Colors.red,
    child: Center(
        child: Text(
      'X',
      style: TextStyle(color: Colors.white, fontSize: 25),
    )),
  );
}
