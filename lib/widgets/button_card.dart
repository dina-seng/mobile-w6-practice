import 'package:flutter/material.dart';

enum IconPosition { left, right }

enum ColorType { primary, secondary, disable }

class ButtonCard extends StatelessWidget {
  final String label;
  final IconData icon;
  final IconPosition position;
  final ColorType color;

  const ButtonCard({
    super.key,
    required this.label,
    required this.icon,
    this.position = IconPosition.left,
    this.color = ColorType.primary,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Colors.blue;
    if (color == ColorType.primary) {
      backgroundColor = Colors.blue;
    } else if (color == ColorType.secondary) {
      backgroundColor = Colors.green;
    } else if (color == ColorType.disable) {
      backgroundColor = Colors.grey;
    }

    return Container(
      width: 200,
      height: 50,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: position == IconPosition.left
            ? [
                Padding(padding: const EdgeInsets.all(5), child: Icon(icon)),
                Text(label),
              ]
            : [
                Text(label),
                Padding(padding: const EdgeInsets.all(5), child: Icon(icon)),
              ],
      ),
    );
  }
}
