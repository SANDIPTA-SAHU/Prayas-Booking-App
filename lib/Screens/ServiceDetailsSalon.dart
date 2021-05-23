import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freelance_booking_app/Widgets/ServiceDetailsFacilityGrid.dart';

class ServiceDetailsSalon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(68),
          child: AppBar(
            title: Text('Salons \nServices'),
            actions: [
              Padding(
                  padding: EdgeInsets.only(right: 5, top: 5),
                  child: Image.asset('assets/Ellipse3.png'))
            ],
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            height: 70,
            child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    prefixIcon: new Icon(Icons.search),
                    contentPadding: EdgeInsets.all(10),
                    hintText: 'Personal Number',
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.circular(6)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
                        borderRadius: BorderRadius.circular(6))),
                onChanged: (val) {}),
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.28,
              child: Image.asset('assets/Rectangle67.png')),
          Container(
            height: MediaQuery.of(context).size.height * 0.26,
            width: MediaQuery.of(context).size.width * 0.61,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFF0F2735),
                  ),
                  margin: const EdgeInsets.fromLTRB(40, 20, 40, 10),
                  padding: const EdgeInsets.all(4),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          CupertinoIcons.location,
                          color: Colors.green,
                          size: 20,
                        ),
                        Text('Sec 19, near library',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 15,
                                fontWeight: FontWeight.w400))
                      ]),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      CupertinoIcons.scissors,
                      size: 24,
                    ),
                    Text('Perfect Salon',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 24)),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.14,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff5D5FEF)),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text('\u{2B50}   4.4',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12)),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text('Facility1')),
                      Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text('Facility2')),
                      Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text('Facility3')),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Icon(
                              CupertinoIcons.time,
                              color: Color(0xff5D5FEF),
                              size: 20,
                            ),
                            Text(
                              'Visiting hour',
                              style: TextStyle(fontSize: 12),
                            )
                          ]),
                          Text('10:00 AM - 5:00PM',
                              style: TextStyle(
                                  color: Color(0xff00A676), fontSize: 12))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Icon(
                              CupertinoIcons.sun_min,
                              color: Color(0xff5D5FEF),
                              size: 23,
                            ),
                            Text(
                              'Days',
                              style: TextStyle(fontSize: 12),
                            )
                          ]),
                          Text('MON-THU',
                              style: TextStyle(
                                  color: Color(0xff00A676), fontSize: 12))
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.37,
                    child: TextButton(
                      child: Text(
                        'Get Catalogue',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xff02CF96),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.37,
                    child: TextButton(
                      child: Text(
                        'Book an appointment',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xff5D5FEF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      onPressed: () {},
                    ),
                  ),
                ]),
          ),
          ServiceDetailsFacilityGrid(),
          Center(
            child: Text('See Gallery'),
          )
        ],
      ),
    );
  }
}
