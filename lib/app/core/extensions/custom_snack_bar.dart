import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:flutter/material.dart';

enum SnackBarStatus { success, error, warning }

extension CustomSnackBar on BuildContext {
  Color getSnackBarColor(SnackBarStatus snackBarStatus) {
    late Color bgColor;

    if (snackBarStatus == SnackBarStatus.success) {
      bgColor = AppColors.primary;
    } else if (snackBarStatus == SnackBarStatus.error) {
      bgColor = AppColors.errorItems;
    } else {
      bgColor = AppColors.secondary;
    }
    return bgColor;
  }

  // Color getSnackBarLightColor(SnackBarStatus snackBarStatus) {
  //   late Color lightBgColor;
  //   if (snackBarStatus == SnackBarStatus.success) {
  //     lightBgColor = Colors.green.shade200;
  //   } else if (snackBarStatus == SnackBarStatus.error) {
  //     lightBgColor = Colors.red.shade200;
  //   } else {
  //     lightBgColor = Colors.orange.shade200;
  //   }
  //   return lightBgColor;
  // }

  IconData getIcons(SnackBarStatus status) {
    late IconData icon;
    if (status == SnackBarStatus.success) {
      icon = Icons.check;
    } else if (status == SnackBarStatus.error) {
      icon = Icons.error_outline;
    } else {
      icon = Icons.warning;
    }
    return icon;
  }

  Future<void> showCustomSnackBar({
    required String message,
    SnackBarStatus snackBarStatus = SnackBarStatus.error,
  }) {
    final Color bgColor = getSnackBarColor(snackBarStatus);
    ScaffoldMessenger.of(this).clearSnackBars();
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
        backgroundColor: AppColors.transparent,
        duration: const Duration(seconds: 3),
        elevation: 0,
        content: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Icon(getIcons(snackBarStatus), color: AppColors.white),
              SizedBox(width: 10),
              Text(message, style: semiBold14White),
            ],
          ),
        ),
      ),
    );
    return Future.value();
  }
}

// extension InternetSnackBar on BuildContext {
//   void initInternetListeners() {
//     InternetConnectionService.event.on<ConnectionStatus>().listen((event) {
//       if (event == ConnectionStatus.connected) {
//         showInternetOnlineSnackBar();
//       } else if (event == ConnectionStatus.disconnected) {
//         showInternetOfflineSnackBar();
//       } else if (event == ConnectionStatus.weak) {
//         showWeakInternetSnackBar();
//       }
//     });
//   }

//   Color getSnackBarColor(SnackBarStatus snackBarStatus) {
//     late Color bgColor;
//     if (snackBarStatus == SnackBarStatus.success) {
//       bgColor = Colors.green;
//     } else if (snackBarStatus == SnackBarStatus.error) {
//       bgColor = Colors.red;
//     } else {
//       bgColor = Colors.orange;
//     }
//     return bgColor;
//   }

//   void showInternetOfflineSnackBar() {
//     final Color bgColor = getSnackBarColor(SnackBarStatus.error);
//     final snackBar = SnackBar(
//       behavior: SnackBarBehavior.floating,
//       backgroundColor: bgColor,
//       duration: const Duration(days: 1),
//       showCloseIcon: true,
//       closeIconColor: AppColors.white,
//       content: Text(
//         'disconnected',
//         style: const TextStyle(
//           fontSize: 14.0,
//           color: AppColors.white,
//           fontWeight: FontWeight.w400,
//         ),
//       ),
//     );
//     ScaffoldMessenger.of(this).clearSnackBars();
//     ScaffoldMessenger.of(this).showSnackBar(snackBar);
//   }

//   void showInternetOnlineSnackBar() {
//     final Color bgColor = getSnackBarColor(SnackBarStatus.success);
//     ScaffoldMessenger.of(this).clearSnackBars();
//     ScaffoldMessenger.of(this).showSnackBar(
//       SnackBar(
//         behavior: SnackBarBehavior.floating,
//         backgroundColor: bgColor,
//         content: Text(
//           'connected',
//           style: const TextStyle(
//             fontSize: 14.0,
//             color: AppColors.white,
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//       ),
//     );
//   }

//   void showWeakInternetSnackBar() {
//     final Color bgColor = getSnackBarColor(SnackBarStatus.warning);
//     ScaffoldMessenger.of(this).clearSnackBars();
//     ScaffoldMessenger.of(this).showSnackBar(
//       SnackBar(
//         behavior: SnackBarBehavior.floating,
//         backgroundColor: bgColor,
//         content: Text(
//           'internetWeak',
//           style: const TextStyle(
//             fontSize: 14.0,
//             color: AppColors.white,
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//       ),
//     );
//   }
// }
