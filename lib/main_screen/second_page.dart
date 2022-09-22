import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SecondPage extends StatefulWidget {

   @override
  State<StatefulWidget> createState() {
    return _SeconedPageState();
  }
}

class _SeconedPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 48),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.arrow_circle_left_sharp,
                  size: 35,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Order Details",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 115,
                ),
                Icon(
                  Icons.add_alert_rounded,
                  size: 30,
                  color: Colors.green,
                ),
              ],
            ),
            SizedBox(
              height: 45,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Order Information",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Order Number :",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "#8554811",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Visit Date :",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Text(
                        "Sunday : 15/11/2021",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Visit Time :",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 57,
                      ),
                      Text(
                        "9 am to 12 pm",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "contact Number :",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Text(
                        "+966920012317",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "address :",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Text(
                        "Masoura at Dakahila",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Order Information",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.checklist,
                        size: 30,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        "Your order is confiremed",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.checklist,
                        size: 30,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        "The techinican in the way",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.checklist,
                        size: 30,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        "Your Order has been done",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Order Information",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Image.asset(
                    "assets/bulldozer.png",
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(width: 10),
                  Image.asset(
                    "assets/demolishing.png",
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(width: 10),
                  Image.asset(
                    "assets/truck.png",
                    width: 80,
                    height: 80,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        print("problem");
                      });
                    },
                    icon: Icon(
                      Icons.file_present_sharp,
                      size: 30,
                      color: Colors.red,
                    ),
                    label: Text(
                      "Make a complain",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      primary: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        print("cancel");
                      });
                    },
                    icon: Icon(
                      Icons.cancel_outlined,
                      size: 30,
                      color: Colors.red,
                    ),
                    label: Text(
                      "Cancel Order",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      primary: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
