import 'package:admin_app_gomart/view/homescreen/widget/custom_drawer.dart';
import 'package:admin_app_gomart/view/homescreen/widget/dashboard_page.dart';
import 'package:admin_app_gomart/view/homescreen/widget/header_box.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDashbord = true;
  bool isCountry = false;
  bool isBrands = false;
  bool isCategory = false;
  bool isProducts = false;
  bool isPendingorders = false;
  bool isCancelledorders = false;
  bool isOutforDelivery = false;
  bool isCompletedOrders = false;
  bool isDetails = false;
  bool isLogInfo = false;
  bool isDeals = false;
  bool isPoster1 = false;
  bool isPoster2 = false;
  bool isPoster3 = false;
  bool isPoster4 = false;
  bool isPoster5 = false;
  bool isPoster6 = false;
  bool isPoster7 = false;
  bool isProductfeedback = false;
  bool isSitefeedback = false;
  bool isEnquiry = false;
  bool isSubscription = false;

  //dropdown flags
  bool isChangePassword = false;
  bool isViewSite = false;

  // GlobalKey for Scaffold to control the Drawer
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // Open the drawer when the app starts
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scaffoldKey.currentState?.openDrawer();
    });
  }

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
      key: _scaffoldKey,
      drawer: CustomDrawer(
        onDashboardTap: () {
          setState(() {
            isDashbord = true;
            isCountry = false;
            isBrands = false;
            isCategory = false;
            isProducts = false;
            isPendingorders = false;
            isCancelledorders = false;
            isOutforDelivery = false;
            isCompletedOrders = false;
            isDetails = false;
            isLogInfo = false;
            isDeals = false;
            isPoster1 = false;
            isPoster2 = false;
            isPoster3 = false;
            isPoster4 = false;
            isPoster5 = false;
            isPoster6 = false;
            isPoster7 = false;
            isProductfeedback = false;
            isSitefeedback = false;
            isEnquiry = false;
            isSubscription = false;
            //dropdwn flags
            isChangePassword = false;
            isViewSite = false;
          });
          Navigator.pop(context);
        },
        onProductsTap: () {
          setState(() {
            isDashbord = false;
            isCountry = false;
            isBrands = false;
            isCategory = false;
            isProducts = true;
            isPendingorders = false;
            isCancelledorders = false;
            isOutforDelivery = false;
            isCompletedOrders = false;
            isDetails = false;
            isLogInfo = false;
            isDeals = false;
            isPoster1 = false;
            isPoster2 = false;
            isPoster3 = false;
            isPoster4 = false;
            isPoster5 = false;
            isPoster6 = false;
            isPoster7 = false;
            isProductfeedback = false;
            isSitefeedback = false;
            isEnquiry = false;
            isSubscription = false;
            //dropdwn flags
            isChangePassword = false;
            isViewSite = false;
          });
          Navigator.pop(context);
        },
        onCountryTap: () {
          setState(() {
            isDashbord = false;
            isCountry = true;
            isBrands = false;
            isCategory = false;
            isProducts = false;
            isPendingorders = false;
            isCancelledorders = false;
            isOutforDelivery = false;
            isCompletedOrders = false;
            isDetails = false;
            isLogInfo = false;
            isDeals = false;
            isPoster1 = false;
            isPoster2 = false;
            isPoster3 = false;
            isPoster4 = false;
            isPoster5 = false;
            isPoster6 = false;
            isPoster7 = false;
            isProductfeedback = false;
            isSitefeedback = false;
            isEnquiry = false;
            isSubscription = false;
            //dropdwn flags
            isChangePassword = false;
            isViewSite = false;
          });
          Navigator.pop(context);
        },
        onBrandTap: () {
          setState(() {
            isDashbord = false;
            isCountry = false;
            isBrands = true;
            isCategory = false;
            isProducts = false;
            isPendingorders = false;
            isCancelledorders = false;
            isOutforDelivery = false;
            isCompletedOrders = false;
            isDetails = false;
            isLogInfo = false;
            isDeals = false;
            isPoster1 = false;
            isPoster2 = false;
            isPoster3 = false;
            isPoster4 = false;
            isPoster5 = false;
            isPoster6 = false;
            isPoster7 = false;
            isProductfeedback = false;
            isSitefeedback = false;
            isEnquiry = false;
            isSubscription = false;
            //dropdwn flags
            isChangePassword = false;
            isViewSite = false;
          });
          Navigator.pop(context);
        },
        onCategroryTap: () {
          setState(() {
            isDashbord = false;
            isCountry = false;
            isBrands = false;
            isCategory = true;
            isProducts = false;
            isPendingorders = false;
            isCancelledorders = false;
            isOutforDelivery = false;
            isCompletedOrders = false;
            isDetails = false;
            isLogInfo = false;
            isDeals = false;
            isPoster1 = false;
            isPoster2 = false;
            isPoster3 = false;
            isPoster4 = false;
            isPoster5 = false;
            isPoster6 = false;
            isPoster7 = false;
            isProductfeedback = false;
            isSitefeedback = false;
            isEnquiry = false;
            isSubscription = false;
            //dropdwn flags
            isChangePassword = false;
            isViewSite = false;
          });
          Navigator.pop(context);
        },
        onCancelledorderTap: () {
          setState(() {
            isDashbord = false;
            isCountry = false;
            isBrands = false;
            isCategory = false;
            isProducts = false;
            isPendingorders = false;
            isCancelledorders = true;
            isOutforDelivery = false;
            isCompletedOrders = false;
            isDetails = false;
            isLogInfo = false;
            isDeals = false;
            isPoster1 = false;
            isPoster2 = false;
            isPoster3 = false;
            isPoster4 = false;
            isPoster5 = false;
            isPoster6 = false;
            isPoster7 = false;
            isProductfeedback = false;
            isSitefeedback = false;
            isEnquiry = false;
            isSubscription = false;
            //dropdwn flags
            isChangePassword = false;
            isViewSite = false;
          });
          Navigator.pop(context);
        },
        onCompletedOrdersTap: () {
          setState(() {
            isDashbord = false;
            isCountry = false;
            isBrands = false;
            isCategory = false;
            isProducts = false;
            isPendingorders = false;
            isCancelledorders = false;
            isOutforDelivery = false;
            isCompletedOrders = true;
            isDetails = false;
            isLogInfo = false;
            isDeals = false;
            isPoster1 = false;
            isPoster2 = false;
            isPoster3 = false;
            isPoster4 = false;
            isPoster5 = false;
            isPoster6 = false;
            isPoster7 = false;
            isProductfeedback = false;
            isSitefeedback = false;
            isEnquiry = false;
            isSubscription = false;
            //dropdwn flags
            isChangePassword = false;
            isViewSite = false;
          });
          Navigator.pop(context);
        },
        onDealsTap: () {
          setState(() {
            isDashbord = false;
            isCountry = false;
            isBrands = false;
            isCategory = false;
            isProducts = false;
            isPendingorders = false;
            isCancelledorders = false;
            isOutforDelivery = false;
            isCompletedOrders = false;
            isDetails = false;
            isLogInfo = false;
            isDeals = true;
            isPoster1 = false;
            isPoster2 = false;
            isPoster3 = false;
            isPoster4 = false;
            isPoster5 = false;
            isPoster6 = false;
            isPoster7 = false;
            isProductfeedback = false;
            isSitefeedback = false;
            isEnquiry = false;
            isSubscription = false;
            //dropdwn flags
            isChangePassword = false;
            isViewSite = false;
          });
          Navigator.pop(context);
        },
        onDetailsTap: () {
          setState(() {
            isDashbord = false;
            isCountry = false;
            isBrands = false;
            isCategory = false;
            isProducts = false;
            isPendingorders = false;
            isCancelledorders = false;
            isOutforDelivery = false;
            isCompletedOrders = false;
            isDetails = true;
            isLogInfo = false;
            isDeals = false;
            isPoster1 = false;
            isPoster2 = false;
            isPoster3 = false;
            isPoster4 = false;
            isPoster5 = false;
            isPoster6 = false;
            isPoster7 = false;
            isProductfeedback = false;
            isSitefeedback = false;
            isEnquiry = false;
            isSubscription = false;
            //dropdwn flags
            isChangePassword = false;
            isViewSite = false;
          });
          Navigator.pop(context);
        },
        onEnquiryTap: () {
          setState(() {
            isDashbord = false;
            isCountry = false;
            isBrands = false;
            isCategory = false;
            isProducts = false;
            isPendingorders = false;
            isCancelledorders = false;
            isOutforDelivery = false;
            isCompletedOrders = false;
            isDetails = false;
            isLogInfo = false;
            isDeals = false;
            isPoster1 = false;
            isPoster2 = false;
            isPoster3 = false;
            isPoster4 = false;
            isPoster5 = false;
            isPoster6 = false;
            isPoster7 = false;
            isProductfeedback = false;
            isSitefeedback = false;
            isEnquiry = true;
            isSubscription = false;
            //dropdwn flags
            isChangePassword = false;
            isViewSite = false;
          });
          Navigator.pop(context);
        },
        onLoginInfoTap: () {
          setState(() {
            isDashbord = false;
            isCountry = false;
            isBrands = false;
            isCategory = false;
            isProducts = false;
            isPendingorders = false;
            isCancelledorders = false;
            isOutforDelivery = false;
            isCompletedOrders = false;
            isDetails = false;
            isLogInfo = true;
            isDeals = false;
            isPoster1 = false;
            isPoster2 = false;
            isPoster3 = false;
            isPoster4 = false;
            isPoster5 = false;
            isPoster6 = false;
            isPoster7 = false;
            isProductfeedback = false;
            isSitefeedback = false;
            isEnquiry = false;
            isSubscription = false;
            //dropdwn flags
            isChangePassword = false;
            isViewSite = false;
          });
          Navigator.pop(context);
        },
        onOutforDeliveryTap: () {
          setState(() {
            isDashbord = false;
            isCountry = false;
            isBrands = false;
            isCategory = false;
            isProducts = false;
            isPendingorders = false;
            isCancelledorders = false;
            isOutforDelivery = true;
            isCompletedOrders = false;
            isDetails = false;
            isLogInfo = false;
            isDeals = false;
            isPoster1 = false;
            isPoster2 = false;
            isPoster3 = false;
            isPoster4 = false;
            isPoster5 = false;
            isPoster6 = false;
            isPoster7 = false;
            isProductfeedback = false;
            isSitefeedback = false;
            isEnquiry = false;
            isSubscription = false;
            //dropdwn flags
            isChangePassword = false;
            isViewSite = false;
          });
          Navigator.pop(context);
        },
        onPendingorderTap: () {
          setState(() {
            isDashbord = false;
            isCountry = false;
            isBrands = false;
            isCategory = false;
            isProducts = false;
            isPendingorders = true;
            isCancelledorders = false;
            isOutforDelivery = false;
            isCompletedOrders = false;
            isDetails = false;
            isLogInfo = false;
            isDeals = false;
            isPoster1 = false;
            isPoster2 = false;
            isPoster3 = false;
            isPoster4 = false;
            isPoster5 = false;
            isPoster6 = false;
            isPoster7 = false;
            isProductfeedback = false;
            isSitefeedback = false;
            isEnquiry = false;
            isSubscription = false;
            //dropdwn flags
            isChangePassword = false;
            isViewSite = false;
          });
          Navigator.pop(context);
        },
        onPoster1Tap: () {
          setState(() {
            isDashbord = false;
            isCountry = false;
            isBrands = false;
            isCategory = false;
            isProducts = false;
            isPendingorders = false;
            isCancelledorders = false;
            isOutforDelivery = false;
            isCompletedOrders = false;
            isDetails = false;
            isLogInfo = false;
            isDeals = false;
            isPoster1 = true;
            isPoster2 = false;
            isPoster3 = false;
            isPoster4 = false;
            isPoster5 = false;
            isPoster6 = false;
            isPoster7 = false;
            isProductfeedback = false;
            isSitefeedback = false;
            isEnquiry = false;
            isSubscription = false;
            //dropdwn flags
            isChangePassword = false;
            isViewSite = false;
          });
          Navigator.pop(context);
        },
        onPoster2Tap: () {
          setState(() {
            isDashbord = false;
            isCountry = false;
            isBrands = false;
            isCategory = false;
            isProducts = false;
            isPendingorders = false;
            isCancelledorders = false;
            isOutforDelivery = false;
            isCompletedOrders = false;
            isDetails = false;
            isLogInfo = false;
            isDeals = false;
            isPoster1 = false;
            isPoster2 = true;
            isPoster3 = false;
            isPoster4 = false;
            isPoster5 = false;
            isPoster6 = false;
            isPoster7 = false;
            isProductfeedback = false;
            isSitefeedback = false;
            isEnquiry = false;
            isSubscription = false;
            //dropdwn flags
            isChangePassword = false;
            isViewSite = false;
          });
          Navigator.pop(context);
        },
        onPoster3Tap: () {
          setState(() {
            isDashbord = false;
            isCountry = false;
            isBrands = false;
            isCategory = false;
            isProducts = false;
            isPendingorders = false;
            isCancelledorders = false;
            isOutforDelivery = false;
            isCompletedOrders = false;
            isDetails = false;
            isLogInfo = false;
            isDeals = false;
            isPoster1 = false;
            isPoster2 = false;
            isPoster3 = true;
            isPoster4 = false;
            isPoster5 = false;
            isPoster6 = false;
            isPoster7 = false;
            isProductfeedback = false;
            isSitefeedback = false;
            isEnquiry = false;
            isSubscription = false;
            //dropdwn flags
            isChangePassword = false;
            isViewSite = false;
          });
          Navigator.pop(context);
        },
        onPoster4Tap: () {
          setState(() {
            isDashbord = false;
            isCountry = false;
            isBrands = false;
            isCategory = false;
            isProducts = false;
            isPendingorders = false;
            isCancelledorders = false;
            isOutforDelivery = false;
            isCompletedOrders = false;
            isDetails = false;
            isLogInfo = false;
            isDeals = false;
            isPoster1 = false;
            isPoster2 = false;
            isPoster3 = false;
            isPoster4 = true;
            isPoster5 = false;
            isPoster6 = false;
            isPoster7 = false;
            isProductfeedback = false;
            isSitefeedback = false;
            isEnquiry = false;
            isSubscription = false;
            //dropdwn flags
            isChangePassword = false;
            isViewSite = false;
          });
          Navigator.pop(context);
        },
        onPoster5Tap: () {
          setState(() {
            isDashbord = false;
            isCountry = false;
            isBrands = false;
            isCategory = false;
            isProducts = false;
            isPendingorders = false;
            isCancelledorders = false;
            isOutforDelivery = false;
            isCompletedOrders = false;
            isDetails = false;
            isLogInfo = false;
            isDeals = false;
            isPoster1 = false;
            isPoster2 = false;
            isPoster3 = false;
            isPoster4 = false;
            isPoster5 = true;
            isPoster6 = false;
            isPoster7 = false;
            isProductfeedback = false;
            isSitefeedback = false;
            isEnquiry = false;
            isSubscription = false;
            //dropdwn flags
            isChangePassword = false;
            isViewSite = false;
          });
          Navigator.pop(context);
        },
        onPoster6Tap: () {
          setState(() {
            isDashbord = false;
            isCountry = false;
            isBrands = false;
            isCategory = false;
            isProducts = false;
            isPendingorders = false;
            isCancelledorders = false;
            isOutforDelivery = false;
            isCompletedOrders = false;
            isDetails = false;
            isLogInfo = false;
            isDeals = false;
            isPoster1 = false;
            isPoster2 = false;
            isPoster3 = false;
            isPoster4 = false;
            isPoster5 = false;
            isPoster6 = true;
            isPoster7 = false;
            isProductfeedback = false;
            isSitefeedback = false;
            isEnquiry = false;
            isSubscription = false;
            //dropdwn flags
            isChangePassword = false;
            isViewSite = false;
          });
          Navigator.pop(context);
        },
        onPoster7Tap: () {
          setState(() {
            isDashbord = false;
            isCountry = false;
            isBrands = false;
            isCategory = false;
            isProducts = false;
            isPendingorders = false;
            isCancelledorders = false;
            isOutforDelivery = false;
            isCompletedOrders = false;
            isDetails = false;
            isLogInfo = false;
            isDeals = false;
            isPoster1 = false;
            isPoster2 = false;
            isPoster3 = false;
            isPoster4 = false;
            isPoster5 = false;
            isPoster6 = false;
            isPoster7 = true;
            isProductfeedback = false;
            isSitefeedback = false;
            isEnquiry = false;
            isSubscription = false;
            //dropdwn flags
            isChangePassword = false;
            isViewSite = false;
          });
          Navigator.pop(context);
        },
        onProductFeedbackTap: () {
          setState(() {
            isDashbord = false;
            isCountry = false;
            isBrands = false;
            isCategory = false;
            isProducts = false;
            isPendingorders = false;
            isCancelledorders = false;
            isOutforDelivery = false;
            isCompletedOrders = false;
            isDetails = false;
            isLogInfo = false;
            isDeals = false;
            isPoster1 = false;
            isPoster2 = false;
            isPoster3 = false;
            isPoster4 = false;
            isPoster5 = false;
            isPoster6 = false;
            isPoster7 = false;
            isProductfeedback = true;
            isSitefeedback = false;
            isEnquiry = false;
            isSubscription = false;
            //dropdwn flags
            isChangePassword = false;
            isViewSite = false;
          });
          Navigator.pop(context);
        },
        onSiteFeedbackTap: () {
          setState(() {
            isDashbord = false;
            isCountry = false;
            isBrands = false;
            isCategory = false;
            isProducts = false;
            isPendingorders = false;
            isCancelledorders = false;
            isOutforDelivery = false;
            isCompletedOrders = false;
            isDetails = false;
            isLogInfo = false;
            isDeals = false;
            isPoster1 = false;
            isPoster2 = false;
            isPoster3 = false;
            isPoster4 = false;
            isPoster5 = false;
            isPoster6 = false;
            isPoster7 = false;
            isProductfeedback = false;
            isSitefeedback = true;
            isEnquiry = false;
            isSubscription = false;
            //dropdwn flags
            isChangePassword = false;
            isViewSite = false;
          });
          Navigator.pop(context);
        },
        onSubscriptionTap: () {
          setState(() {
            isDashbord = false;
            isCountry = false;
            isBrands = false;
            isCategory = false;
            isProducts = false;
            isPendingorders = false;
            isCancelledorders = false;
            isOutforDelivery = false;
            isCompletedOrders = false;
            isDetails = false;
            isLogInfo = false;
            isDeals = false;
            isPoster1 = false;
            isPoster2 = false;
            isPoster3 = false;
            isPoster4 = false;
            isPoster5 = false;
            isPoster6 = false;
            isPoster7 = false;
            isProductfeedback = false;
            isSitefeedback = false;
            isEnquiry = false;
            isSubscription = true;
            //dropdwn flags
            isChangePassword = false;
            isViewSite = false;
          });
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //header section
              Builder(builder: (context) {
                return HeaderBox(
                  onDropdownSelection: (p0) {
                    if (p0 == 1) {
                      setState(() {
                        isDashbord = false;
                        isCountry = false;
                        isBrands = false;
                        isCategory = false;
                        isProducts = false;
                        isPendingorders = false;
                        isCancelledorders = false;
                        isOutforDelivery = false;
                        isCompletedOrders = false;
                        isDetails = false;
                        isLogInfo = false;
                        isDeals = false;
                        isPoster1 = false;
                        isPoster2 = false;
                        isPoster3 = false;
                        isPoster4 = false;
                        isPoster5 = false;
                        isPoster6 = false;
                        isPoster7 = false;
                        isProductfeedback = false;
                        isSitefeedback = false;
                        isEnquiry = false;
                        isSubscription = false;
                        //dropdwn flags
                        isChangePassword = true;
                        isViewSite = false;
                      });
                    } else if (p0 == 2) {
                      setState(() {
                        isDashbord = false;
                        isCountry = false;
                        isBrands = false;
                        isCategory = false;
                        isProducts = false;
                        isPendingorders = false;
                        isCancelledorders = false;
                        isOutforDelivery = false;
                        isCompletedOrders = false;
                        isDetails = false;
                        isLogInfo = false;
                        isDeals = false;
                        isPoster1 = false;
                        isPoster2 = false;
                        isPoster3 = false;
                        isPoster4 = false;
                        isPoster5 = false;
                        isPoster6 = false;
                        isPoster7 = false;
                        isProductfeedback = false;
                        isSitefeedback = false;
                        isEnquiry = false;
                        isSubscription = false;
                        //dropdwn flags
                        isChangePassword = false;
                        isViewSite = true;
                      });
                    }
                  },
                  onMenuTap: () {
                    // Close the drawer programmatically
                    if (_scaffoldKey.currentState?.isDrawerOpen ?? false) {
                      Navigator.pop(context); // Close the drawer
                    } else {
                      Scaffold.of(context).openDrawer();
                    }
                    setState(() {
                      isDashbord = false;
                      isCountry = false;
                      isBrands = false;
                      isCategory = false;
                      isProducts = false;
                      isPendingorders = false;
                      isCancelledorders = false;
                      isOutforDelivery = false;
                      isCompletedOrders = false;
                      isDetails = false;
                      isLogInfo = false;
                      isDeals = false;
                      isPoster1 = false;
                      isPoster2 = false;
                      isPoster3 = false;
                      isPoster4 = false;
                      isPoster5 = false;
                      isPoster6 = false;
                      isPoster7 = false;
                      isProductfeedback = false;
                      isSitefeedback = false;
                      isEnquiry = false;
                      isSubscription = false;
                    });
                  },
                );
              }),
              //main contents-changing section
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                  child: Column(
                    children: [
                      isDashbord
                          ? DashboardPage(
                              onBlockTap: (p0) {},
                            )
                          : SizedBox()
                    ],
                  ),
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
        ),
      ),
    ));
  }
}
