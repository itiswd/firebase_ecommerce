import 'package:firebase_ecommerce/common/widgets/custom_shapes/header_container.dart';
import 'package:firebase_ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  THomeAppBar(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
