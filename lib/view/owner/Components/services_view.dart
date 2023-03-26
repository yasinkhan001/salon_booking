import 'package:flutter/material.dart';
import 'package:saloon_booking/colors/colors.dart';

class ServiceView extends StatelessWidget {
  const ServiceView(
      {required this.serviceName,
      required this.servicePrice,
      required this.onRemove,
      Key? key})
      : super(key: key);
  final String serviceName;
  final String servicePrice;
  final void Function() onRemove;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: MediaQuery.of(context).size.width * 0.8,
      child: Stack(
        children: [
          Card(
            color: mainColor,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 10),
                        child: Text(
                          "Service: $serviceName",
                          style: Theme.of(context).textTheme.titleLarge!,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 10),
                        child: Text(
                          "Price: $servicePrice",
                          style: Theme.of(context).textTheme.bodyMedium!,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              top: 0,
              right: 0,
              child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.orange, shape: BoxShape.circle),
                  padding: const EdgeInsets.all(5),
                  child: InkWell(
                      onTap: onRemove,
                      child: const Icon(
                        Icons.close_outlined,
                        color: Colors.white,
                      ))))
        ],
      ),
    );
  }
}
