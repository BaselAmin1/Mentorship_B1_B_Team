import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:space_x/core/helpers/extensions.dart';
import 'package:space_x/core/theming/colors.dart';
import 'package:space_x/core/theming/text_styles.dart';

import 'package:space_x/features/crews/data/models/all_crews_model.dart';
import 'package:space_x/features/crews/ui/widgets/crew_gridview_item.dart';
import 'package:url_launcher/url_launcher.dart';

class CrewsDetailsScreen extends StatelessWidget {
  final AllCrewsModel crewModel;

  const CrewsDetailsScreen({
    super.key,
    required this.crewModel,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Padding(
          padding: const EdgeInsets.only(
            right: 16.0,
            left: 16.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.03,
                ),
                Hero(
                  tag: crewModel.image!,
                  child: ClipRRect(
                    borderRadius: BorderRadiusDirectional.circular(24),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.8,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          CachedNetworkImage(
                            imageUrl: crewModel.image!,
                            fit: BoxFit.cover,
                            progressIndicatorBuilder: (context, url, progress) {
                              return CustomShimmerLoading(
                                child: Container(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.3,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              );
                            },
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: CustomIconButton(
                              size: 32,
                              icon: Icons.arrow_back,
                              onTap: () {
                                context.pop();
                              },
                              isFontAwesomeIcons: false,
                              color: Colors.white,
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: OpenUrlInBrowserIconButton(
                              urlString: crewModel.wikipedia!,
                              iconSize: 32,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          crewModel.name!,
                          style: Styles.textStyle18,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const Icon(Icons.work_outline_rounded),
                      const SizedBox(width: 6),
                      Text(
                        crewModel.agency!,
                        style: Styles.textStyle18,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.03,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OpenUrlInBrowserIconButton extends StatelessWidget {
  final String urlString;
  final double? iconSize;

  const OpenUrlInBrowserIconButton({
    super.key,
    required this.urlString,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Uri url = Uri.parse(urlString);
        try {
          launchUrl(url);
        } catch (e) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('There was an error, try again later'),
            ),
          );
        }
      },
      icon: Icon(
        Icons.info_outline,
        size: iconSize ?? 28,
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  final void Function()? onTap;
  final bool isFontAwesomeIcons;
  final IconData icon;
  final Color color;
  final Color backgroundColor;
  final double size;

  const CustomIconButton({
    super.key,
    this.onTap,
    required this.isFontAwesomeIcons,
    required this.size,
    required this.color,
    required this.icon,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsetsDirectional.all(4),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor,
        ),
        child: isFontAwesomeIcons == true
            ? FaIcon(
                icon,
                size: size,
                color: color,
              )
            : Icon(
                icon,
                size: size,
                color: color,
              ),
      ),
    );
  }
}
