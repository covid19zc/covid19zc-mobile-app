import 'package:covid19zc_app/data/contacts.dart';
import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('COVID-19 Tracker: Zamboanga City'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Card(
                elevation: 5.0,
                margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        child: Text( 'ICON',
                          style: TextStyle(
                            color: Color(0xff44337a),
                          ),
                        ),
                        radius: 30,
                        backgroundColor: Theme.of(context).accentColor
                      ),
                      Container(
                        width: width - 120,
                        child: ListTile(
                          title: Text( 'HOTLINE NUMBERS',
                            style: TextStyle(
                              color: Color(0xffff5a6f),
                              fontSize: 22
                            ),
                          ),
                          subtitle: Text( 'Contact details from Beng Climaco and DOH RO IX Facebook page.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  primary: false,
                  children: cardOfContacts()
                ),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  List<Widget> cardOfContacts() {
    List<Widget> cardOfContacts = List<Widget>();

    for (var i = 0; i < 3; i++) {
      cardOfContacts.add( Card(
        elevation: 5.0,
        margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Theme(
          data: ThemeData(
            accentColor: Color(0xffff5a6f),
          ),
          child: ExpansionTile(
            title: Text(
              i == 0 ? 'Zamboanga Task Force COVID-19' : i == 1 ? 'Zamboanga City Medical Center Teleconsultation' : 'Relief Operations',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xffff5a6f),
              ),
            ),
            children: i == 0 ? expansion0() : i == 1 ? expansion1() : expansion2()
          ),
        ),
      ));
    }

    return cardOfContacts;
  }

  //Zamboanga Task Force COVID-19
  List<Widget> expansion0() {
    List<Widget> expansion0 = List<Widget>();
    List<Widget> r0col0 = List<Widget>();
    List<Widget> r1col0 = List<Widget>();
    List<Widget> r2col0 = List<Widget>();
    List<Widget> r0col1 = List<Widget>();
    List<Widget> r1col1 = List<Widget>();

    r0col0.add( Text('Globe Hotlines',
      style: TextStyle(
        color: Color(0xff44337a),
      ),
    ));
    r1col0.add( Text('Police Operations',
      style: TextStyle(
        color: Color(0xff44337a),
      ),
    ));
    r2col0.add( Text('ZCDRRMO',
      style: TextStyle(
        color: Color(0xff44337a),
      ),
    ));
    r0col1.add( Text('Smart Hotlines',
      style: TextStyle(
        color: Color(0xff44337a),
      ),
    ));
    r1col1.add( Text('Health Lines',
      style: TextStyle(
        color: Color(0xff44337a),
      ),
    ));

    for (var x = 0; x < 3; x++) {
      //This loop will add all contacts to your first column in each row
      for (var i = 0; i < (x == 0 ? (globeHotlines.length + 2) : x == 1 ? (policeOperations.length + 2) : (zcdrrmo.length + 2)); i++) {
        (x ==  0 ? r0col0 : x == 1 ? r1col0 : r2col0).add( i == 0 || i == ((x == 0 ? globeHotlines.length : x == 1 ? policeOperations.length : zcdrrmo.length) + 1) ? Text('') : 
          Text( (x == 0 ? globeHotlines[i - 1] : x == 1 ? policeOperations[i - 1] : zcdrrmo[i - 1]),
          style: TextStyle(
            color: Color(0xff44337a),
            fontWeight: FontWeight.normal
          ),
        ));
      }
      //This loop will add all contacts to your second column in each row
      for (var i = 0; i < ( x == 0 ? (smartHotlines.length + 2) : x == 1 ? (healthLines.length + 2) : 0); i++) {
        (x ==  0 ? r0col1 : r1col1).add( i == 0 || i == ((x == 0 ? smartHotlines.length : healthLines.length) + 1) ? Text('') : 
          Text( (x == 0 ? smartHotlines[i - 1] : healthLines[i - 1]),
          style: TextStyle(
            color: Color(0xff44337a),
            fontWeight: FontWeight.normal
          ),
        ));
      }

      expansion0.add( Row(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                children: (x ==  0 ? r0col0 : x == 1 ? r1col0 : r2col0)
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: (x ==  0 ? r0col1 : x == 1 ? r1col1 : <Widget>[]),
              ),
            ),
          ),
        ],
      ));
    }

    return expansion0;
  }
  //Zamboanga City Medical Center Teleconsultation
  List<Widget> expansion1() {
    List<Widget> expansion1 = List<Widget>();

    for (var x = 0; x < 2; x++) {
      expansion1.add( Column(
        children: <Widget>[
          Text(
            x == 0 ? '8:00AM to 12:00NN (Monday to Saturday)' : '12:00NN to 4:00PM (Monday to Friday)',
            style: TextStyle(
              color: Color(0xff44337a),
            ),
          ),
          x == 0 ? Container() : Text(
            '8:00AM to 12:00NN (Sunday)',
            style: TextStyle(
              color: Color(0xff44337a),
            ),
          ),
          Text(''),
          Column(
            children: <Widget>[
              Text('Smart / Talk N’ Text / Sun',
                style: TextStyle(
                  color: Color(0xff44337a),
                ),
              ),
              Container(
                height: 120,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 10,
                  ),
                  itemCount: x == 0 ? zcmcSmart0.length : zcmcSmart1.length,
                  itemBuilder: (context, position){
                    return Center(
                      child: Text( x == 0 ? zcmcSmart0[position] : zcmcSmart1[position],
                        style: TextStyle(
                          color: Color(0xff44337a),
                          fontWeight: FontWeight.normal
                        ),
                      )
                    );
                  }
                ),
              ),
            ],
          ),
          Text(''),
          Column(
            children: <Widget>[
              Text('Globe / TM',
                style: TextStyle(
                  color: Color(0xff44337a),
                ),
              ),
              Container(
                height: 120,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 10,
                  ),
                  itemCount: x == 0 ? zcmcGlobe0.length : zcmcGlobe1.length,
                  itemBuilder: (context, position){
                    return Center(
                      child: Text( x == 0 ?  zcmcGlobe0[position] : zcmcGlobe1[position],
                        style: TextStyle(
                          color: Color(0xff44337a),
                          fontWeight: FontWeight.normal
                        ),
                      )
                    );
                  }
                ),
              ),
            ],
          ),
          Text(''),
        ],
      ));
    }
    return expansion1;
  }
  //Relief Operations
  List<Widget> expansion2() {
    List<Widget> expansion2 = List<Widget>();
    List<Widget> colChildren = List<Widget>();
    for (var i = 0; i < (reliefOperations.length + 1); i++) {
      colChildren.add(
        Text( i != (reliefOperations.length) ? reliefOperations[i] : '',
          style: TextStyle(
            color: Color(0xff44337a),
            fontWeight: FontWeight.normal
          ),
        )
      );
    }
    expansion2.add( Column(
      children: colChildren
    ));
    return expansion2;
  }
}