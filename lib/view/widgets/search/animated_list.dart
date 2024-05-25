import 'package:flutter/material.dart';

import '../../../data/model/stationmodel/conctore_model.dart';
import '../station/conctore_item.dart';


class LAnimatedList extends StatefulWidget {
  const LAnimatedList({super.key});

  @override
  LAnimatedListState createState() {
    return LAnimatedListState();
  }
}

class LAnimatedListState extends State<LAnimatedList> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();

  final List<String> _data = <String>[
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: AnimatedList(
            key: _listKey,
            initialItemCount: _data.length,
            itemBuilder: (BuildContext context, int index, Animation<double> animation) =>
                _buildItem(context, _data[index], animation),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ElevatedButton(
              child: const Text(
                'Add',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onPressed: () {
                _addAnItem();
              },
            ),
            ElevatedButton(
              child: const Text(
                'Remove',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onPressed: () {
                _removeLastItem();
              },
            ),
          ],
        )
      ],
    );
  }

  Widget _buildItem(
      BuildContext context, String item, Animation<double> animation) {
    const TextStyle textStyle = TextStyle(fontSize: 20);

    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: SizeTransition(
        sizeFactor: animation,
        axis: Axis.vertical,
        child: SizedBox(
          height: 50.0,
          child: Card(
            child: Center(
              child: Text(item, style: textStyle),
            ),
          ),
        ),
      ),
    );
  }

  void _addAnItem() {
    // _data.add("value");
    _data.insert(0, 'Inserted Item');
    _listKey.currentState!.insertItem(0);
  }

  void _removeLastItem() {
    final String itemToRemove = _data[0];

    _listKey.currentState!.removeItem(0, (BuildContext context, Animation<double> animation) =>
        _buildItem(context, itemToRemove, animation), duration: const Duration(milliseconds: 250),);

    _data.removeAt(0);
  }
}




class LChoiceChip extends StatefulWidget {
  const LChoiceChip({super.key});

  @override
  State<LChoiceChip> createState() => _LChoiceChipState();
}


class _LChoiceChipState extends State<LChoiceChip> {
  final List<String> _dataList = <String>[
    'Choice 1',
    'Choice 2',
    'Choice 3',
    'Choice 4',
    'Choice 5',
    'Choice 6',
    'Choice 7',
    'Choice 8'
  ];
  int? _value = 1;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _dataList.length,
      itemBuilder: (BuildContext context, int index) {
        return ChoiceChip(
          label: Text(_dataList[index]),
          selected: _value == index,
          selectedColor: Colors.amber,
          selectedShadowColor: Colors.red,
          onSelected: (bool value) {
            setState(() {
              _value = value ? index : null;
            });
          },
          backgroundColor: Colors.blue,
          labelStyle: const TextStyle(color: Colors.white),
        );
      },
    );
  }
}



class LRadioListTile extends StatefulWidget {
  const LRadioListTile({super.key});

  @override
  State<LRadioListTile> createState() => _LRadioListTileState();
}

class _LRadioListTileState extends State<LRadioListTile> {
  Color? _bgColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _bgColor,
      child: Column(
        children: <Widget>[
          const Text(
            '\nSet background color\n',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          RadioListTile<Color>(
            title: const Text('Green'),
            value: Colors.lightGreen,
            groupValue: _bgColor,
            onChanged: (Color? value) {
              setState(() {
                _bgColor = value;
              });
            },
          ),
          RadioListTile<Color>(
            title: const Text('Amber'),
            value: Colors.amber,
            groupValue: _bgColor,
            onChanged: (Color? value) {
              setState(() {
                _bgColor = value;
              });
            },
          ),
          RadioListTile<Color>(
            title: const Text('Yellow'),
            value: Colors.yellowAccent,
            groupValue: _bgColor,
            onChanged: (Color? value) {
              setState(() {
                _bgColor = value;
              });
            },
          ),
          RadioListTile<Color>(
            title: const Text('Blue'),
            value: Colors.lightBlueAccent,
            groupValue: _bgColor,
            onChanged: (Color? value) {
              setState(() {
                _bgColor = value;
              });
            },
          ),
          RadioListTile<Color>(
            title: const Text('Cyan'),
            value: Colors.cyanAccent,
            groupValue: _bgColor,
            onChanged: (Color? value) {
              setState(() {
                _bgColor = value;
              });
            },
          ),
          RadioListTile<Color>(
            title: const Text('Orange'),
            value: Colors.orange,
            groupValue: _bgColor,
            onChanged: (Color? value) {
              setState(() {
                _bgColor = value;
              });
            },
          ),
          RadioListTile<Color>(
            title: const Text('Purple'),
            value: Colors.deepPurple,
            groupValue: _bgColor,
            onChanged: (Color? value) {
              setState(() {
                _bgColor = value;
              });
            },
          ),
        ],
      ),
    );
  }
}





class LFilterChip extends StatefulWidget {
  const LFilterChip({super.key});

  @override
  State<LFilterChip> createState() => _LFilterChipState();
}

class _LFilterChipState extends State<LFilterChip> {
  final List<String> _dataList = <String>[
    'Choice 1',
    'Choice 2',
    'Choice 3',
    'Choice 4',
    'Choice 5',
    'Choice 6',
    'Choice 7',
    'Choice 8'
  ];
  List selected = [];
gggg(){
  return SelectionArea(child: ConnctorItem(conctoreModel:ConnectorModel.conctore_list[0]));
}
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: ConnectorModel.conctore_list.length,
      itemBuilder: (BuildContext context, int index) =>
          FilterChip(
           shape: StarBorder(),
        avatar:  Icon(Icons.add),
        materialTapTargetSize:MaterialTapTargetSize.padded ,

        label:SizedBox(
          width: 100,
            height: 200,
            child: gggg()),
        onSelected: (bool value) {
          if (selected.contains(index)) {
            selected.remove(index);
          } else {
            selected.add(index);
          }
          setState(() {});
        },
        selected: selected.contains(index),
        selectedColor: Colors.deepOrange,
        labelStyle: const TextStyle(
          color: Colors.white,
        ),
        backgroundColor: Colors.green,
      ),
    );
  }
}
