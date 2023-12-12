import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, _) => MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Example of using ScreenUtil'),
      ),
      designSize: const Size(360, 640),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  Widget getTextField({required String hintText}) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.blue, width: 2.w)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.blue, width: 2.w)),
          filled: true,
          fillColor: Colors.amberAccent,
          hintText: hintText,
          hintStyle: TextStyle(
              color: Colors.grey, fontSize: 14.sp, fontWeight: FontWeight.w400),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h)),
    );
  }

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryW = MediaQuery.of(context).size.width;
    final mediaQueryH = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
              height: 52.h,
            ),
            Text(
              'Sign UP to NancyShop',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 4.h,
            ),
            Wrap(
              children: [
                Text(
                  'Already have an account? ',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            widget.getTextField(hintText: 'Name'),
            SizedBox(
              height: 16.h,
            ),
            widget.getTextField(hintText: 'Email'),
            SizedBox(
              height: 16.h,
            ),
            widget.getTextField(hintText: 'Password'),
            SizedBox(
              height: 16.h,
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.yellow),
                      foregroundColor: MaterialStateProperty.all(Colors.blue),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 14.h)),
                      textStyle: MaterialStateProperty.all(TextStyle(
                          color: Colors.blue,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700))),
                  child: const Text(
                    'Create Account',
                  )),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Width :$mediaQueryW Hight :$mediaQueryH',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold),
            )
          ]),
        ),
      ),
    ));
  }
}
