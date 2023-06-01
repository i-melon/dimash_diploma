import 'package:flutter/material.dart';

class Find extends StatelessWidget {
  const Find({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Center(
        child: Stack(alignment: AlignmentDirectional.bottomEnd, children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                color: Color.fromARGB(255, 241, 148, 158),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 0),
                      spreadRadius: 1,
                      blurRadius: 5,
                      color: Color.fromARGB(255, 28, 37, 113))
                ]),
            height: 400,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Найдите опытного врача',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 63, 163, 93),
                        fontSize: 50,
                        shadows: [
                          Shadow(
                              offset: Offset.zero,
                              color: Colors.white,
                              blurRadius: 4)
                        ])),
                Text('Ознакомтесь с отзывами, оставленными другими клиентами',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 16, 38, 65),
                        fontSize: 20)),
                Text('Свяжитесь и получите полгую консультацию',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 16, 38, 65),
                        fontSize: 20)),
                Text('Оцените работу специалиста',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 16, 38, 65),
                        fontSize: 20))
              ],
            ),
          ),
          Container(
            height: 500,
            child: Image.network(
                'https://s3-alpha-sig.figma.com/img/9630/72a2/4a6ff4f05d42788907e003f6df8174c0?Expires=1686528000&Signature=crKtuEdjiHnkJsqu66MuLr3AUUx12i~6kU0OxKy7PAWoWM2JLvFSrImkmho2Q8aissyG8NvMV3MmzQzoqpUl2LKhMvhvPdz0qFsSm4QxrfGOrGRme6EWb6pNn5MeafqQtu7tA~whv5YJGP1lVlpntmPLXGSt7YoasBlQq9~8wg5oZhFnW5Cn7WWV2sGS-Ww2RDIqnWuJB-YkRew~lJPsevtrL3hM02wolFztmb647HsouNCTg-G~-~5NZDXTqx6qOYzP6PT0LnO2M4sXKMYBiF27SHsIT1rBSPJyhZ1spLwrU-1~Owp8qsIecqpgc7Eda04N6fZvzNGFfV2F1hYajQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
                fit: BoxFit.cover),
          )
        ]),
      ),
    );
  }
}
