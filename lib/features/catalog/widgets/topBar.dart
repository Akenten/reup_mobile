import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:reup/features/common/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopBarCatalog extends StatelessWidget {
  const TopBarCatalog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const SizedBox(
          height: 32,
          width: 32,
        ),
        const Text(
          'каталог',
          style: CustomTextStyle.reupCartName,
          maxLines: 1,
        ),
        IconButton(
          onPressed: (() {
            log('search');
          }),
          icon: SvgPicture.asset('assets/icons/reup_search.svg'),
          iconSize: 16,
        )
      ]),
    );
  }
}
