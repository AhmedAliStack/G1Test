import 'package:flutter/material.dart';
import 'package:g1_project/main_screen/order_details.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

enum InvestorType{company,investor}

class _MainScreenState extends State<MainScreen> {

  bool checked = false;

  InvestorType investorType = InvestorType.investor;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(
                  "assets/images/back-button.png",
                  width: 30,
                  height: 30,
                ),
                Expanded(
                    child: Image.asset(
                  "assets/images/money.png",
                  width: 100,
                  height: 100,
                )),
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            const Text(
              "Create New Account",
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      investorType = InvestorType.investor;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: investorType == InvestorType.investor ? null : Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.0),
                        gradient: investorType == InvestorType.investor ? LinearGradient(
                            colors: [Colors.green, Colors.lightGreenAccent]) : null),
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/investor.png",
                            width: 80,
                            height: 80,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Text(
                              "Investor",
                              style: TextStyle(
                                  color: investorType == InvestorType.investor
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      investorType = InvestorType.company;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: investorType == InvestorType.company ? LinearGradient(
                          colors: [Colors.green, Colors.lightGreenAccent]) : null,
                        borderRadius: BorderRadius.circular(8.0),
                        border: investorType == InvestorType.company ? null : Border.all(color: Colors.grey)),
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/shopping.png",
                            width: 80,
                            height: 80,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Text(
                              "Company",
                              style: TextStyle(
                                  color: investorType == InvestorType.company
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 8.0,),
            Row(
              children: [
                Checkbox(value: checked, onChanged: (value) {
                  setState(() {
                    checked = value!;
                  });
                }),
                Flexible(
                  child: RichText(
                      text: TextSpan(
                          text: "I'm sure that I Read and Understand",
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                          children: [
                        TextSpan(
                            text: " Conditins and Privacy Policy",
                            style: TextStyle(
                                color: Colors.green,
                                decoration: TextDecoration.underline,fontWeight: FontWeight.bold)),
                        TextSpan(
                          text: " and Agreed",
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                        ),
                      ])),
                )
              ],
            ),
            Expanded(
                child: Center(
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(checked ? Colors.blue : Colors.grey)),
                      child: Text("Next"),
                      onPressed: checked ? () {
                        saveData();
                        Navigator.push(context, MaterialPageRoute(builder: (_) => OrderDetails()));
                      } : null,
                    ),
                  ),
                )),
            Center(
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: "Do you Have Account ?",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                            text: " SignIn",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold)),
                      ])),
            ),
            const SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }

  Future saveData() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("saved", investorType.name);

  }
}
