import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SetListTile extends StatefulWidget {
  final String title;

  SetListTile({required this.title});

  @override
  _SetListTileState createState() => _SetListTileState();
}

class _SetListTileState extends State<SetListTile> {
  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: const ActionPane(
        motion: StretchMotion(),
        children: [
          SlidableAction(
          onPressed: null,
          backgroundColor: Color(0xFFFE4A49),
          foregroundColor: Colors.white,
          icon: Icons.delete,
          label: 'Delete',
        ),
        ]
        
      ),
      child: Container(
        height: 60,
        child: ListTile(
          title: Text(widget.title),
          trailing: IconButton(icon: Icon(Icons.abc), onPressed: () {  },), // Add any other customization you need for your ListTile here
        ),
      ),
    );
  }
}
