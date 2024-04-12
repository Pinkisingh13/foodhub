import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodhub/common/widgets/column_image/itemlist.dart';
import 'package:foodhub/common/widgets/row_title_divider/row_titlewith_divider.dart';
import 'package:foodhub/utils/constants/colors.dart';
import 'package:foodhub/utils/constants/image_strings.dart';
import 'package:foodhub/utils/constants/sizes.dart';
import 'package:foodhub/utils/constants/text_strings.dart';

class PCategoryOfItems extends StatelessWidget {
  const PCategoryOfItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const RowTitleWithDivider(title: PTexts.categoryOfItemTitle,),
        const SizedBox(
          height: PSizes.spaceBtwItems,
        ),
    
        // Items ---
        SizedBox(
          
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              PItemsList(
                image1: PImages.productImage1,
                image2: PImages.productImage2,
              ),
              PItemsList(
                image1: PImages.productImage3,
                image2: PImages.productImage4,
              ),
              PItemsList(
                image1: PImages.productImage5,
                image2: PImages.productImage6,
              ),
              PItemsList(
                image1: PImages.productImage7,
                image2: PImages.productImage8,
              ),
              PItemsList(
                image1: PImages.productImage9,
                image2: PImages.productImage10,
              ),
              PItemsList(
                image1: PImages.productImage11,
                image2: PImages.productImage2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

