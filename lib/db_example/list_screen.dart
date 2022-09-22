import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          SizedBox(width: 200.w,height: 200.h,
            child: Center(child: Text("welcome_to".tr(),)),
          ),
          ElevatedButton(onPressed: (){
            if(context.locale.languageCode == "en"){
              context.setLocale(Locale("ar"));
            }else{
              context.setLocale(Locale("en"));
            }
          }, child: Text("Change_Language".tr())),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return Card(
                margin: EdgeInsets.all(8.w),
                child: Padding(
                  padding: EdgeInsets.all(8.h),
                  child: Text("Title".tr(),style: TextStyle(fontSize: 16.sp),),
                ),
              );
            },itemCount: 10,),
          ),
        ],
      ),
    );
  }
}
