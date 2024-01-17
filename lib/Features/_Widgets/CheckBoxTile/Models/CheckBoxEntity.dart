import 'package:his/Features/_SharedDomain/Services/Service.dart';

typedef CheckBoxEntity = ({String text, bool selection});
typedef MaterialCheckBoxEntity = ({CategoryMaterialName text, bool selection});

CheckBoxEntity checkBoxEntity({required String text, bool selection = false}) =>
    (text: text, selection: selection);

MaterialCheckBoxEntity materialCheckBoxEntity(
        {required CategoryMaterialName text, bool selection = false}) =>
    (text: text, selection: selection);
