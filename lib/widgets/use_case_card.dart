import 'package:flutter/material.dart';

class UseCaseCard extends StatelessWidget {
  const UseCaseCard({
    @required this.title,
    this.onPressed,
    Key key,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tight(
        const Size.square(100),
      ),
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, 6.0),
            blurRadius: 12.0,
          ),
        ],
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(title),
      ),
    );
  }
}
