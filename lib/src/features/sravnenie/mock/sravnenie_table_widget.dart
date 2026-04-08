

import 'package:flutter/material.dart';
import 'package:practice_app/src/features/sravnenie/mock/sravnenie_row_widget.dart';
import 'package:practice_app/src/features/sravnenie/screens/sravnenie_screen.dart';

class SravnenieTableSection extends StatelessWidget {
  const SravnenieTableSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:  Column(
        children: [
          SravnenieTableRowWidget(
            title: "Тип товара",
            value1: "Дрель-\nшуруповерт",
            value2: "Дрель-\nшуруповерт",
          ),
          SravnenieTableRowWidget(
            title: "Бренд",
            value1: "РЕСАНТА",
            value2: "РЕСАНТА",
          ),
          SravnenieTableRowWidget(
            title: "Назначение инструмента",
            value1: "Профессиональный",
            value2: "Профессиональный",
          ),
          SravnenieTableRowWidget(
            title: "Крутящий момент макс. (Нм)",
            value1: "2",
            value2: "2",
          ),
          SravnenieTableRowWidget(
            title: "Емкость аккумулятора батареи (Ач)",
            value1: "60",
            value2: "60",
          ),
          SravnenieTableRowWidget(
            title: "Напряжение аккумулятора (В)",
            value1: "24",
            value2: "24",
          ),
          SravnenieTableRowWidget(
            title: "Цвет",
            value1: "Серый",
            value2: "Серый",
          ),
          SravnenieTableRowWidget(
            title: "Диаметр патрона мин. (мм)",
            value1: "0,8",
            value2: "0,8",
          ),
          SravnenieTableRowWidget(
            title: "Скорость вращения 1 (об/мин)",
            value1: "1400",
            value2: "1400",
          ),
          SravnenieTableRowWidget(
            title: "Вес (кг)",
            value1: "2,58",
            value2: "2,58",
          ),
        ],
      ),
    );
  }
}