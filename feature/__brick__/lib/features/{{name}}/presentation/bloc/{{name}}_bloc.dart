import 'package:flutter_bloc/flutter_bloc.dart';

part '{{name}}_state.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}}Bloc
extends Cubit<{{#pascalCase}}{{name}}{{/pascalCase}}State> {

{{#pascalCase}}{{name}}{{/pascalCase}}Bloc()
    : super({{#pascalCase}}{{name}}{{/pascalCase}}Initial());
}