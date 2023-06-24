import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:pdf_go/widgets/home_item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            snap: true,
            floating: true,
            expandedHeight: screenSize.height * .2,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('PDf Go'),
            ),
          ),
          SliverGrid.count(
            crossAxisCount: screenSize.height > screenSize.width ? 3 : 5,
            children: [
              HomeItem(
                  title: 'Image to PDF',
                  image: Image.network(
                      'https://img.freepik.com/free-icon/pdf_318-310834.jpg'),
                  onClick: () async {
                    FilePickerResult? file = await FilePicker.platform
                        .pickFiles(type: FileType.image, allowMultiple: false);
                    if (file != null) {
                    } else {}
                  }),
            ],
          )
        ],
      ),
    ));
  }
}
