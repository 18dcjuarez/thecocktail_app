// ignore_for_file: inference_failure_on_function_return_type

part of 'widgets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.title = '',
    this.textStyle,
    this.sizeHeight = 60,
    this.backButton = false,
    this.appBarButton = false,
    this.appBarCallback,
    this.onBackCallback,
    this.icon = Icons.settings_outlined,
    this.backgroundColor,
  });

  final String title;
  final TextStyle? textStyle;
  final double sizeHeight;
  final bool backButton;
  final bool appBarButton;
  final Function()? appBarCallback;
  final Function()? onBackCallback;
  final IconData icon;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      color: backgroundColor,
      width: screenSize.width,
      height: sizeHeight,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (!backButton)
                  const SizedBox(
                    width: 30,
                  )
                else
                  GestureDetector(
                    onTap: () => (onBackCallback == null)
                        ? Navigator.pop(context)
                        : onBackCallback,
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.secondaryColor,
                      size: 30,
                    ),
                  ),
                if (title.isEmpty)
                  Row(
                    children: [
                      Text(
                        'COCKTAIL APP',
                        style: Theme.of(context).textTheme.headline3!.copyWith(
                              color: AppColors.primaryColor,
                            ),
                      ),
                      Icon(
                        Icons.local_drink_outlined,
                        color: AppColors.primaryColor,
                        size: screenSize.height * 0.03,
                      ),
                    ],
                  )
                else
                  Center(
                    child: Text(
                      title,
                      style: (textStyle == null)
                          ? Theme.of(context).textTheme.headline2
                          : textStyle,
                    ),
                  ),
                if (!appBarButton)
                  const SizedBox(
                    width: 30,
                  )
                else
                  GestureDetector(
                    onTap: appBarCallback,
                    child: Icon(
                      icon,
                      color: AppColors.secondaryColor,
                      size: 30,
                    ),
                  )
              ],
            ),
          ),
          Divider(
            color: AppColors.secondaryColor,
            thickness: screenSize.height * 0.002,
          )
        ],
      ),
    );
  }
}
