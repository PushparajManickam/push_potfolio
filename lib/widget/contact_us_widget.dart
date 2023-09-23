import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:push_potfolio/config/global_widget.dart';
import 'package:push_potfolio/config/style.dart';
import 'package:push_potfolio/theme/color.dart';
import 'title_widget.dart';

class ContactUsWidget extends StatefulWidget {
  const ContactUsWidget({super.key});

  @override
  State<ContactUsWidget> createState() => _ContactUsWidgetState();
}

class _ContactUsWidgetState extends State<ContactUsWidget> {
  /// Formkey
  final _formkey = GlobalKey<FormState>();

  /// Controller
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _phoneNumberController = new TextEditingController();
  TextEditingController _messageController = new TextEditingController();

  /// Focusnode
  FocusNode _nameFocusNode = FocusNode();
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _phoneFocusNode = FocusNode();
  FocusNode _messageFocusNode = FocusNode();

  /// Input-formatter
  List<TextInputFormatter>? _nameInputFormatter = [
    // FilteringTextInputFormatter.allow(
    //   RegExp(
    //     r'^[A-Za-z]{4,29}$',
    //   ),
    // ),
  ];
  List<TextInputFormatter>? _emailInputFormatter = [];
  List<TextInputFormatter>? _phoneNumberInputFormatter = [];
  List<TextInputFormatter>? _messageInputFormatter = [];

  @override
  void initState() {
    super.initState();
    _controllerListening();
  }

  _controllerListening() {
    _nameController.addListener(() {
      setState(() {});
    });
    _emailController.addListener(() {
      setState(() {});
    });
    _phoneNumberController.addListener(() {
      setState(() {});
    });
    _messageController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _disposeController();
  }

  _disposeController() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _messageController.dispose();
    _nameFocusNode.dispose();
    _emailFocusNode.dispose();
    _phoneFocusNode.dispose();
    _messageFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      //autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          TitleWidget("Contact Us"),
          const GlobalSizedBoxHeight(),
          Padding(
            padding: MyStyle.symmetricPadding,
            child: TextFormField(
              key: Key('name_tf'),
              controller: _nameController,
              autocorrect: true,
              focusNode: _nameFocusNode,
              inputFormatters: _nameInputFormatter,
              validator: _nameValidator,
              onChanged: _nameOnChanged,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person,
                ),
                prefixIconColor: MyColor.blackColor,
                suffixIcon: (_nameController.text.isEmpty)
                    ? Container(
                        width: 0,
                      )
                    : IconButton(
                        onPressed: () => _nameController.clear(),
                        icon: Icon(
                          Icons.clear,
                        ),
                      ),
                suffixIconColor: MyColor.blackColor,
                hintText: 'Enter your name',
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                border: MyStyle.textFieldBorder,
                enabledBorder: MyStyle.enabledTextFieldBorder,
                focusedBorder: MyStyle.focusedTextFieldBorder,
                errorBorder: MyStyle.errorTextFieldBorder,
              ),
            ),
          ),
          Padding(
            padding: MyStyle.symmetricPadding,
            child: TextFormField(
              key: Key('email_tf'),
              controller: _emailController,
              autocorrect: true,
              focusNode: _emailFocusNode,
              inputFormatters: _emailInputFormatter,
              validator: _emailValidator,
              onChanged: _emailOnChanged,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.mail,
                ),
                prefixIconColor: MyColor.blackColor,
                suffixIcon: (_emailController.text.isEmpty)
                    ? Container(
                        width: 0,
                      )
                    : IconButton(
                        onPressed: () => _emailController.clear(),
                        icon: Icon(
                          Icons.clear,
                        ),
                      ),
                hintText: 'Enter your email',
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                border: MyStyle.textFieldBorder,
                enabledBorder: MyStyle.enabledTextFieldBorder,
                focusedBorder: MyStyle.focusedTextFieldBorder,
                errorBorder: MyStyle.errorTextFieldBorder,
              ),
            ),
          ),
          Padding(
            padding: MyStyle.symmetricPadding,
            child: TextFormField(
              key: Key('phone_number_tf'),
              controller: _phoneNumberController,
              autocorrect: true,
              focusNode: _phoneFocusNode,
              inputFormatters: _phoneNumberInputFormatter,
              validator: _phoneNumberValidator,
              onChanged: _phoneNumberOnChanged,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.phone,
                ),
                prefixIconColor: MyColor.blackColor,
                suffixIcon: (_phoneNumberController.text.isEmpty)
                    ? Container(
                        width: 0,
                      )
                    : IconButton(
                        onPressed: () => _phoneNumberController.clear(),
                        icon: Icon(
                          Icons.clear,
                        ),
                      ),
                hintText: 'Enter your phone number',
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                border: MyStyle.textFieldBorder,
                enabledBorder: MyStyle.enabledTextFieldBorder,
                focusedBorder: MyStyle.focusedTextFieldBorder,
                errorBorder: MyStyle.errorTextFieldBorder,
              ),
            ),
          ),
          Padding(
            padding: MyStyle.symmetricPadding,
            child: TextFormField(
              key: Key('message_tf'),
              controller: _messageController,
              autocorrect: true,
              focusNode: _messageFocusNode,
              inputFormatters: _messageInputFormatter,
              validator: _messsageValidator,
              onChanged: _messageOnChanged,
              textInputAction: TextInputAction.send,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.message,
                ),
                prefixIconColor: MyColor.blackColor,
                suffixIcon: (_messageController.text.isEmpty)
                    ? Container(
                        width: 0,
                      )
                    : IconButton(
                        onPressed: () => _messageController.clear(),
                        icon: Icon(
                          Icons.clear,
                        ),
                      ),
                hintText: 'Enter your message',
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                border: MyStyle.textFieldBorder,
                enabledBorder: MyStyle.enabledTextFieldBorder,
                focusedBorder: MyStyle.focusedTextFieldBorder,
                errorBorder: MyStyle.errorTextFieldBorder,
              ),
            ),
          ),
          const GlobalSizedBoxHeight(),
          MaterialButton(
            onPressed: () {
              const snackBar = SnackBar(
                margin: EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 10.0,
                ),
                content: Text(
                  'Data submited successfully...',
                ),
              );
              if (_formkey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  snackBar,
                );
              }
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }

  String? _nameValidator(String? value) {
    if (value!.isEmpty) {
      return 'Enter your name';
    }
    return null;
  }

  String? _emailValidator(String? value) {
    if (value!.isEmpty) {
      return 'Enter your email';
    }
    return null;
  }

  String? _phoneNumberValidator(String? value) {
    if (value!.isEmpty) {
      return 'Enter your phone number';
    }
    return null;
  }

  String? _messsageValidator(String? value) {
    if (value!.isEmpty) {
      return 'Enter your message';
    }
    return null;
  }

  _nameOnChanged(value) {}
  _phoneNumberOnChanged(value) {}
  _emailOnChanged(value) {}
  _messageOnChanged(value) {}
}
