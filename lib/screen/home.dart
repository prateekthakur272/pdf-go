import 'package:flutter/material.dart';
import 'package:pdf_go/widgets/home_item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PDF Go"),
        centerTitle: true,
      ),
      body: Center(
          child: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 1,
        children: [
          HomeItem(
            title: 'Merge PDFs',
            image: Image.network(
                'https://img.freepik.com/free-icon/pdf_318-310834.jpg'),
            onClick: () {},
          ),
          HomeItem(
            title: 'Merge PDFs',
            image: Image.network(
                'https://img.freepik.com/free-icon/pdf_318-310834.jpg'),
            onClick: () {},
          ),
          HomeItem(
            title: 'Merge PDFs',
            image: Image.network(
                'https://img.freepik.com/free-icon/pdf_318-310834.jpg'),
            onClick: () {},
          ),
          HomeItem(
            title: 'Merge PDFs',
            image: Image.network(
                'https://img.freepik.com/free-icon/pdf_318-310834.jpg'),
            onClick: () {},
          ),
          HomeItem(
            title: 'Merge PDFs',
            image: Image.network(
                'https://img.freepik.com/free-icon/pdf_318-310834.jpg'),
            onClick: () {},
          ),
          HomeItem(
            title: 'Merge PDFs',
            image: Image.network(
                'https://img.freepik.com/free-icon/pdf_318-310834.jpg'),
            onClick: () {},
          ),
        ],
      )),
    );
  }
}
