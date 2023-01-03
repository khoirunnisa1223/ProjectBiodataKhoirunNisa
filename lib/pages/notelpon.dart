import 'package:biodata_flutter/pages/email.dart';
import 'package:biodata_flutter/pages/notelpon.dart';
import 'package:biodata_flutter/pages/alamat.dart';
import 'package:flutter/material.dart';
import "package:biodata_flutter/theme.dart";
import 'package:url_launcher/url_launcher.dart';

class notelpon extends StatelessWidget {
  const notelpon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildImage() {
      return Expanded(
        child: Center(
          child: Container(
            width: 280,
            height: 154,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/foto.jpg',
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget buildBottomSheet() {
      return Container(
        height: 450,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(40),
          ),
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              'Phone Number\n'
              '_______________',
              style: blackTextStyle.copyWith(
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              '081368688230',
              // textAlign: TextAlign.center,
              style: greyTextStyle.copyWith(
                fontSize: 18,
                wordSpacing: 5,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          buildImage(),
          buildBottomSheet(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context
          );
        },
      ),
    );
  }
}