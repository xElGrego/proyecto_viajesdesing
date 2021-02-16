import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:proyecto_viajesdesing/domain/controllers/dataicons_controller.dart';

final DataIconController _iconController = DataIconController();

class DataIcon extends StatelessWidget {
  final List<IconData> _dataIcons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.biking,
    FontAwesomeIcons.walking,
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      print("Estoy cambiando de estado");
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: _dataIcons
            .asMap()
            .entries
            .map((MapEntry map) => _buildIcon(map.key))
            .toList(),
      );
    });
  }

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        _iconController.index.value = index;
        print(_iconController.index);
      },
      child: Container(
        height: 70,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: _iconController.index.value == index
              ? Colors.yellow[400]
              : Colors.grey[200],
        ),
        child: Icon(
          _dataIcons[index],
          size: 26,
          color: _iconController.index.value == index
              ? Colors.yellow[900]
              : Colors.grey[600],
        ),
      ),
    );
  }
}
