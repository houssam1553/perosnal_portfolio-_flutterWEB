import 'package:Mohamad_Alzoubi_personal_website/core/layout/adaptive.dart';
import 'package:Mohamad_Alzoubi_personal_website/presentation/widgets/content_area.dart';
import 'package:Mohamad_Alzoubi_personal_website/presentation/widgets/custom_spacer.dart';
import 'package:Mohamad_Alzoubi_personal_website/values/values.dart';
import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {
  final String videoUrl;
  final Color primaryColor;
  final double width;

  const VideoSection({
    Key? key,
    required this.videoUrl,
    required this.primaryColor,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (videoUrl.isEmpty) {
      return SizedBox.shrink();
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomSpacer(heightFactor: 0.15),
        ContentArea(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Video",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),
              _buildVideoPreview(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildVideoPreview() {
    return Container(
      width: width,
      height: 400,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: primaryColor.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.play_circle_outline,
              size: 64,
              color: primaryColor,
            ),
            SizedBox(height: 16),
            Text(
              "Video Preview",
              style: TextStyle(
                color: primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                videoUrl,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 12,
                  fontStyle: FontStyle.italic,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 2,
              ),
            ),
            SizedBox(height: 16),
            TextButton.icon(
              onPressed: () {
                // Video playback logic would go here
                // For now, this shows the video URL structure
              },
              icon: Icon(Icons.launch),
              label: Text("Play Video"),
              style: TextButton.styleFrom(
                foregroundColor: primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
