import 'package:dartz/dartz.dart';
import 'package:islamic_app/core/utils/services/txt/read_file_from_txt.dart';
import 'package:islamic_app/features/tasbeeh_tap/data/repos/tasbeeh_tap_repo.dart';
import '../../../../core/errors/failure.dart';

class TasbeehTapRepoLocal implements TasbeehTapRepo{
  late String fileData;
  late List<String> lines;
  @override
  Future<Either<Failure,List<String>>>fetchContentTheTasbeeh() async{
    fileData = await ReadFileFromTxt.loadData("assets/files/tasbeeh.txt");
    List<String> lines = fileData.split('\n').toList();
    return right(lines);
  }

}