import 'package:financeworkflow/commonTemplate/CommonTemplate.dart';
import 'package:flutter/material.dart';

import '../commonTemplate/RichTextTemplate.dart';

class WorkFlowSetUp extends StatefulWidget {
  const WorkFlowSetUp({Key? key}) : super(key: key);

  @override
  State<WorkFlowSetUp> createState() => _WorkFlowSetUpState();
}

class _WorkFlowSetUpState extends State<WorkFlowSetUp> {
  final formKey = GlobalKey<FormState>();

  TextEditingController tatValue = TextEditingController();
  TextEditingController workflowCode = TextEditingController();
  TextEditingController workflowDesc = TextEditingController();
  TextEditingController product = TextEditingController();
  TextEditingController module = TextEditingController();
  TextEditingController tatFreq = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var widths = MediaQuery.of(context).size.width * 1; //1440=1
    var heights = MediaQuery.of(context).size.height * 1; //592=1
    return Scaffold(
      appBar: AppBar(title: Text("Anoud")),
      body: ListView(
        padding: EdgeInsets.all(50),
        children: [
          SizedBox(
            width: widths, //1440=1
            height: heights,
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Text("Workflow Product Setup - "),
                      Text(" Add Workflow Product Setup",
                          style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.93, //1440=1
                  height: MediaQuery.of(context).size.height * 0.33, //592=1

                  child: Card(
                    elevation: 08.0,
                    child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                  child: RichTextTemplate(
                                text: 'Workflow Code',
                                controller: workflowCode,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Workflow Code required';
                                  }
                                  return null;
                                },
                              )),
                              TextFieldTemplate(
                                text: 'Workflow Desc',
                                controller: workflowDesc,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: RichTextTemplate(
                                  text: 'Product',
                                  controller: product,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please choose Product required';
                                    }
                                  },
                                ),
                              ),
                              Container(
                                child: RichTextTemplate(
                                  text: 'Module',
                                  controller: module,
                                  validator: (value) {
                                    if (value == null || value.isNotEmpty) {
                                      return 'Please choose Module required';
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: TextFieldTemplate(
                                    text: 'TAT Freq', controller: tatValue),
                              ),
                              Container(
                                child: TextFieldTemplate(
                                  text: 'TAT Value',
                                  controller: tatValue,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 125.0),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue)),
                        child: ElevatedButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.white12),
                            onPressed: () {
                              if (formKey.currentState!.validate()) {}
                            },
                            child: Text(
                              "Save & Close",
                              style: TextStyle(color: Colors.blue),
                            )),
                      ),
                      // Container(
                      //   child: Buttons(
                      //     formKey: formKey,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
