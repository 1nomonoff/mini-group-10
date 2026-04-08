// lib/services/snackbar_service.dart

import 'package:flutter/material.dart';

class SnackbarService {
  
  /// Show a basic snackbar
  static void showSnackbar({
    required BuildContext context,
    required String message,
    Duration duration = const Duration(seconds: 3),
    SnackBarAction? action,
    Color? backgroundColor,
    Color? textColor,
    double? elevation,
    EdgeInsets? margin,
    EdgeInsets? padding,
    double? width,
    ShapeBorder? shape,
    DismissDirection dismissDirection = DismissDirection.down,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(color: textColor ?? Colors.white),
        ),
        duration: duration,
        action: action,
        backgroundColor: backgroundColor ?? Colors.black87,
        behavior: SnackBarBehavior.floating,
        shape: shape ??
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
        elevation: elevation ?? 6,
        margin: margin ?? const EdgeInsets.all(8),
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        width: width,
        dismissDirection: dismissDirection,
      ),
    );
  }

  /// Show a success snackbar
  static void showSuccess({
    required BuildContext context,
    required String message,
    Duration duration = const Duration(seconds: 3),
    String? actionLabel,
    VoidCallback? onActionPressed,
  }) {
    _showStyledSnackbar(
      context: context,
      message: message,
      backgroundColor: Colors.green,
      icon: Icons.check_circle,
      duration: duration,
      actionLabel: actionLabel,
      onActionPressed: onActionPressed,
    );
  }

  /// Show an error snackbar
  static void showError({
    required BuildContext context,
    required String message,
    Duration duration = const Duration(seconds: 3),
    String? actionLabel,
    VoidCallback? onActionPressed,
  }) {
    _showStyledSnackbar(
      context: context,
      message: message,
      backgroundColor: Colors.red,
      icon: Icons.error,
      duration: duration,
      actionLabel: actionLabel,
      onActionPressed: onActionPressed,
    );
  }

  /// Show an info snackbar
  static void showInfo({
    required BuildContext context,
    required String message,
    Duration duration = const Duration(seconds: 3),
    String? actionLabel,
    VoidCallback? onActionPressed,
  }) {
    _showStyledSnackbar(
      context: context,
      message: message,
      backgroundColor: Colors.blue,
      icon: Icons.info,
      duration: duration,
      actionLabel: actionLabel,
      onActionPressed: onActionPressed,
    );
  }

  /// Show a warning snackbar
  static void showWarning({
    required BuildContext context,
    required String message,
    Duration duration = const Duration(seconds: 3),
    String? actionLabel,
    VoidCallback? onActionPressed,
  }) {
    _showStyledSnackbar(
      context: context,
      message: message,
      backgroundColor: Colors.orange,
      icon: Icons.warning,
      duration: duration,
      actionLabel: actionLabel,
      onActionPressed: onActionPressed,
    );
  }

  /// Show a snackbar with custom color and icon
  static void showCustom({
    required BuildContext context,
    required String message,
    required Color backgroundColor,
    IconData? icon,
    Duration duration = const Duration(seconds: 3),
    String? actionLabel,
    VoidCallback? onActionPressed,
  }) {
    _showStyledSnackbar(
      context: context,
      message: message,
      backgroundColor: backgroundColor,
      icon: icon,
      duration: duration,
      actionLabel: actionLabel,
      onActionPressed: onActionPressed,
    );
  }

  /// Internal method for styled snackbars
  static void _showStyledSnackbar({
    required BuildContext context,
    required String message,
    required Color backgroundColor,
    IconData? icon,
    Duration duration = const Duration(seconds: 3),
    String? actionLabel,
    VoidCallback? onActionPressed,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            if (icon != null) ...[
              Icon(
                icon,
                color: Colors.white,
                size: 20,
              ),
              const SizedBox(width: 12),
            ],
            Expanded(
              child: Text(
                message,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        backgroundColor: backgroundColor,
        duration: duration,
        action: actionLabel != null && onActionPressed != null
            ? SnackBarAction(
                label: actionLabel,
                textColor: Colors.white,
                onPressed: onActionPressed,
              )
            : null,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 6,
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
    );
  }

  /// Show a snackbar with an action button
  static void showWithAction({
    required BuildContext context,
    required String message,
    required String actionLabel,
    required VoidCallback onPressed,
    Duration duration = const Duration(seconds: 5),
    Color? backgroundColor,
  }) {
    showSnackbar(
      context: context,
      message: message,
      duration: duration,
      backgroundColor: backgroundColor,
      action: SnackBarAction(
        label: actionLabel,
        textColor: Colors.white,
        onPressed: onPressed,
      ),
    );
  }

  /// Clear all snackbars
  static void clear({
    required BuildContext context,
  }) {
    ScaffoldMessenger.of(context).clearSnackBars();
  }

  /// Remove the current snackbar
  static void hideCurrent({
    required BuildContext context,
  }) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
  }

  /// Show a persistent snackbar that requires manual dismissal
  static void showPersistent({
    required BuildContext context,
    required String message,
    required String actionLabel,
    required VoidCallback onActionPressed,
    Color? backgroundColor,
  }) {
    showSnackbar(
      context: context,
      message: message,
      duration: const Duration(days: 365), // Effectively infinite
      backgroundColor: backgroundColor,
      action: SnackBarAction(
        label: actionLabel,
        textColor: Colors.white,
        onPressed: onActionPressed,
      ),
    );
  }
}