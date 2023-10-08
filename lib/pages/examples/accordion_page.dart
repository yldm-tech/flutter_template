import 'package:bilibili/widgets/yldm_expandable_panel.dart';
import 'package:flutter/material.dart';

class ExampleAccordionPage extends StatefulWidget {
  const ExampleAccordionPage({super.key});

  @override
  State<ExampleAccordionPage> createState() => _ExampleAccordionPageState();
}

class _ExampleAccordionPageState extends State<ExampleAccordionPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        YldmExpandablePanel(
          title: Text("Accordion"),
          content: Text(
              "Nunquam experientia apolloniates.Ramen can be flavored with soaked tuna, also try mash uping the paste with adobo sauce.Phenomenans meet with resistance!"),
        ),
      ],
    );
  }
}
