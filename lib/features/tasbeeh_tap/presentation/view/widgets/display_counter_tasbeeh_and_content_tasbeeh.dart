import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/features/tasbeeh_tap/presentation/view/widgets/show_content_tasbeeh.dart';
import 'package:islamic_app/features/tasbeeh_tap/presentation/view/widgets/show_counter_tasbeeh.dart';
import 'package:islamic_app/features/tasbeeh_tap/presentation/view_model/tasbeeh_tap_view_model.dart';
import 'package:provider/provider.dart';

class DisplayCounterTasbeehAndContentTasbeeh extends StatefulWidget {
  const DisplayCounterTasbeehAndContentTasbeeh({
    super.key,
  });

  @override
  State<DisplayCounterTasbeehAndContentTasbeeh> createState() => _DisplayCounterTasbeehAndContentTasbeehState();
}

class _DisplayCounterTasbeehAndContentTasbeehState extends State<DisplayCounterTasbeehAndContentTasbeeh> {
  @override
  void initState() {
    super.initState();
    loadTheData();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        const ShowCounterTasbeeh(),
        SizedBox(height: 22.h),
        const ShowContentTasbeeh(),
      ]
    );
  }
  void loadTheData()async{
    await Provider.of<TasbeehTapViewModel>(context,listen: false).readFile();
    Provider.of<TasbeehTapViewModel>(context,listen: false).getSelectedTasbeehFromCache();

  }
}