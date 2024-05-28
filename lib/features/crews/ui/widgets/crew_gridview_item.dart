import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:space_x/core/theming/colors.dart';
import 'package:space_x/core/theming/text_styles.dart';
import 'package:space_x/features/crews/data/models/all_crews_model.dart';
import 'package:space_x/features/crews/ui/crew_details_screen.dart';

class CrewMemberItem extends StatelessWidget {
  const CrewMemberItem(
      {super.key, required this.crewMember, required this.isNetworkConnected});

  final AllCrewsModel crewMember;
  final bool isNetworkConnected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isNetworkConnected
          ? () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return CrewsDetailsScreen(
                      crewModel: crewMember,
                    );
                  },
                ),
              );
            }
          : () {
              showToastNoNetwork(
                context,
              );
            },
      child: ClipRRect(
        borderRadius: BorderRadiusDirectional.circular(12),
        child: GridTile(
          footer: Container(
            padding: const EdgeInsetsDirectional.all(4),
            decoration: BoxDecoration(color: AppColors.primaryColor),
            child: Text(
              crewMember.name!,
              style: Styles.textStyle18,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              textAlign: TextAlign.center,
            ),
          ),
          child: Hero(
            tag: crewMember.image!,
            child: CachedNetworkImage(
              imageUrl: crewMember.image!,
              fit: BoxFit.cover,
              progressIndicatorBuilder: (context, url, progress) {
                return CustomShimmerLoading(
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

void showToastNoNetwork(
  BuildContext context,
) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text("Check your Network Connection"),
    ),
  );
}

class CustomShimmerLoading extends StatelessWidget {
  final Widget child;
  const CustomShimmerLoading({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.primaryColor,
      highlightColor: Colors.blue.shade100,
      child: child,
    );
  }
}
