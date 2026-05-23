import 'package:flutter/material.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}}Screen
extends StatelessWidget {

const {{#pascalCase}}{{name}}{{/pascalCase}}Screen({super.key});

@override
Widget build(BuildContext context) {
return const Scaffold(
body: Center(
child: Text('{{#pascalCase}}{{name}}{{/pascalCase}} Screen'),
),
);
}
}