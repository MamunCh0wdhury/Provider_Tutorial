import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/provider/sliderExample.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Slider Example"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<SliderProviderExample>(builder: (context,value,child){
            return Slider(
                value: value.value,
                onChanged: (val) {
                  value.setValue(val);
                });
          }),

          Consumer<SliderProviderExample>(builder: (context,value,child){
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration:
                    BoxDecoration(color: Colors.green.withOpacity(value.value),),
                    child: const Center(
                      child: Text("Container 1"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration:
                    BoxDecoration(color: Colors.red.withOpacity(value.value),),
                    child: const Center(
                      child: Text("Container 2"),
                    ),
                  ),
                ),
              ],
            );
          })
        ],
      ),
    );
  }
}
