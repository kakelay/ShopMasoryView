import 'dart:typed_data';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../controllers/qrcode_controller.dart';

class QrcodeView extends GetView<QrcodeController> {
  const QrcodeView({Key? key}) : super(key: key);
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Mobile Scanner'),
      //   actions: [
      //     IconButton(
      //       color: Colors.white,
      //       icon: ValueListenableBuilder(
      //         valueListenable: cameraController.torchState,
      //         builder: (context, state, child) {
      //           // ignore: unnecessary_cast
      //           switch (state as TorchState) {
      //             case TorchState.off:
      //               return const Icon(Icons.flash_off, color: Colors.grey);
      //             case TorchState.on:
      //               return const Icon(Icons.flash_on, color: Colors.yellow);
      //           }
      //         },
      //       ),
      //       iconSize: 32.0,
      //       onPressed: () => cameraController.toggleTorch(),
      //     ),
      //     IconButton(
      //       color: Colors.white,
      //       icon: ValueListenableBuilder(
      //         valueListenable: cameraController.cameraFacingState,
      //         builder: (context, state, child) {
      //           // ignore: unnecessary_cast
      //           switch (state as CameraFacing) {
      //             case CameraFacing.front:
      //               return const Icon(Icons.camera_front);
      //             case CameraFacing.back:
      //               return const Icon(Icons.camera_rear);
      //           }
      //         },
      //       ),
      //       iconSize: 32.0,
      //       onPressed: () => cameraController.switchCamera(),
      //     ),
      //   ],
      // ),
      body: MobileScanner(
        // fit: BoxFit.contain,
       //controller: cameraController,
        onDetect: (capture) {
          final List<Barcode> barcodes = capture.barcodes;
          // ignore: unused_local_variable
          final Uint8List? image = capture.image;
          for (final barcode in barcodes) {
            debugPrint('Barcode found! ${barcode.rawValue}');
          }
        },
      ),
    );
  }
}
