import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class SlotBooking extends StatefulWidget {
  @override
  _SlotBookingState createState() => _SlotBookingState();
}

class _SlotBookingState extends State<SlotBooking> {
  int slt = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF0F2735),
          title: Row(
            children: [
              Text('Slot Booking',
                  style: TextStyle(fontSize: 18.0, letterSpacing: 1.0)),
            ],
          )),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/Rectangle67.png',
                      height: 110,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(10.0, 70.0, 0.0, 0.0),
                      child: Row(
                        children: [
                          Icon(
                            CupertinoIcons.scissors,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Perfect Salon',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0),
                          ),
                        ],
                      )),
                ],
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'This week',
                  style: TextStyle(
                      color: Colors.indigo[400], fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right,
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                color: Color(0xFFFAFAFA),
                child: TableCalendar(
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                  calendarFormat: CalendarFormat.week,
                  calendarStyle: CalendarStyle(
                      selectedDecoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Color(0xff5D5FEF)),
                      ),
                      todayDecoration: BoxDecoration(
                        color: Color(0xffF2F2F2),
                        border: Border.all(color: Color(0xff5D5FEF)),
                      ),
                      todayTextStyle: TextStyle(color: Colors.black),
                      withinRangeDecoration:
                          BoxDecoration(color: Colors.white)),
                  headerStyle: HeaderStyle(formatButtonVisible: false),
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                      elevation: 5.0,
                      color: Color(0xFF0F2735),
                      child: Container(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Text('Slots Available : ',
                                  style: TextStyle(
                                      color: Colors.white, letterSpacing: 1.0)),
                              Text('$slt',
                                  style: TextStyle(
                                      color: Colors.tealAccent[700],
                                      letterSpacing: 1.0))
                            ],
                          ))),
                ],
              ),
              SizedBox(height: 5.0),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'Services provided',
                  style: TextStyle(
                      color: Colors.indigo[400], fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right,
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                      color: Color(0xFFFAFAFC),
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(25.0, 20, 25, 20),
                          child: Text('Haircut',
                              style: TextStyle(fontWeight: FontWeight.bold)))),
                  Card(
                      color: Color(0xFFFAFAFC),
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(25.0, 20, 25, 20),
                          child: Text('Shaving',
                              style: TextStyle(fontWeight: FontWeight.bold)))),
                  Card(
                      color: Color(0xFFFAFAFC),
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(25.0, 20, 25, 20),
                          child: Text('Facial',
                              style: TextStyle(fontWeight: FontWeight.bold)))),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                      color: Color(0xFFFAFAFC),
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(25.0, 20, 25, 20),
                          child: Text('Haircut',
                              style: TextStyle(fontWeight: FontWeight.bold)))),
                  Card(
                      color: Color(0xFFFAFAFC),
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(25.0, 20, 25, 20),
                          child: Text('Shaving',
                              style: TextStyle(fontWeight: FontWeight.bold)))),
                  Card(
                      color: Color(0xFFFAFAFC),
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(25.0, 20, 25, 20),
                          child: Text('Facial',
                              style: TextStyle(fontWeight: FontWeight.bold)))),
                ],
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Add Services',
                      style: TextStyle(
                          color: Colors.indigo[400],
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    TextButton(
                      child: Text(
                        'Check Catalogue',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xff02CF96),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Card(color: Colors.white, child: SizedBox(height: 40.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        'Proceed',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff02CF96),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    onPressed: () {},
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}