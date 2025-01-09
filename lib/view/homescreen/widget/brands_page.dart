import 'package:flutter/material.dart';

class BrandsPage extends StatelessWidget {
  const BrandsPage({super.key, this.onAddBrandTap});
  final void Function()? onAddBrandTap;

  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollController = ScrollController();
    void scrollRight() {
      _scrollController.animateTo(
        _scrollController.offset +
            320, // Scroll by 320px (card width + spacing)
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }

    void scrollLeft() {
      _scrollController.animateTo(
        _scrollController.offset -
            320, // Scroll by 320px (card width + spacing)
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }

    final List<Map> brands = [
      {
        'BrandName': 'Eastern Condiments',
        '#': '1',
        'Status': '',
        'Action': '',
        'Logo': 'assets/images/eastern.png'
      },
      {
        'BrandName': 'Nirapara',
        '#': '2',
        'Status': '',
        'Action': '',
        'Logo': 'assets/images/nirapara.png'
      },
      {
        'BrandName': 'Kitchen Treasures',
        '#': '3',
        'Status': '',
        'Action': '',
        'Logo': 'assets/images/kitchen.png'
      },
    ];

    // Use MediaQuery to get screen width and height
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Determine screen type based on width
    bool isMobile = screenWidth < 600;
    bool isTablet = screenWidth >= 600 && screenWidth <= 1024;
    bool isDesktop = screenWidth > 1024;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Brands",
              style: TextStyle(
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.w500,
                  fontSize: 22),
            ),
            //button
            GestureDetector(
              onTap: onAddBrandTap,
              child: Container(
                padding: EdgeInsets.only(left: 8),
                height: 40,
                width: isMobile ? 110 : 120,
                child: Center(
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      Text(
                        "Add Brand",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)),
              ),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        //table
        SingleChildScrollView(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          child: DataTable(
            dataRowHeight: 200,
            columns: const [
              DataColumn(
                  label: Text(
                '#',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 18),
              )),
              DataColumn(
                  label: Text(
                'Logo',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 18),
              )),
              DataColumn(
                  label: Text(
                'Brand Name',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 16),
              )),
              DataColumn(
                  label: Text(
                'Status',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 16),
              )),
              DataColumn(
                  label: Text(
                'Action',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 16),
              )),
            ],
            rows: List.generate(
              brands.length,
              (index) {
                final brand = brands[index];
                return DataRow(
                  cells: [
                    DataCell(Text(
                      brand['#']!,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    )),
                    DataCell(Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        height: 150,
                        width: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(brand['Logo']!))),
                      ),
                    )),
                    DataCell(Text(
                      brand['BrandName']!,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    )),
                    DataCell(
                      Container(
                        height: 20,
                        width: isDesktop ? 80 : 110,
                        padding: EdgeInsets.only(left: isDesktop ? 5 : 0),
                        child: Center(
                            child: Text(
                          'Active',
                          style: TextStyle(
                              color: Colors.green.shade700,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        )),
                        decoration: BoxDecoration(
                            color: Colors.green.shade200,
                            border: Border.all(color: Colors.green.shade700),
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                    DataCell(PopupMenuButton<int>(
                      child: Icon(
                        Icons.more_vert,
                        color: Colors.grey.shade600,
                      ),
                      onSelected: (value) {
                        if (value == 1) {
                          //edit
                        } else if (value == 2) {
                          //delete
                        }
                      }, //dropdown selection press
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          value: 1,
                          child: Row(
                            children: [
                              Icon(
                                Icons.edit,
                                size: 18,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Edit",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          value: 2,
                          child: Row(
                            children: [
                              Icon(
                                Icons.delete_outline,
                                size: 18,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Delete",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                      ],
                      offset: Offset(0, 50), // Adjusts the popup position
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )),
                  ],
                );
              },
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        //scroll control buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: scrollLeft,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.lightGreen.shade200,
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 16,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            GestureDetector(
              onTap: scrollRight,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.lightGreen.shade200,
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.black,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
