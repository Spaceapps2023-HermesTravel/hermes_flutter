import 'package:file_saver/file_saver.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class HandbookPage extends StatelessWidget {
  const HandbookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 128, horizontal: 32),
      alignment: Alignment.center,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset('assets/handbook.png'),
          ),
          SizedBox(height: 16),
          FilledButton(
            onPressed: () async {
              FileSaver.instance.saveFile(
                name: 'handbook.docx',
                bytes: (await rootBundle.load('assets/handbook.docx'))
                    .buffer
                    .asUint8List(),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Download handbook',
                style: TextStyle(fontSize: 32),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
