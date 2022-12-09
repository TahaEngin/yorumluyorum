import "package:flutter/material.dart";

class Temp_TextState extends StatefulWidget {
  var solIkon;
  var Tf_controller;
  String LabelT;
  bool visIcon;
  bool visText;
  Temp_TextState(this.solIkon,this.LabelT,this.Tf_controller,this.visIcon,this.visText);
  @override
  State<Temp_TextState> createState() => _Temp_TextStateState();
}

class _Temp_TextStateState extends State<Temp_TextState> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child:  Column(
        children:[
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: TextField(
            obscureText: widget.visText,
            controller: widget.Tf_controller,
            decoration:InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              labelText: widget.LabelT,
              prefixIcon: Icon(widget.solIkon),
              suffixIcon: Visibility(
                visible: widget.visIcon,
                child: IconButton(
                  icon: (widget.visText
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility)),
                  onPressed: (){setState(() {
                    if (widget.visText){
                      widget.visText = false;
                    }
                    else{
                      widget.visText =true;
                    }
                  });}
                ),
              ),
            ),
                  ),
          ),
        ] 
      ),
    );
  }
  bool goster = true;
}