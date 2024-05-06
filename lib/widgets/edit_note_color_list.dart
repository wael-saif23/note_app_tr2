import 'package:flutter/material.dart';
import 'package:note_app_tr2/constants.dart';
import 'package:note_app_tr2/models/note_model.dart';
import 'package:note_app_tr2/widgets/colors_items.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  late int selectedColorIndex;
  @override
  void initState() {
    selectedColorIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              selectedColorIndex = index;
              widget.note.color = kColors[index].value;
              setState(() {});
            },
            child: ColorsItem(
              colors: kColors[index],
              isactive: selectedColorIndex == index,
            ),
          );
        },
      ),
    );
  }
}
