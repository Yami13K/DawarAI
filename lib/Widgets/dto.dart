import 'dart:ui';

import 'package:carp_background_location/carp_background_location.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


Widget dtoWidget(LocationDto? dto) {
  if (dto == null) {
    print('gg');
    return const Text(
      "No location yet",
      style: TextStyle(fontSize: 35),
    );
  } else {
    return Column(
      children: <Widget>[
        Text(
          '${dto.latitude}, ${dto.longitude}',
          style: TextStyle(fontSize: 34),
        ),
        const Divider(),
        const Text(
          '@',
          style: TextStyle(fontSize: 35),
        ),
        const Divider(),
        Text(
          '${DateTime.fromMillisecondsSinceEpoch(dto.time ~/ 1)}',
          style: const TextStyle(
            fontSize: 36,
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
class dtoButton extends StatelessWidget {
  const dtoButton( {Key? key, required this.func, required this.txt}) : super(key: key);
  final Function func ;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.08,
        width : MediaQuery.of(context).size.width * 0.5,
        child: ElevatedButton(
          child: Text(txt,style: const TextStyle(fontSize: 27, fontWeight: FontWeight.w600),),
          onPressed:() => func(),
        ),
      ),
    );
  }
}


