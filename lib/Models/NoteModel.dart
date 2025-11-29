import 'package:hive/hive.dart';
part 'NoteModel.g.dart';

///                                  ///    ForGenerate Build code
///                                  → flutter packages pub run build_runner build
///                               Important


@HiveType(typeId: 0)
class Notemodel extends HiveObject {

  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subtitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;


  Notemodel({
    required this.title,
    required this.subtitle,
    required this.date,
    required this.color,
  });
}
