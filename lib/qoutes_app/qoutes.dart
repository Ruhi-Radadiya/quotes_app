import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../routes/routes.dart';

class QuotesApp extends StatelessWidget {
  const QuotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      designSize: Size(width, height),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: ThemeData(
        //   fontFamily: Fonts.vollkorn.name,
        // ),
        routes: Routes.myRoutes,
      ),
    );
  }
}
