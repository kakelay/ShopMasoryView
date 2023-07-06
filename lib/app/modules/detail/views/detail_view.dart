// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class DetailView extends StatelessWidget {
//   const DetailView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final arguments = Get.arguments as Map<String, dynamic>;
//     final src = arguments['src'];

//     // Use the src value to display the image or perform other operations

//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: const Icon(Icons.arrow_back_ios,color: Colors.black,),
//           //replace with our own icon data.
//         ),
//         title: const Text('Detail View',style: TextStyle(color:Colors.black),),
//         backgroundColor: Colors.white,
//       ),
//       body: Center(
//         //child: Text('Image source: $src'),
//         child: Image.network(src),

//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
 

class DetailView extends StatelessWidget {
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = Get.arguments as Map<String, dynamic>;
    final src = arguments['src'];

    // Use the src value to display the image or perform other operations

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          //replace with our own icon data.
        ),
        title: const Text(
          'Detail View',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          //width: MediaQuery.of(context).size.width * 0.45,
        
          decoration: BoxDecoration(
           color:Colors.white12,
            boxShadow: const [
              BoxShadow(
                blurRadius: 4,
                color: Color(0x3600000F),
                offset: Offset(0, 2),
              )
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                          ),
                          // child: Image.network(
                          //   product.image,
                          //   width: 100,
                          //   height: 100,
                          //   fit: BoxFit.cover,
                          // ),
                          child: Image.network(src),
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                        // child: Text(
                        //   product.name,
                        //   style: AppTheme.of(context).bodyText1,
                        // ),
                        child: Text("Name Product static "),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                        // child: Text(
                        //   '\$${product.price}',
                        //   style: AppTheme.of(context).bodyText2,
                        // ),
                        child: Text("Price  Product static "),
                      ),
                    ],
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
