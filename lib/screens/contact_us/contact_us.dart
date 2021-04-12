import 'package:concept_loft_webpage/common_widgets/app_bar_concept.dart';
import 'package:concept_loft_webpage/common_widgets/floating_button.dart';
import 'package:concept_loft_webpage/screens/contact_us/sample_contact_us.dart';
import 'package:flutter/material.dart';


class ContactUs extends StatelessWidget {
  const ContactUs({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: FloatingButton(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AppBarConcept(
              mainPage: false,
            ),
            SizedBox(
              height: 30,
            ),
            SampleContactUs()
          ],
        ),
      ),
    );
  }
}
