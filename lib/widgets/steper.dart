import 'package:flutter/material.dart';

// MaterialColors.primaryColor[200]
//  MaterialColors.primaryColor[100]!
//                                 .withOpacity(0.4)

class SteperWidget extends StatefulWidget {
  final List<int>? listofstepsnumber;
  final List<String>? listofstepsname;
  final int? activestep;
  final ValueChanged<int>? onStepTapped;
  final bool isshowstepername;
  final Color? activestepnocolor;
  final Color? unactivestepnocolor;
  final Color? activestepnamecolor;
  final Color? unactivestepnamecolor;
  final Color? activestepcolor;
  final Color? unactivestepcolor;
  final Color? activelinecolor;
  final Color? unactivelinecolor;

  const SteperWidget({
    Key? key,
    this.listofstepsnumber = const [1, 2, 3],
    this.listofstepsname = const ['Step 1', 'Step 2', 'Step 3'],
    this.activestep = 1,
    this.onStepTapped,
    this.isshowstepername = false,
    this.activestepnocolor = Colors.white,
    this.activestepcolor = Colors.indigoAccent,
    this.activelinecolor = Colors.indigoAccent,
    this.activestepnamecolor = Colors.indigoAccent,
    this.unactivestepnocolor = Colors.black54,
    this.unactivestepcolor = Colors.white60,
    this.unactivelinecolor = Colors.white60,
    this.unactivestepnamecolor = Colors.grey,
  }) : super(key: key);

  @override
  _SteperWidgetState createState() => _SteperWidgetState();
}

class _SteperWidgetState extends State<SteperWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Row(
          children: List.generate(
            widget.listofstepsnumber!.length * 2 - 1,
            (index) {
              final stepIndex = index ~/ 2;
              final isOdd = index.isOdd;
              // final isActive = stepIndex == widget.activestep;

              return isOdd
                  ? Transform.translate(
                      offset:
                          Offset(0, widget.isshowstepername == true ? -7 : 0),
                      child: Text(
                        ' ••••• ',
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  color: stepIndex <= widget.activestep!
                                      ? widget.activelinecolor
                                      : widget.unactivelinecolor,
                                  letterSpacing: 3,
                                ),
                      ),
                    )
                  : Column(children: [
                      GestureDetector(
                        onTap: () {
                          if (widget.onStepTapped != null) {
                            widget.onStepTapped!(stepIndex);
                          }
                        },
                        child: CircleAvatar(
                          backgroundColor: stepIndex <= widget.activestep!
                              ? widget.activestepcolor
                              : widget.unactivestepcolor,
                          radius: 15,
                          child: Text(
                            widget.listofstepsnumber![stepIndex].toString(),
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  color: stepIndex <= widget.activestep!
                                      ? widget.activestepnocolor
                                      : widget.unactivestepnocolor,
                                  fontWeight: stepIndex <= widget.activestep!
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Visibility(
                          visible: widget.isshowstepername,
                          child: Text(
                            widget.listofstepsname![stepIndex].toString(),
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(
                                  color: stepIndex <= widget.activestep!
                                      ? widget.activestepnamecolor
                                      : widget.unactivestepnamecolor,
                                  letterSpacing: 1,
                                ),
                          ))
                    ]);
            },
          ),
        ),
      ),
    );
  }
}
