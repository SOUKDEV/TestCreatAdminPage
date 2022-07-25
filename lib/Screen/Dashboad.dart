// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, unused_local_variable, curly_braces_in_flow_control_structures

import 'dart:html';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late DateTime pickedDate;
  bool value = true;
  bool valuefirst = false;
  DateTime? get date => null;
  @override
  void initState() {
    super.initState();
    pickedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text('data'),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 30),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "asset/image/soukdev.jpg",
                      width: 30,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'ສຸກສະຫວັນ',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.blue.shade900,
          width: 80,
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                leading: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.dashboard, color: Colors.white),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.shop, color: Colors.white),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.video_call, color: Colors.white),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.people, color: Colors.white),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.white),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            // width: 2000,
            // margin: EdgeInsets.only(right: 600),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 80, right: 1000),
                  child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [Icon(Icons.shop), Text('ອໍເດີ')]),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, right: 650),
                  width: 400,
                  child: TabBar(labelColor: Colors.black, tabs: [
                    Tab(
                      child: Text('ອໍເດີໃໜ່'),
                    ),
                    Tab(
                      child: Text('ອໍເດີໃໜ່'),
                    ),
                    Tab(
                      child: Text('ປະຫວັດການຍົກເລີກ'),
                    )
                  ]),
                ),
                Container(
                  height: 400,
                  child: TabBarView(children: [
                    Container(
                      width: 1500,
                      margin: EdgeInsets.only(
                        left: 100,
                      ),
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                margin: EdgeInsets.only(
                                    left: 50, top: 30, right: 30),
                                child: Text(
                                  'ອໍເດີເຂົ້າໃໜ່ (249)',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 20, left: 50),
                                  height: 40,
                                  width: 300,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText:
                                          'ຄົ້ນຫາ ເລກທີໃບສັ່ງຊື້ / ຊື່ລູກຄ້າ',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  height: 40,
                                  width: 150,
                                  child: TextField(
                                    onTap: _pickDate,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.date_range),
                                      border: OutlineInputBorder(),
                                      labelText: 'DD/YY/MM',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  height: 40,
                                  width: 150,
                                  child: TextField(
                                    onTap: _pickDate,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.date_range),
                                      border: OutlineInputBorder(),
                                      labelText: 'DD/MM/YY',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  child: MaterialButton(
                                    minWidth: 150,
                                    textColor: Colors.white,
                                    height: 50,
                                    color: Colors.red,
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Icon(Icons.print),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text('ດາວໂຫຼດເອັກເຊວ')
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  child: MaterialButton(
                                    minWidth: 130,
                                    textColor: Colors.white,
                                    height: 50,
                                    color: Colors.blue.shade900,
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Icon(Icons.add),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text('ສ້າງອໍເດີ')
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              child: DataTable(
                                  dataTextStyle: TextStyle(fontSize: 11),
                                  columns: [
                                    DataColumn(
                                      label: Container(
                                        width: 20,
                                        child: Checkbox(
                                          checkColor: Colors.greenAccent,
                                          activeColor: Colors.blue,
                                          value: this.valuefirst,
                                          onChanged: (value) {
                                            setState(() {
                                              this.valuefirst = value!;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    DataColumn(
                                        label: Container(
                                      width: 10,
                                      child: Text('#'),
                                    )),
                                    DataColumn(
                                        label: Container(
                                      width: 70,
                                      child: Text(
                                        'ເລກທີໃບສັ່ງຊື້',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                                    DataColumn(
                                        label: Text('ຊື່',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold))),
                                    DataColumn(
                                        label: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text('ປະເພດ',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold)),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text('ທັງໜົດ',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        )
                                      ],
                                    )),
                                    DataColumn(
                                        label: Text('ຈຳນວນ',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold))),
                                    DataColumn(
                                        label: Text('ລວມທັງໜົດ',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold))),
                                    DataColumn(
                                        label: Text('Live ຄັງທີ',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold))),
                                    DataColumn(
                                        label: Text('ວັນທີ',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold))),
                                    DataColumn(
                                        label: Text('ປະເພດຈ່າຍ',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold))),
                                    DataColumn(
                                        label: Text('ການໂອນເງີນ',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold))),
                                    DataColumn(
                                        label: Text('ສະຖານະ',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold))),
                                  ],
                                  rows: [
                                    DataRow(cells: [
                                      DataCell(
                                        Container(
                                          width: 20,
                                          child: Checkbox(
                                            checkColor: Colors.greenAccent,
                                            activeColor: Colors.blue,
                                            value: this.valuefirst,
                                            onChanged: (value) {
                                              setState(() {
                                                this.valuefirst = value!;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      DataCell(Text('01')),
                                      DataCell(Text('ORDER\n-253254')),
                                      DataCell(Text('jame savan')),
                                      DataCell(Text('ໄລຟ')),
                                      DataCell(Text('02')),
                                      DataCell(Text('k 246.000')),
                                      DataCell(Text('01')),
                                      DataCell(Text(
                                        '13/6/2022 17:00',
                                      )),
                                      DataCell(Text('ຈ່າຍສົດ')),
                                      DataCell(MaterialButton(
                                        minWidth: 50,
                                        color: Colors.blue.shade100,
                                        onPressed: () {},
                                        child: Icon(
                                          Icons.attach_money_outlined,
                                          size: 20,
                                        ),
                                      )),
                                      DataCell(MaterialButton(
                                        color: Colors.blue.shade900,
                                        textColor: Colors.white,
                                        onPressed: () {},
                                        child: Text('ອໍເດີເຂົ້າ'),
                                      )),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(
                                        Container(
                                          width: 20,
                                          child: Checkbox(
                                            checkColor: Colors.greenAccent,
                                            activeColor: Colors.blue,
                                            value: this.valuefirst,
                                            onChanged: (value) {
                                              setState(() {
                                                this.valuefirst = value!;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      DataCell(Text('02')),
                                      DataCell(Text('ORDER\n-253254')),
                                      DataCell(Text('Jack')),
                                      DataCell(Text('ໂພສ')),
                                      DataCell(Text('20')),
                                      DataCell(Text('k 246.000')),
                                      DataCell(Text('01')),
                                      DataCell(Text('13/6/2022 17:00')),
                                      DataCell(Text('ໂອນ')),
                                      DataCell(MaterialButton(
                                        minWidth: 50,
                                        color: Colors.blue.shade100,
                                        onPressed: () {},
                                        child: Icon(
                                          Icons.attach_money_outlined,
                                          size: 20,
                                        ),
                                      )),
                                      DataCell(MaterialButton(
                                        color: Colors.blue.shade900,
                                        textColor: Colors.white,
                                        onPressed: () {},
                                        child: Text('ອໍເດີເຂົ້າ'),
                                      )),
                                    ])
                                  ]),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(),
                    Container(),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _pickDate() async {
    DateTime? dateTime = await showDatePicker(
        context: context,
        initialDate: pickedDate,
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 5));
    if (dateTime != null)
      setState(() {
        pickedDate = date!;
      });
  }
}
