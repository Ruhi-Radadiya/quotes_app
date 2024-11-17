import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoutes_app/list/quotes_list.dart';

import '../routes/routes.dart';

Widget quotesGridView({
  required int index,
  required BuildContext context,
}) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(
        context,
        Routes.detail,
        arguments: myQuotes[index],
      );
    },
    child: Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade100,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            myQuotes[index].category,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              // color: Color(0xffb4e6ff),
            ),
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            myQuotes[index].quotes,
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.black,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                myQuotes[index].author,
                style: TextStyle(
                  fontSize: 10.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
