import 'package:admin_app_gomart/view/homescreen/widget/header_box.dart';
import 'package:admin_app_gomart/view/widget/customtextformfield.dart';
import 'package:flutter/material.dart';

class AddCategoryPage extends StatefulWidget {
  const AddCategoryPage({super.key});

  @override
  State<AddCategoryPage> createState() => _AddCategoryPageState();
}

class _AddCategoryPageState extends State<AddCategoryPage> {
  String _selectedStatus = "Active";
  TextEditingController categoryName = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // Use MediaQuery to get screen width and height
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Determine screen type based on width
    bool isMobile = screenWidth < 600;
    bool isTablet = screenWidth >= 600 && screenWidth <= 1024;
    bool isDesktop = screenWidth > 1024;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
        child: Container(
          child: Column(
            children: [
              //header
              HeaderBox(
                isNavigation: true,
              ),
              //fields
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: isDesktop ? 200 : 15, vertical: 20),
                    child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Add Category",
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Category Name",
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                          SizedBox(
                              width: 450,
                              child: Customtextformfield(
                                  hintText: "", controller: categoryName)),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Category Image",
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          //choose file

                          Container(
                            padding: EdgeInsets.only(left: 12),
                            height: 45,
                            width: 450,
                            child: Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 80,
                                  color: Colors.grey.shade400,
                                  child: Text("Choose File"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("No file chosen")
                              ],
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Category Status",
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Radio<String>(
                                    activeColor: Colors.grey.shade600,
                                    value: "Active",
                                    groupValue: _selectedStatus,
                                    onChanged: (value) {
                                      setState(() {
                                        _selectedStatus = value!;
                                      });
                                    },
                                  ),
                                  Text('Active'),
                                ],
                              ),
                              SizedBox(width: 16),
                              Row(
                                children: [
                                  Radio<String>(
                                    activeColor: Colors.grey.shade600,
                                    value: "Inactive",
                                    groupValue: _selectedStatus,
                                    onChanged: (value) {
                                      setState(() {
                                        _selectedStatus = value!;
                                      });
                                    },
                                  ),
                                  Text('Inactive'),
                                ],
                              ),
                            ],
                          ),

                          SizedBox(
                            height: 15,
                          ),
                          //BUTTON
                          GestureDetector(
                            onTap: () {
                              if (formKey.currentState!.validate()) {
                                categoryName.clear();
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                        content: Text(
                                  "Category Added Successfully !!!",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                )));
                              }
                            },
                            child: Container(
                              height: 50,
                              width: 200,
                              child: Center(
                                child: Text(
                                  "CREATE CATEGORY",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
