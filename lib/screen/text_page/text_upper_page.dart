import 'package:bloc_app/bloc/text_marker/text_marker_cubit.dart';
import 'package:bloc_app/screen/area_page/area_calc_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextUpperPage extends StatelessWidget {
  TextUpperPage({super.key});

  final TextEditingController caseUpperController = TextEditingController();
  String box = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_) => AreaCalcPage()));
          }, icon: const Icon(Icons.published_with_changes))
        ],
        title: const Text('Upper'),
      ),
      body: BlocBuilder<TextMarkerCubit, String>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                  child: const Text(
                    'CaseUpper',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: const BoxDecoration(
                      border:
                          Border.fromBorderSide(BorderSide(color: Colors.black))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(state,style: const TextStyle(fontSize: 20),),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                    controller: caseUpperController,
                    onChanged: (value) {
                      box = value;
                    },
                    cursorHeight: 22,
                    decoration: InputDecoration(
                      hintText: 'Soz kiriting',
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
                ElevatedButton(onPressed: (){
                   BlocProvider.of<TextMarkerCubit>(context).fetchText(caseUpperController.text);
                }, child: const Text('Upper'))
              ],
            ),
          );
        },
      ),
    );
  }
}
