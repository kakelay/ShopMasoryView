// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mantisy_pro/app/modules/home/views/widget_button/homebutton.dart';
import 'package:mantisy_pro/app/modules/profile/views/profile_view.dart';
import 'package:mantisy_pro/app/modules/settings/views/settings_view.dart';

import '../../../themes/colors-theme.dart';
import '../../qrcode/views/qrcode_view.dart';
import '../controllers/home_controller.dart';

// ignore: must_be_immutable
class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  final List<Widget> screens = [
    const HomeButton(),
    const QrcodeView(),
    const ProfileView(),
    SettingsView(),
  ];

  final List<Widget> titles = [
    const Text(
      "Mantisy Shop",
      style: TextStyle(color: Colors.black),
    ),
    const Text(
      "QrCode",
      style: TextStyle(color: Colors.black),
    ),
    const Text(
      "Profile",
      style: TextStyle(color: Colors.black),
    ),
    const Text(
      "Settings",
      style: TextStyle(color: Colors.black),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    String searchText = '';

    HomeController controller = Get.put(HomeController());
    return GetBuilder(
      init: controller,
      builder: (controller) {
        return Scaffold(
          // backgroundColor: AppColors.mainBg,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: titles[controller.currentIndex],
            centerTitle: true,
            leading: Builder(
              builder: (context) => IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                onPressed: () {
                  showSearch(
                    context: context,
                    delegate: CustomSearchDelegate(),
                  );
                },
              ),
            ],
          ),
          body: screens[controller.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            // backgroundColor: Colors.blue,
            currentIndex: controller.currentIndex,
            onTap: (index) => controller.onTabTapped(index),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: 'Home',
                backgroundColor: Colors.blueGrey,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.qr_code_2,
                  color: Colors.white,
                ),
                label: 'QrCode',
               backgroundColor: Colors.blueGrey,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                label: 'Profile',
                 backgroundColor: Colors.blueGrey,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                label: 'Settings',
                 backgroundColor: Colors.blueGrey,
              ),
            ],
          ),
          drawer: Drawer(
            backgroundColor: Colors.blueGrey.shade200,
            child: ListView(
              children: [
                const UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.black12),
                  accountName: Text(
                    'Mantisy',
                    style: TextStyle(color: Colors.black),
                  ),
                  accountEmail: Text(
                    'mantisy@gmail.com',
                    style: TextStyle(color: Colors.black),
                  ),
                  currentAccountPicture: CircleAvatar(
                    radius: 60.0,
                    backgroundImage: AssetImage('assets/locales/images/1.jpg'),
                  ),
                ),
                // ListTile(
                //   leading: const Icon(
                //     Icons.home,
                //     color: Colors.black,
                //   ),
                //   title: const Text('Home'),
                //   onTap: () {
                //     Navigator.pop(context); // Close the drawer
                //     Navigator.pushNamed(
                //         context, '/home'); // Navigate to the home page
                //   },
                // ),

                // ListTile(
                //   leading: const Icon(Icons.home, color: Colors.black),
                //   title: const Text('Home'),
                //   onTap: () {
                //     Navigator.pop(context); // Close the drawer
                //     Navigator.pushNamed(
                //         context, '/home'); // Navigate to the home page
                //   },
                // ),

                ListTile(
                  leading: const Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  title: const Text('Home'),
                  selected: controller.currentIndex == 0,
                  selectedColor: ThemeColor.bluegrey,
                  onTap: () {
                    // Update the state of the app
                    controller.onTabTapped(0);
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),

                ListTile(
                  leading: const Icon(
                    Icons.qr_code,
                    color: Colors.black,
                  ),
                  title: const Text('QrCode'),
                  selected: controller.currentIndex == 1,
                  selectedColor: ThemeColor.bluegrey,
                  onTap: () {
                    // Navigator.pop(context); // Close the drawer
                    // Navigator.pushNamed(
                    //     context, '/qrcode'); // Navigate to the home page
                    // Update the state of the app
                    controller.onTabTapped(1);
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  title: const Text('Person'),
                  selected: controller.currentIndex == 2,
                  selectedColor: ThemeColor.bluegrey,
                  onTap: () {
                    // Navigator.pop(context); // Close the drawer
                    // Navigator.pushNamed(
                    //     context, '/qrcode'); // Navigate to the home page
                    // Update the state of the app
                    controller.onTabTapped(2);
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                  title: const Text('Setings'),
                  selected: controller.currentIndex == 3,
                  selectedColor: ThemeColor.bluegrey,
                  onTap: () {
                    // Navigator.pop(context); // Close the drawer
                    // Navigator.pushNamed(
                    //     context, '/qrcode'); // Navigate to the home page
                    // Update the state of the app
                    controller.onTabTapped(3);
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.logout,
                    color: Colors.black,
                  ),
                  title: const Text('Logout',style:TextStyle(color: ThemeColor.secondaryRed),),
                  //   selected: controller.currentIndex == 3,
                  selectedColor: ThemeColor.bluegrey,
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.pushNamed(
                        context, '/login'); // Navigate to the home page
                    // Update the state of the app
                     
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
