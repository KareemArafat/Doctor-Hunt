import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:flutter/material.dart';

enum SnackBarStatus { success, error, warning }

extension CustomSnackBar on BuildContext {
  Color _getColor(SnackBarStatus status) {
    late Color color;
    switch (status) {
      case SnackBarStatus.success:
        color = AppColors.primary;
      case SnackBarStatus.error:
        color = AppColors.errorItems;
      case SnackBarStatus.warning:
        color = AppColors.secondary;
    }
    return color;
  }

  IconData _getIcons(SnackBarStatus status) {
    late IconData icon;
    switch (status) {
      case SnackBarStatus.success:
        icon = Icons.check;
      case SnackBarStatus.error:
        icon = Icons.error_outline;
      case SnackBarStatus.warning:
        icon = Icons.warning;
    }
    return icon;
  }

  void showCustomSnackBar({
    required String message,
    SnackBarStatus status = SnackBarStatus.error,
  }) {
    ScaffoldMessenger.of(this).clearSnackBars();
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
        backgroundColor: AppColors.transparent,
        duration: const Duration(seconds: 2),
        elevation: 0,
        content: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: _getColor(status),
            boxShadow: [
              BoxShadow(
                color: AppColors.secondary,
                offset: Offset(4, 4),
                blurRadius: 5,
              ),
            ],
          ),
          child: Row(
            children: [
              Icon(_getIcons(status), color: AppColors.white, size: 20),
              SizedBox(width: 10),
              Flexible(child: Text(message, style: semiBold14White)),
            ],
          ),
        ),
      ),
    );
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
