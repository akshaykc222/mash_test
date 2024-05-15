import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class PdfVieweScreen extends StatefulWidget {
  final String path;
  const PdfVieweScreen({super.key, required this.path});

  @override
  State<PdfVieweScreen> createState() => _PdfViewerState();
}

class _PdfViewerState extends State<PdfVieweScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PDFView(
        filePath: widget.path,
      ),
    );
  }
}
