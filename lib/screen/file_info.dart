import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';

class FileInfo extends StatelessWidget {
  final PlatformFile file;
  const FileInfo({super.key, required this.file});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('File Info'),
        ),
        body: Center(
          child: ListView(
            padding: const EdgeInsets.all(24),
            children: [
              Text(
                file.name,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8,
              ),
              Table(
                children: [
                  TableRow(children: [
                    tableCellNormal('Type'),
                    tableCellBold(file.extension!)
                  ]),
                  TableRow(children: [
                    tableCellNormal('Size'),
                    tableCellBold('${file.size.toString()} bytes')
                  ]),
                  TableRow(children: [
                    tableCellNormal('Path'),
                    tableCellBold(file.path.toString())
                  ]),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                  onPressed: () {
                    OpenFile.open(file.path);
                  },
                  child: const Text('Open'))
            ],
          ),
        ));
  }
}

Widget tableCellNormal(String text) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Text(
      text,
      textAlign: TextAlign.end,
    ),
  );
}

Widget tableCellBold(String text) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Text(
      text,
      style: const TextStyle(fontWeight: FontWeight.bold),
    ),
  );
}
