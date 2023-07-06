import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  int _x = 0;
  int get x => _x;

  int currentIndex = 0;
  void onTabTapped(int index) {
    currentIndex = index;
    update();
  }

  void increment() => count.value++;
}

List images = [
  'https://assets.adidas.com/images/w_600,f_auto,q_auto/7e0b56cb340a45588626aac400d60ec5_9366/T-shirt_Logo_Y-3_CL_noir_FN3348.jpg',
  'https://brand.assets.adidas.com/image/upload/f_auto,q_auto,fl_lossy/frCA/Images/Sportswear-FW23-ZNE-global-EAEducate-PLP-Male-SPW-Image-Collection-Img1-t_tcm214-1020971.jpg',
  'https://assets.adidas.com/images/w_276,h_276,f_auto,q_auto,fl_lossy,c_fill,g_auto/2697244087014671a47ae11279959ffa_9366/HR3796_HM1.jpg',
  'https://i.etsystatic.com/42475924/r/il/bd11f2/4891254430/il_fullxfull.4891254430_7igf.jpg',
  'https://brand.assets.adidas.com/image/upload/f_auto,q_auto,fl_lossy/if_w_gt_800,w_800/frCA/Images/FW23_SPW_ZNE_ANTHONY_MALE_teaser_tcm214-1038155.jpg',
  'https://assets.adidas.com/images/w_276,h_276,f_auto,q_auto,fl_lossy,c_fill,g_auto/2697244087014671a47ae11279959ffa_9366/HR3796_HM1.jpg',
  'https://brand.assets.adidas.com/image/upload/f_auto,q_auto,fl_lossy/frCA/Images/Sportswear-FW23-ZNE-global-EAEducate-PLP-Male-SPW-Image-Collection-Img1-t_tcm214-1020971.jpg',
  'https://assets.adidas.com/images/w_276,h_276,f_auto,q_auto,fl_lossy,c_fill,g_auto/734eda9220a044e5a2e445efbe43b08d_9366/HR6929_HM1.jpg',
  'https://image.spreadshirtmedia.com/image-server/v1/products/T210A351PA4301PT17X78Y37D13281940W17566H25000/views/1,width=550,height=550,appearanceId=351,backgroundColor=F2F2F2,modelId=1543,crop=list/im-not-just-a-scorpio-mens-t-shirt.jpg',
  'https://assets.adidas.com/images/w_600,f_auto,q_auto/7e0b56cb340a45588626aac400d60ec5_9366/T-shirt_Logo_Y-3_CL_noir_FN3348.jpg',
];

class CustomSearchDelegate extends SearchDelegate<String> {
  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return theme.copyWith(
      appBarTheme: theme.appBarTheme.copyWith(
        backgroundColor: Colors.white,
      ),
      textTheme: theme.textTheme.copyWith(
        // ignore: deprecated_member_use
        headline6: const TextStyle(color: Colors.black),
      ),
      inputDecorationTheme: theme.inputDecorationTheme.copyWith(
        hintStyle: const TextStyle(color: Colors.grey),
      ),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(
          Icons.clear,
          color: Colors.black,
        ),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.arrow_back_ios_new,
        color: Colors.black,
      ),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text('Search results for: $query'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Implement your own suggestion logic here
    final suggestions = [
      'Apple',
      'Banana',
      'Cherry',
      'Durian',
      'Elderberry',
      'Fig',
      'Grape',
      'Honeydew',
      'Jackfruit',
      'Kiwi',
      'Lemon',
      'Mango',
      'Nectarine',
      'Orange',
      'Papaya',
      'Quince',
      'Raspberry',
      'Strawberry',
      'Tangerine',
      'Ugli fruit',
      'Watermelon',
    ];

    final filteredSuggestions = suggestions
        .where((item) => item.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: filteredSuggestions.length,
      itemBuilder: (context, index) {
        final suggestion = filteredSuggestions[index];
        return ListTile(
          title: Text(suggestion),
          onTap: () {
            close(context, suggestion);
          },
        );
      },
    );
  }
}

// class DrawerNotification extends StatelessWidget {
//   const DrawerNotification({
//     super.key,
//   });
  
//   get selectedIndex => null;

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       backgroundColor: Colors.blueGrey.shade200,
//       child: ListView(
//         children: [
//           const UserAccountsDrawerHeader(
//             decoration: BoxDecoration(color: Colors.black12),
//             accountName: Text(
//               'Mantisy',
//               style: TextStyle(color: Colors.black),
//             ),
//             accountEmail: Text(
//               'mantisy@gmail.com',
//               style: TextStyle(color: Colors.black),
//             ),
//             currentAccountPicture: CircleAvatar(
//               radius: 60.0,
//               backgroundImage: AssetImage('assets/locales/images/1.jpg'),
//             ),
//           ),
//           ListTile(
//             leading: const Icon(
//               Icons.home,
//               color: Colors.black,
//             ),
//             title: const Text('Home'),
//             onTap: () {
//               Navigator.pop(context); // Close the drawer
//               Navigator.pushNamed(
//                   context, '/home'); // Navigate to the home page
//             },
//           ),
//           ListTile(
//             leading: const Icon(
//               Icons.qr_code,
//               color: Colors.black,
//             ),
//             title: const Text('QrCode'),
//             onTap: () {
//               Navigator.pop(context); // Close the drawer
//               Navigator.pushNamed(
//                   context, '/qrcode'); // Navigate to the home page
//             },
//           ),
//           ListTile(
//             leading: const Icon(
//               Icons.person,
//               color: Colors.black,
//             ),
//             title: const Text('Profile'),
//             // onTap: () {
//             //   Navigator.pop(context); // Close the drawer
//             //   Navigator.pushNamed(
//             //       context, '/profile'); // Navigate to the home page
//             // },
//                selected: selectedIndex == 0,
//           ),
//           ListTile(
//             leading: const Icon(
//               Icons.settings,
//               color: Colors.black,
//             ),
//             title: const Text('Settings'),
//             onTap: () {
//               // TODO: Handle navigation to settings
//             },
//           ),
//           ListTile(
//             leading: const Icon(
//               Icons.logout_outlined,
//               color: Colors.black,
//             ),
//             title: const Text('Logout'),
//             onTap: () {
//               // TODO: Handle logout
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
