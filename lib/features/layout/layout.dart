import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lazy_load_indexed_stack/lazy_load_indexed_stack.dart';
import '../../core/utils/assets_data.dart';
import '../../core/utils/constant.dart';
import '../categories/presentation/view/screens/main_categories_screen.dart';
import '../drawer_screens/presentation/view/screens/user_profile_screen.dart';
import '../drawer_screens/presentation/view/widgets/drawer.dart';
import '../home/presentation/view/screens/home_screen.dart';
import '../user_orders/presentation/view/screens/user_orders.dart';

int IndexOfPage = 3;

class LayOut extends StatefulWidget {
  const LayOut({super.key});

  @override
  State<LayOut> createState() => _LayOutState();
}

class _LayOutState extends State<LayOut> {
  // ignore: non_constant_identifier_names

  bool amr = false;
  List<Widget> taps = [
    const UserProfileScreen(),
    const UserOrders(),
    const MainCategoriesScreen(),
    const HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      endDrawer: NavigationDrawerWidget(),
        appBar: AppBar(
          toolbarHeight:90.h,
          iconTheme: IconThemeData(
            size: 30.sp,
            color: Colors.black, // set your desired color here
          ),
          backgroundColor: MyColors.whitColor,
          shadowColor: Color(0x0F4B5563),
          elevation: 0,
        title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children:[
              InkWell(
                child: SizedBox(
                    width: 25.w,
                    child: Image.asset(
                     AssetsData.bag_icon,
                      fit: BoxFit.fill,
                    ),
                ),
              ),
              SizedBox(width: 16.w,),
              InkWell(
                child: SizedBox(
                    width: 25.w,
                    child: Image.asset(
                     AssetsData.notification_icon,
                      fit: BoxFit.fill,
                    ),
                ),
              ),

               SizedBox(
            width: 120.w,
          ),
              SizedBox(
                width: 90.w,
                child: Image.asset(
                  AssetsData.logoSplash,
                  fit: BoxFit.fill,
                ),
              ),

        ]),
        ) ,

        bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                IndexOfPage = index;
              });
            },
            showUnselectedLabels: true,
            selectedLabelStyle: GoogleFonts.tajawal(
                fontSize: 14.sp,
                color: MyColors.defaultColor,
                fontWeight: FontWeight.w400),
            unselectedLabelStyle: GoogleFonts.tajawal(
              fontSize: 14.sp,
              color: MyColors.greyBorders,
            ),
            selectedItemColor: MyColors.primary,
            unselectedItemColor: MyColors.greyBorders,
            currentIndex: IndexOfPage,
            useLegacyColorScheme: false,
            items: [
              BottomNavigationBarItem(
                icon: SizedBox(
                  width: 18.w,
                  height: 18.w,
                  child: Image.asset(
                    IndexOfPage == 0
                        ? AssetsData.acountGray
                        : AssetsData.acountGray,
                    fit: BoxFit.fill,
                  ),
                ),
                label: 'الحساب',
              ),
              BottomNavigationBarItem(
                  icon: SizedBox(
                    width: 18.w,
                    height: 18.w,
                    child: Image.asset(
                      IndexOfPage == 1
                          ? AssetsData.orderGray
                          : AssetsData.orderGray,
                      fit: BoxFit.fill,
                    ),
                  ),
                  label: 'طلبات'),
              BottomNavigationBarItem(
                  icon: SizedBox(
                    width: 18.w,
                    height: 18.w,
                    child: Image.asset(
                      IndexOfPage == 2
                          ? AssetsData.departGrey
                          : AssetsData.departGrey,
                      fit: BoxFit.fill,
                    ),
                  ),
                  label: 'فئات'),
              BottomNavigationBarItem(
                  icon: SizedBox(
                    width: 18.w,
                    height: 18.w,
                    child: Image.asset(
                      IndexOfPage == 3
                          ? AssetsData.homeActive
                          : AssetsData.homeGrey,
                      fit: BoxFit.fill,
                    ),
                  ),
                  label: 'الرئيسيه'),
            ]),
        body: LazyLoadIndexedStack(
          index: IndexOfPage,
          children: taps,
        ),
      ),
    );
  }
}
