import 'package:flutter/material.dart';

Widget buildAbout() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Title(
        color: Colors.black,
        child: const Text(
          'About',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      const Text(
        'Ad exercitation excepteur occaecat nisi minim deserunt officia. Pariatur est proident occaecat Lorem veniam pariatur anim. Commodo in cillum sit laborum incididunt reprehenderit nulla aliqua amet. Laborum non non velit do aliqua veniam ut qui est ullamco dolore pariatur esse aliquip. Sunt pariatur enim incididunt eiusmod excepteur aliquip veniam minim elit. Nisi anim elit consectetur eu nulla Lorem ad. Dolore ut officia duis Lorem mollit laborum culpa in aliquip ad nisi fugiat.',
        style: TextStyle(fontSize: 24),
        textAlign: TextAlign.left,
      )
    ],
  );
}
