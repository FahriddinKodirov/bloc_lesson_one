import 'dart:ffi';

import 'package:bloc_app/bloc/calc_cubit/area_calc_cubit.dart';
import 'package:bloc_app/bloc/calc_cubit/area_calc_state.dart';
import 'package:bloc_app/screen/text_page/text_upper_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AreaCalcPage extends StatelessWidget {
   AreaCalcPage({super.key});

  final TextEditingController casetortburchakboyiController = TextEditingController();
  final TextEditingController casetortburchakeniController = TextEditingController();
  final TextEditingController caseuchburchakboyiController = TextEditingController();
  final TextEditingController caseuchburchakeniController = TextEditingController();
  final TextEditingController caseraduisController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 1000,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => TextUpperPage()));
              }, icon: const Icon(Icons.published_with_changes))
            ],
            title: const Text('Area'),
          ),
          body: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.05),
              BlocBuilder<AreaCalcCubit, AreaCalcState>(
                builder:(context, state) {
                  if(state is CirculeState){
                    return Text('The is Area Circule: ${state.circuleResult}',style: TextStyle(fontSize: 24),);
                  } else if(state is FourCornerState){
                    return Text('The is Area Fourcorner: ${state.fourcornerStateResult}',style: TextStyle(fontSize: 24));
                  } else if(state is ThreeCornerState){
                    return Text('The is Area ThreeCorner: ${state.threeCornerResult}',style: TextStyle(fontSize: 24));
                  }
                 return const Text('Initial state');
                },),
                SizedBox(height: MediaQuery.of(context).size.height*0.1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  IconButton(onPressed: (){
                    BlocProvider.of<AreaCalcCubit>(context).circule(int.parse(caseraduisController.text));
                  }, icon: const Icon(Icons.circle_outlined,size: 50,)),
                  IconButton(onPressed: (){
                    BlocProvider.of<AreaCalcCubit>(context).threeCorner(int.parse(caseuchburchakboyiController.text), int.parse(caseuchburchakeniController.text));
                  }, icon: const Icon(Icons.signal_cellular_connected_no_internet_0_bar_sharp,size: 50)),
                  IconButton(onPressed: (){
                    BlocProvider.of<AreaCalcCubit>(context).fourCorner(int.parse(casetortburchakboyiController.text), int.parse(casetortburchakeniController.text));
                  }, icon: const Icon(Icons.check_box_outline_blank_outlined,size: 50)),
                ],),
                SizedBox(height: MediaQuery.of(context).size.height*0.05),
                Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                      child: TextField(
                        controller: casetortburchakboyiController,
                        onChanged: (value) {
                          // box = value;
                        },
                        cursorHeight: 22,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.check_box_outline_blank_outlined,color: Colors.black,),
                          hintText: 'boyi',
                          border: InputBorder.none,
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          contentPadding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.02),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                      child: TextField(
                        controller: casetortburchakeniController,
                        onChanged: (value) {
                          // box = value;
                        },
                        cursorHeight: 22,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.check_box_outline_blank_outlined,color: Colors.black,),
                          hintText: 'eni',
                          border: InputBorder.none,
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          contentPadding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.02),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                      child: TextField(
                        controller: caseuchburchakboyiController,
                        onChanged: (value) {
                          // box = value;
                        },
                        cursorHeight: 22,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.signal_cellular_connected_no_internet_0_bar_sharp,color: Colors.black,),
                          hintText: 'boyi',
                          border: InputBorder.none,
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          contentPadding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.02),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                      child: TextField(
                        controller: caseuchburchakeniController,
                        onChanged: (value) {
                          // box = value;
                        },
                        cursorHeight: 22,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.signal_cellular_connected_no_internet_0_bar_sharp,color: Colors.black,),
                          hintText: 'eni',
                          border: InputBorder.none,
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          contentPadding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.02),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                      child: TextField(
                        controller: caseraduisController,
                        onChanged: (value) {
                          // box = value;
                        },
                        cursorHeight: 22,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.circle_outlined,color: Colors.black,),
                          hintText: 'Diametr',
                          border: InputBorder.none,
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          contentPadding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.02),
                        ),
                      ),
                    ),
            ],),
        ),
      ),
    );
  }
}