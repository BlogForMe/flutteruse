import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomScroll extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RecognitionState();
  }
}

class _RecognitionState extends State<CustomScroll> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text('扫描结果')),
        body: Container(
          color: Color(0XffFAD961),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: DecoratedBox(
                      child: resultReg(),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6))),
                ),
              )
              ,
              bottomButton(),
            ],
          )

        //   child: Column(
        //     children: [
        //       Expanded(
        //         child: resultReg(),
        //       ),
        //       bottomButton(),
        //     ],
        //   ),
        ));
  }

  Widget resultReg() {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              // To convert this infinite list to a list with three items,
              // uncomment the following line:
              // if (index > 3) return null;
              return _nutritionItem(context);
            },
            // Or, uncomment the following line:
            childCount: 20,
          ),
        ),
        SliverVisibility(
          sliver:
              SliverToBoxAdapter(child: Text('I become a SliverToBoxAdapter!')),
          visible: true,
        ),
        SliverToBoxAdapter(child: Text('I become a Sliver!')),
      ],
    );
  }

  Widget bottomButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: DecoratedBox(
          child: Row(
            children: [
              Expanded(
                child: Text('重拍'),
              ),
              Expanded(
                child: Text('试试语音问一问'),
              )
            ],
          ),
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.white, spreadRadius: 4.5)],
            // border:
            //     Border.all(color: ColorUnit.colorD(), width: 1)
          )),
    );
  }

  Widget _nutritionItem(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('能量'),
          Text(
            '110.6',
          ),
          Text(
            'kcal',
          )
        ],
      ),
    );
  }
}
