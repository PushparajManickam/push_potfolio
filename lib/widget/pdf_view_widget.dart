import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';
import 'package:push_potfolio/theme/color.dart';

class PDFViewWidget extends StatefulWidget {
  const PDFViewWidget({super.key});

  @override
  State<PDFViewWidget> createState() => _PDFViewWidgetState();
}

class _PDFViewWidgetState extends State<PDFViewWidget> {
  PdfController? pdfController;
  loadPDF() {
    pdfController = PdfController(
      document: PdfDocument.openAsset(
        'assets/pdf/pushparaj_resume.pdf',
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    loadPDF();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.blackColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: PdfView(
          controller: pdfController!,
        ),
      ),
    );
  }
}
