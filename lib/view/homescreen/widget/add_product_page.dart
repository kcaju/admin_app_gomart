import 'package:admin_app_gomart/view/homescreen/widget/header_box.dart';
import 'package:admin_app_gomart/view/widget/customtextformfield.dart';
import 'package:flutter/material.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({super.key});

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  String _selectedStatus = "Active";
  TextEditingController code = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController category = TextEditingController();
  TextEditingController brand = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController ogPrice = TextEditingController();
  TextEditingController ourprice = TextEditingController();
  TextEditingController tax = TextEditingController();
  TextEditingController amount = TextEditingController();
  TextEditingController gross = TextEditingController();
  TextEditingController productweight = TextEditingController();
  TextEditingController currentstock = TextEditingController();
  TextEditingController openingstock = TextEditingController();

  final List<String> _categories = [
    'Curry powders',
    'fruits',
    'vegetable',
    'fish',
    'dairy products',
    'oil'
  ];
  final List countries = ['Ireland', 'India'];
  final List<String> brands = ['Jacme', 'kitchen treasures', 'amul'];
  final List taxrate = ['6.15', '3.09'];
  final List products = ['oil', 'dairy products'];

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
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
                              "Add Product",
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Product Code",
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            ),
                            SizedBox(
                                width: 450,
                                child: Customtextformfield(
                                    hintText: "", controller: code)),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Category",
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              width: 450,
                              child: TextField(
                                controller: category,
                                readOnly: true,
                                decoration: InputDecoration(
                                  hintText: 'Select Category',
                                  border: OutlineInputBorder(),
                                  suffixIcon: PopupMenuButton<String>(
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      size: isDesktop ? 25 : 30,
                                      color: Colors.black,
                                    ),
                                    onSelected: (value) {
                                      // Handle dropdown selection
                                      category.text = value;
                                      setState(() {});
                                    },
                                    itemBuilder: (context) {
                                      return _categories
                                          .map((category) =>
                                              PopupMenuItem<String>(
                                                value: category,
                                                child: Text(category),
                                              ))
                                          .toList();
                                    },
                                    offset: Offset(
                                        0, 50), // Adjusts the popup position
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            //name
                            Text(
                              "Product Name",
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            ),
                            SizedBox(
                                width: 450,
                                child: Customtextformfield(
                                    hintText: "", controller: name)),
                            SizedBox(
                              height: 10,
                            ),
                            //brand
                            Text(
                              "Brand",
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              width: 450,
                              child: TextField(
                                controller: brand,
                                readOnly: true,
                                decoration: InputDecoration(
                                  hintText: 'Select Brand',
                                  border: OutlineInputBorder(),
                                  suffixIcon: PopupMenuButton<String>(
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      size: isDesktop ? 25 : 30,
                                      color: Colors.black,
                                    ),
                                    onSelected: (value) {
                                      // Handle dropdown selection
                                      brand.text = value;
                                      setState(() {});
                                    },
                                    itemBuilder: (context) {
                                      return brands
                                          .map((brand) => PopupMenuItem<String>(
                                                value: brand,
                                                child: Text(brand),
                                              ))
                                          .toList();
                                    },
                                    offset: Offset(
                                        0, 50), // Adjusts the popup position
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            //description
                            Text(
                              "Description",
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            ),
                            SizedBox(
                                width: 450,
                                child: Customtextformfield(
                                  hintText: "",
                                  controller: description,
                                  isDescription: true,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            //country
                            Text(
                              "Country",
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              width: 450,
                              child: TextField(
                                controller: country,
                                readOnly: true,
                                decoration: InputDecoration(
                                  hintText: 'Select Country',
                                  border: OutlineInputBorder(),
                                  suffixIcon: PopupMenuButton<String>(
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      size: isDesktop ? 25 : 30,
                                      color: Colors.black,
                                    ),
                                    onSelected: (value) {
                                      // Handle dropdown selection
                                      country.text = value;
                                      setState(() {});
                                    },
                                    itemBuilder: (context) {
                                      return countries
                                          .map(
                                              (county) => PopupMenuItem<String>(
                                                    value: county,
                                                    child: Text(county),
                                                  ))
                                          .toList();
                                    },
                                    offset: Offset(
                                        0, 50), // Adjusts the popup position
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            //og price
                            Text(
                              "Original Price",
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            ),
                            SizedBox(
                                width: 450,
                                child: Customtextformfield(
                                  hintText: "",
                                  controller: ogPrice,
                                )),
                            SizedBox(
                              height: 10,
                            ),

                            //our price
                            Text(
                              "Our Price",
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            ),
                            SizedBox(
                                width: 450,
                                child: Customtextformfield(
                                  hintText: "",
                                  controller: ourprice,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            //tax
                            Text(
                              "Tax Rate",
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              width: 450,
                              child: TextField(
                                controller: tax,
                                readOnly: true,
                                decoration: InputDecoration(
                                  hintText: 'Select Rate',
                                  border: OutlineInputBorder(),
                                  suffixIcon: PopupMenuButton<String>(
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      size: isDesktop ? 25 : 30,
                                      color: Colors.black,
                                    ),
                                    onSelected: (value) {
                                      // Handle dropdown selection
                                      tax.text = value;
                                      setState(() {});
                                    },
                                    itemBuilder: (context) {
                                      return taxrate
                                          .map((tax) => PopupMenuItem<String>(
                                                value: tax,
                                                child: Text(tax),
                                              ))
                                          .toList();
                                    },
                                    offset: Offset(
                                        0, 50), // Adjusts the popup position
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            //tax amnt
                            Text(
                              "Tax Amount",
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            ),
                            SizedBox(
                                width: 450,
                                child: Customtextformfield(
                                  hintText: "",
                                  controller: amount,
                                )),
                            SizedBox(
                              height: 10,
                            ),

                            //gross
                            Text(
                              "Gross Total",
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            ),
                            SizedBox(
                                width: 450,
                                child: Customtextformfield(
                                  hintText: "",
                                  controller: gross,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            //product
                            Text(
                              "Weight / Product",
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              width: 450,
                              child: TextField(
                                controller: productweight,
                                readOnly: true,
                                decoration: InputDecoration(
                                  hintText: 'Select',
                                  border: OutlineInputBorder(),
                                  suffixIcon: PopupMenuButton<String>(
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      size: isDesktop ? 25 : 30,
                                      color: Colors.black,
                                    ),
                                    onSelected: (value) {
                                      // Handle dropdown selection
                                      productweight.text = value;
                                      setState(() {});
                                    },
                                    itemBuilder: (context) {
                                      return products
                                          .map((product) =>
                                              PopupMenuItem<String>(
                                                value: product,
                                                child: Text(product),
                                              ))
                                          .toList();
                                    },
                                    offset: Offset(
                                        0, 50), // Adjusts the popup position
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            //openingstock
                            Text(
                              "Opening Stock",
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            ),
                            SizedBox(
                                width: 450,
                                child: Customtextformfield(
                                  hintText: "",
                                  controller: openingstock,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            //currentstock
                            Text(
                              "Current Stock",
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            ),
                            SizedBox(
                                width: 450,
                                child: Customtextformfield(
                                  hintText: "",
                                  controller: currentstock,
                                )),
                            SizedBox(
                              height: 10,
                            ),

                            Text(
                              "Image",
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
                                  code.clear();
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
                                    "CREATE PRODUCT",
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
      ),
    );
  }
}
