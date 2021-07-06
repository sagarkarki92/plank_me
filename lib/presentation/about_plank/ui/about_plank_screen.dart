import 'package:flutter/material.dart';
import 'package:plank_me/presentation/ui_utils/ui_styles.dart';
import 'package:webview_flutter/webview_flutter.dart';
class AboutPlankScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: TabBar(
            labelColor: AppColors.lightAccent,
            unselectedLabelColor: AppColors.darkFaded,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              color: AppColors.primaryDark,
            ),
            tabs: const [
              Tab(text: 'Facts about Plank'),
              Tab(text: 'How to plank Properly')
            ],
          ),
          body: const TabBarView(
            physics: BouncingScrollPhysics(),
            children: [
              _WebWidget(
                  link:
                      'https://www.lifehack.org/292578/7-things-that-will-happen-when-you-do-planking-exercise-every-day'),
              _WebWidget(link: 'https://greatist.com/fitness/perfect-plank'),
            ],
          ),
        ),
      ),
    );
  }
}

class _WebWidget extends StatefulWidget {
  final String link;
  const _WebWidget({
    Key? key,
    required this.link,
  }) : super(key: key);

  @override
  __WebWidgetState createState() => __WebWidgetState();
}

class __WebWidgetState extends State<_WebWidget>
    with AutomaticKeepAliveClientMixin {
  bool isLoading = true;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Stack(
      children: [
        AnimatedOpacity(
          duration: const Duration(milliseconds: 500),
          opacity: isLoading ? 0.0 : 1.0,
          child: WebView(
            initialUrl: widget.link,
            javascriptMode: JavascriptMode.unrestricted,
            onPageFinished: (_) {
              setState(() {
                isLoading = false;
              });
            },
          ),
        ),
        if (isLoading) const Center(child: CircularProgressIndicator()),
      ],
    );
  }
}
