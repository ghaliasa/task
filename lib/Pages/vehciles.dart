import 'package:flutter/material.dart';
import 'package:task/Model/vehcile_model.dart';

import '../Component/vehcile_body.dart';

// ignore: must_be_immutable
class Vehciles extends StatefulWidget {
  List<VehcileModel> list;
  Vehciles({Key? key, required this.list}) : super(key: key);

  @override
  State<Vehciles> createState() => _VehcilesState();
}

class _VehcilesState extends State<Vehciles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // ignore: unnecessary_null_comparison
        body: widget.list == null
            ? const Center(
                child: CircularProgressIndicator(
                  color: Colors.amber,
                ),
              )
            : ListView.builder(
                itemCount: widget.list.length,
                itemBuilder: (context, i) {
                  return VehcileBody(
                    vehcileModel: widget.list[i],
                  );
                },
              ));
  }
}
