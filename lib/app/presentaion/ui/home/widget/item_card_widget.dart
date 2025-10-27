import 'package:ezzat_app/app/core/utilts/color_manager.dart';
import 'package:ezzat_app/app/core/utilts/path_manger.dart';
import 'package:ezzat_app/app/core/widgets/my_network_image.dart';
import 'package:ezzat_app/app/data/model/trips_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemCard extends StatelessWidget {
  final Trips item;

  const ItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final borderColor = _getBorderColor(item.status ?? "");
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.black2,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          _imageStackWidget(item, borderColor),
          SizedBox(height: 18),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title ?? "",
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(height: 8,),
                Row(
                  children: [
                    SvgPicture.asset("${PathManager.SVG_PATH}calendar.svg"),
                    SizedBox(width: 4,),
                    Text(
                      '${item.dates?.start ?? ""} - ${item.dates?.end ?? ""}',
                      style: const TextStyle(
                        color: ColorManager.gray,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24,),
                Row(
                  children: [
                    _buildParticipants(item.participants ?? []),
                    const Spacer(),
                    Text(
                      '${item.unfinishedTasks ?? 0} unfinished tasks',
                      style: const TextStyle(
                        color: ColorManager.gray,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildParticipants(List<Participants> participants) {
    final displayCount = participants.length.clamp(0, 3);
    return SizedBox(
      width: (displayCount * 18) + 28,
      height: 28,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          for (int i = 0; i < displayCount; i++)
            Positioned(
              left: i * 18,
              child: MyNetworkImage(
                imgUrl: participants[i].avatarUrl ?? "",
                width: 28,
                height: 28,
                borderRadius: 100,
              ),
            ),
          if (participants.length > 3)
            Positioned(
              left: displayCount * 18,
              child: Container(
                width: 28,
                height: 28,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: ColorManager.border,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text(
                  '+${participants.length - 3}',
                  style: TextStyle(
                    color: ColorManager.SECONDARY,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Stack _imageStackWidget(Trips item, Color borderColor) {
    return Stack(
      children: [
        MyNetworkImage(
          imgUrl: item.coverImage ?? "",
          width:double.infinity,
          height: 250,
          borderRadius: 15,
        ),
        Container(
          width:double.infinity,
          height: 250,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.transparent, Colors.black.withOpacity(1)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 15,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.transparent,
              border: Border.all(color: borderColor),
            ),
            child: Text(
              item.status ?? "",
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ),
      ],
    );
  }

  Color _getBorderColor(String status) {
    switch (status) {
      case "Proposal Sent":
        return Colors.orangeAccent;
      case "Pending Approval":
        return Colors.purpleAccent;
      case "Ready for travel":
        return Colors.greenAccent;
      default:
        return Colors.grey;
    }
  }
}
