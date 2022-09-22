import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OrderDetails extends StatelessWidget {

  static const routeName = "/orderDetails";

  String? type;

  OrderDetails({this.type});

  @override
  Widget build(BuildContext context) {

    getData();

    return Scaffold(
      body: _buildOrderView(context),
    );
  }

  Widget _buildOrderView(BuildContext context) =>
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 32, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(child: Icon(Icons.arrow_back),onTap: (){
                    Navigator.pop(context);
                  },),
                  SizedBox(width: 8),
                  Text("Order Details",
                    style: TextStyle(fontSize: 16,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,),
                  ),
                  const Expanded(flex: 1, child: SizedBox()),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            type == "investor" ? Container(): Card(
              elevation: 1.0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Order Information",
                        style: TextStyle(fontSize: 12,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Text(
                          "Order Num:",
                          style: TextStyle(fontSize: 12,
                            color: Colors.grey),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "#123",
                          style: TextStyle(fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          "Visit Date:",
                          style: TextStyle(fontSize: 12,
                            color: Colors.grey,),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          "10-10-2022",
                          style: TextStyle(fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            SizedBox(height: 16,)
          ],
        ),
      );

  Future getData() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // prefs.remove("type");
    type = prefs.getString("sved");
    print("Saved Data is $type");
  }

}