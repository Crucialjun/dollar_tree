import 'package:flutter/material.dart';

showPhotoPickDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0))),
          contentPadding: EdgeInsets.zero,
          title: const Text(
            "Select Photos",
            textAlign: TextAlign.center,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0)),
                  ),
                  onPressed: () {
                    Navigator.pop(dialogContext);
                    //ref.read(createEventProvider).pickFromCamera(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.photo_camera),
                      SizedBox(width: 8),
                      Text("From Camera"),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0)),
                  ),
                  onPressed: () {
                    Navigator.pop(dialogContext);
                    //ref.read(createEventProvider).pickImages(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.photo_library),
                      SizedBox(width: 8),
                      Text("From Gallery"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      });
}
