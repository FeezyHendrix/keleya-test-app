import "package:flutter/material.dart";

void toastMessage(context, message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}
