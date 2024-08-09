
// Import ObjectBox

import 'package:objectbox/objectbox.dart';

import 'objectbox.g.dart';

@Entity()
class Rec {
  @Id() // Make sure you have this annotation for the id field
  int id;
  String name;
  String ingredient;
  String instruction;

  Rec({ this.id=0, required this.name, required this.ingredient, required this.instruction});
}
