import 'package:flutter/material.dart';

class TicketState extends StatefulWidget {
  final int ticketId;
  final String ticketName;
  TicketState({@required this.ticketId, @required this.ticketName});
  @override
  _TicketStateState createState() => _TicketStateState();
}

class _TicketStateState extends State<TicketState> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: Container(
        decoration: new BoxDecoration(
            color: getTicketStateColor(),
            //shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(3.0))),
        margin: EdgeInsets.only(top: 5, bottom: 5),
        width: size.width * 0.45,
        height: size.height * 0.03,
        child: Center(
            child: Text(widget.ticketName,
                style: TextStyle(color: Colors.white, fontSize: 12))),
      ),
    );
  }

  Color getTicketStateColor() {
    if (widget.ticketId == 1) return Color.fromRGBO(248, 249, 250, 1);
    if (widget.ticketId == 2) return Color.fromRGBO(252, 202, 41, 1);
    if (widget.ticketId == 3) return Color.fromRGBO(253, 140, 10, 1);
    if (widget.ticketId == 4) return Color.fromRGBO(40, 167, 69, 1);
    if (widget.ticketId == 5) return Color.fromRGBO(111, 116, 122, 1);
    return Color.fromRGBO(42, 48, 60, 1);
  }
}
