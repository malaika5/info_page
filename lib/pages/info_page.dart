import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:info_page/pages/occupation.dart';

import 'gender.dart';
// import 'package:info_page/pages/city.dart';
// import 'country.dart';
import '../widgets/country.dart';

import '../widgets/city.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  InputDecoration getDecoration(String hint) {
    return InputDecoration(
      border: cBorder,
      enabledBorder: cBorder,
      filled: true,
      fillColor: const Color(0xfff5f6fa),
      hintText: hint,
    );
  }

  @override
  State<InfoPage> createState() => _InfoPageState();
}

bool? minorityCheck = false;
bool? disabalityCheck = false;
final cBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(0.r),
  borderSide: const BorderSide(
    width: 0,
    color: Colors.transparent,
  ),
);
Gender? dropdownButtonValue;

final items = [
  DropdownMenuItem(value: Gender(gender: "male"), child: const Text("Male")),
  DropdownMenuItem(
      value: Gender(gender: "female"), child: const Text("Female")),
  DropdownMenuItem(value: Gender(gender: "other"), child: const Text("Other")),
];

Occupation? dropdownButtonValues;

final item = [
  DropdownMenuItem(
      value: Occupation(occupation: "govt"), child: const Text("Govt")),
  DropdownMenuItem(
      value: Occupation(occupation: "private"), child: const Text("Private")),
  DropdownMenuItem(
      value: Occupation(occupation: "other"), child: const Text("Other")),
];
Country? dropdownButonValues;
final dropdownButtonitems = [
  DropdownMenuItem(
    value: Country(name: "Pakistan"),
    child: const Text("Pak"),
  ),
  DropdownMenuItem(
    value: Country(name: "America"),
    child: const Text("USA"),
  ),
  DropdownMenuItem(
    value: Country(name: "Saudi Arabia"),
    child: const Text("UAE"),
  )
];

