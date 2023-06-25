import 'dart:io';

import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf_merger/pdf_merger.dart';

class PDF {
  static Future<bool> imageToPDF(List<String> paths) async {
    final output = await outputPath();
    CreatePDFFromMultipleImageResponse response =
        await PdfMerger.createPDFFromMultipleImage(
            paths: paths, outputDirPath: output);
    if (response.status == 'success') {
      await OpenFile.open(output);
      File(output).delete();
      return true;
    }
    return false;
  }

  static Future<bool> mergePDFs(List<String> paths) async {
    final output = await outputPath();
    MergeMultiplePDFResponse response =
        await PdfMerger.mergeMultiplePDF(paths: paths, outputDirPath: output);
    if (response.status == 'success') {
      await OpenFile.open(output);
      File(output).delete();
      return true;
    }
    return false;
  }

  static Future<String> outputPath() async {
    return '${(await getTemporaryDirectory()).path}${DateTime.now()}.pdf';
  }
}
