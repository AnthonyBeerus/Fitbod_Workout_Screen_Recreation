import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SetListTile extends StatefulWidget {
  final String title;

  SetListTile({required this.title});
  final TextEditingController kgController = TextEditingController();
  TextEditingController repsController = TextEditingController();

  @override
  _SetListTileState createState() => _SetListTileState();
}

class _SetListTileState extends State<SetListTile> {
  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: Key(widget.title),
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
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 3,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
        ),
        height: 120,
        child: ListTile(
          leading: IconButton(
            onPressed: (){},
            icon: const Icon(FontAwesomeIcons.a),
          ),
          subtitle: SizedBox(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(
                  backgroundColor: Theme.of(context).colorScheme.background,
                  padding: const EdgeInsets.all(10),
                  label: Text(
                    'KG',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondaryContainer,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                ),
                Chip(
                  backgroundColor: Theme.of(context).colorScheme.background,
                  padding: const EdgeInsets.all(10),
                  label: Text(
                    'Reps',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondaryContainer,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                ),
              ],
            ),
          ),
          trailing: IconButton(
            icon: const Icon(Icons.abc), 
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
