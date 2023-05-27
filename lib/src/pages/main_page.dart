import 'package:dimash_diploma/src/details/advantages.dart';
import 'package:dimash_diploma/src/details/bottom.dart';
import 'package:dimash_diploma/src/details/find.dart';
import 'package:dimash_diploma/src/details/item.dart';
import 'package:dimash_diploma/src/details/start.dart';
import 'package:dimash_diploma/src/details/steps.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(199, 248, 248, 248),
      appBar: AppBar(
          shadowColor: Color.fromARGB(255, 16, 38, 65),
          elevation: 5,
          backgroundColor: const Color.fromARGB(255, 241, 148, 158),
          title: Container(
            width: 250,
            child: Image.network(
              'https://s3-alpha-sig.figma.com/img/9f12/7ff8/3bb30dd79599efed645caf520a89703f?Expires=1685318400&Signature=eFrj7JPHbTE2wcS3y1AP4dzKck4d7u~30Vr8KUPvSkgWCifjTZhWXJq52x1hGHB5xKBKmZsbUu54mzNvM18mgP5K3iKApdk5Z1OA2ul~u2ue9aDTaLh4nqGI3nAHpYqnofftedrgsS9tKaIdRwp5fvOCbQ53b1Xi66b68EtQa5qxDZmWl6E1YYRjwVdbmiI3cNe0nen2MhXlYuqWWZ1WkOgcRF2~g1eEovtWTHy9cA7RFIr0UH4ardz1HRpV9vwzHsKASzVWTA04hrv1GRQZKGpyMWEizaYRHmPBuQHUf2gdkwJK-PxpsA0RVXt69bY~NzSPjlx3NVGR41GuREfIhw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
              fit: BoxFit.cover,
            ),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 150,
              ),
              child: Column(
                children: [
                  StartBlock(),
                  Advantages(),
                  Steps(),
                  Find(),
                ],
              ),
            ),
            Bottom()
          ],
        ),
      ),
    );
  }
}