City? dropdownButonValue;
final itemcityDropdownItemss = [
  DropdownMenuItem(
    value: City(name: 'ISB', id: 1),
    child: const Text("Islamabad"),
  ),
  DropdownMenuItem(
    value: City(name: 'Rwp', id: 2),
    child: const Text("Rawalpindi"),
  ),
  DropdownMenuItem(
    value: City(name: 'LHR', id: 3),
    child: const Text("Lahore"),
  ),
  DropdownMenuItem(
    value: City(name: "KRH", id: 4),
    child: const Text("Karachi"),
  )
];
// final OutlinedBorder? checkboxShape;
bool value = false;
bool valu = false;
Widget getTextField({
  required String hint,
}) {
  return TextField(
    // obscureText: true,
    decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(1.r),
            borderSide: const BorderSide(color: Colors.transparent, width: 0)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.transparent, width: 0.w)),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        filled: true,
        fillColor: const Color(0xfff5f6fa),
        hintText: hint,
        hintStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400)),
  );
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: 0,
          right: 0,
          child: Image.asset(
            'assets/images/abc.jpg',
            height: 153.h,
            width: 222.w,
          ),
        ),
        SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 141.h),
                  Text(
                    "Personal Information",
                    style: TextStyle(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff8B010B),
                    ),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person),
                        hintText: "Name",
                        filled: true,
                        fillColor: const Color(0xfff5f6fa),
                        border: cBorder,
                        enabledBorder: cBorder),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person),
                        hintText: "Short Name",
                        filled: true,
                        fillColor: const Color(0xfff5f6fa),
                        border: cBorder,
                        enabledBorder: cBorder),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.fingerprint),
                        hintText: '34102-1234567-3',
                        filled: true,
                        fillColor: const Color(0xfff5f6fa),
                        border: cBorder,
                        enabledBorder: cBorder),
                  ),

                  SizedBox(
                    height: 22.h,
                  ),
                  DropdownButtonFormField<Gender>(
                    value: dropdownButtonValue,
                    items: items,
                    onChanged: (value) {
                      setState(() {
                        dropdownButtonValue = value;
                        // print("object $dropdownButtonValue!.gender");
                      });
                    },
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1.r),
                            borderSide: const BorderSide(
                                color: Colors.transparent, width: 0)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1.r),
                            borderSide: BorderSide(
                                color: Colors.transparent, width: 0.w)),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 14.h),
                        filled: true,
                        fillColor: const Color(0xfff5f6fa),
                        hintText: "Gender",
                        hintStyle: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w400)),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person),
                        hintText: "Father's Name",
                        filled: true,
                        fillColor: const Color(0xfff5f6fa),
                        border: cBorder,
                        enabledBorder: cBorder),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  // TextFormField(
                  //   decoration: InputDecoration(
                  //       prefixIcon: const Icon(Icons.person_pin_rounded),
                  //       hintText: "Father's occupation",
                  //       filled: true,
                  //       fillColor: const Color(0xfff5f6fa),
                  //       border: cBorder,
                  //       enabledBorder: cBorder),
                  // ),
                  DropdownButtonFormField<Occupation>(
                    value: dropdownButtonValues,
                    items: item,
                    onChanged: (value) {
                      setState(() {
                        dropdownButtonValues = value;
                        // print("object $dropdownButtonValue!.gender");
                      });
                    },
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person_pin_rounded),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1.r),
                            borderSide: const BorderSide(
                                color: Colors.transparent, width: 0)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1.r),
                            borderSide: BorderSide(
                                color: Colors.transparent, width: 0.w)),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 14.h),
                        filled: true,
                        fillColor: const Color(0xfff5f6fa),
                        hintText: "Father's occupation",
                        hintStyle: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w400)),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.calendar_month_outlined),
                        suffixIcon: const Icon(Icons.calendar_month),
                        hintText: "Date of Birth",
                        filled: true,
                        fillColor: const Color(0xfff5f6fa),
                        border: cBorder,
                        enabledBorder: cBorder),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.email),
                        hintText: "Email",
                        filled: true,
                        fillColor: const Color(0xfff5f6fa),
                        border: cBorder,
                        enabledBorder: cBorder),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.phone),
                        hintText: "Contact Number",
                        filled: true,
                        fillColor: const Color(0xfff5f6fa),
                        border: cBorder,
                        enabledBorder: cBorder),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.phone),
                        hintText: "Other Contact Number",
                        filled: true,
                        fillColor: const Color(0xfff5f6fa),
                        border: cBorder,
                        enabledBorder: cBorder),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.phone),
                        hintText: "Guardian Contact Number",
                        filled: true,
                        fillColor: const Color(0xfff5f6fa),
                        border: cBorder,
                        enabledBorder: cBorder),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.location_on),
                        hintText: "Postal Address",
                        filled: true,
                        fillColor: const Color(0xfff5f6fa),
                        border: cBorder,
                        enabledBorder: cBorder),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.location_on),
                        hintText: "Permanent Address",
                        filled: true,
                        fillColor: const Color(0xfff5f6fa),
                        border: cBorder,
                        enabledBorder: cBorder),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  // TextFormField(
                  //   decoration: InputDecoration(
                  //       prefixIcon: const Icon(Icons.location_city),
                  //       hintText: "Domicile Distt",
                  //       filled: true,
                  //       fillColor: const Color(0xfff5f6fa),
                  //       border: cBorder,
                  //       enabledBorder: cBorder),
                  // ),

                  DropdownButtonFormField<City>(
                    value: dropdownButonValue,
                    items: itemcityDropdownItemss,
                    onChanged: (value) {
                      setState(() {
                        dropdownButonValue = value;
                        // print("object $dropdownButtonValue!.id");
                      });
                    },
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.apartment),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1.r),
                            borderSide: const BorderSide(
                                color: Colors.transparent, width: 0)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1.r),
                            borderSide: BorderSide(
                                color: Colors.transparent, width: 0.w)),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 14.h),
                        filled: true,
                        fillColor: const Color(0xfff5f6fa),
                        hintText: " Domicile District",
                        hintStyle: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w500)),
                  ),

                  SizedBox(
                    height: 22.h,
                  ),

                  Container(
                    color: const Color(0xfff5f6fa),
                    child: CheckboxListTile(
                      checkboxShape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(),
                        side: BorderSide(color: Colors.black, width: 1),
                      ),
                      secondary: const Icon(Icons.transfer_within_a_station),
                      dense: true,
                      activeColor: Colors.blueAccent,
                      autofocus: true,
                      value: minorityCheck,
                      onChanged: (minorityCheckValue) {
                        setState(() {
                          minorityCheck = minorityCheckValue;
                        });
                      },
                      title: const Text(
                        "Minority",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            color: Colors.transparent,
                            width: 1,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(1),
                      ),
                    ),
                  ),

                  SizedBox(height: 20.h),

                  SizedBox(
                    height: 22.h,
                  ),

                  Container(
                    color: const Color(0xfff5f6fa),
                    child: CheckboxListTile(
                      checkboxShape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(),
                        side: BorderSide(color: Colors.black, width: 1),
                      ),
                      secondary: const Icon(Icons.person),
                      dense: true,
                      activeColor: Colors.blueAccent,
                      autofocus: true,
                      value: disabalityCheck,
                      onChanged: (disabalityCheckValue) {
                        setState(() {
                          disabalityCheck = disabalityCheckValue;
                        });
                      },
                      title: const Text(
                        "Disabality",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            color: Colors.transparent,
                            width: 1,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(1),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  DropdownButtonFormField<Country>(
                    value: dropdownButonValues,
                    items: dropdownButtonitems,
                    onChanged: (value) {
                      setState(() {
                        dropdownButonValues = value;
                        // print("object $dropdownButtonValue!.id");
                      });
                    },
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.flag_circle_outlined),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1.r),
                            borderSide: const BorderSide(
                                color: Colors.transparent, width: 0)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1.r),
                            borderSide: BorderSide(
                                color: Colors.transparent, width: 0.w)),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 14.h),
                        filled: true,
                        fillColor: const Color(0xfff5f6fa),
                        hintText: " Nationality",
                        hintStyle: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w500)),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.red.shade900,
                          foregroundColor: Colors.white,
                          shape: const BeveledRectangleBorder(
                            
                          )),

                      child: const Text(
                        "Save",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 22,
                  )
                ],
              )),
            ),
          ),
        ),
      ],
    ));
  }
}
