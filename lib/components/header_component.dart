import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeComponent extends StatelessWidget {
  final  String? pageNo;
  const HomeComponent({super.key,required this.pageNo});

  @override
  Widget build(BuildContext context) {
    return Row(
    children: [
      Flexible(
        child: Container(
          margin: const EdgeInsets.only(left: 30),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "$pageNo",
                style: const TextStyle(fontSize: 15, color: Colors.grey),
              )
            ],
          ),
        ),
      ),
      Flexible(
        child: Container(
          margin: const EdgeInsets.only(right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "/screen5");
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: CupertinoColors.activeGreen),
                ),
              )
            ],
          ),
        ),
      ),
    ],
    );
  }
}


