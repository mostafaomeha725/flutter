import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.hint,
    this.onchanged,
    this.fillColor = Colors.white,
    this.colortext = Colors.black,
    this.onsumbitted,
    this.controller,
    this.active = false,
    this.isnum = false,
    this.onSaved,
  });
  final String? hint;
  final void Function(String)? onchanged;
  final Color? fillColor;
  final Color? colortext;
  final void Function(String)? onsumbitted;
  final TextEditingController? controller;
  final bool active;
  final bool isnum;
  final void Function(String?)? onSaved;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscureText = true;

  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: widget.onSaved,
      keyboardType: widget.isnum ? TextInputType.number : TextInputType.text,
      obscureText: widget.active ? obscureText : !obscureText,
      controller: widget.controller,
      style: TextStyle(color: widget.colortext),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Error';
        }
        return null;
      },
      onChanged: widget.onchanged,
      decoration: InputDecoration(
        suffixIcon: widget.active
            ? IconButton(
                icon: Icon(
                  obscureText ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
                onPressed: () {
                  if (widget.active) {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  }
                },
              )
            : const SizedBox(),

        fillColor: widget.fillColor,
        filled: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 26, vertical: 22),
        hintText: widget.hint,
        //hintStyle: TextStyle(color: Colors.black.withOpacity(0.3)),
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Color.fromARGB(255, 213, 215, 215)),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Color.fromARGB(255, 213, 215, 215)),
        ),
      ),
    );
  }
}
