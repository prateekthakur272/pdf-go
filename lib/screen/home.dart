import 'package:flutter/material.dart';
import 'package:pdf_go/widgets/home_item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            snap: true,
            floating: true,
            expandedHeight: MediaQuery.of(context).size.height * .2,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('PDf Go'),
            ),
          ),
          SliverGrid.count(
            crossAxisCount: 3,
            children: [
              HomeItem(
                  title: 'Image to PDF',
                  image: Image.network(
                      'https://img.freepik.com/free-icon/pdf_318-310834.jpg'),
                  onClick: () {}),
            ],
          )
        ],
      ),
    ));
  }
}
