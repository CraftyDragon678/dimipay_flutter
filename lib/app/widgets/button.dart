import 'package:dimipay/app/core/theme/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DPIconButton extends StatelessWidget {
  final String iconPath;
  final int? badgeNumber;
  const DPIconButton(this.iconPath, {this.badgeNumber, Key? key}) : super(key: key);

  Widget _badge() {
    if (badgeNumber != null) {
      return Positioned(
        top: 6,
        right: 6,
        child: Container(
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            color: DPColors.MAIN_THEME,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              badgeNumber.toString(),
              style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Colors.white),
            ),
          ),
        ),
      );
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: DPColors.DARK6,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 24,
                  height: 24,
                  child: SvgPicture.asset(iconPath, color: DPColors.MAIN_THEME),
                ),
              ),
            ),
            _badge(),
          ],
        ),
      ),
    );
  }
}

class DPBaseButton extends StatelessWidget {
  final Widget child;
  final double? width;
  final EdgeInsets padding;
  final void Function()? onTap;
  const DPBaseButton({Key? key, required this.child, required this.padding, this.onTap, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [BoxShadow(color: Color.fromRGBO(46, 164, 171, 0.24), offset: Offset(0, 4), blurRadius: 12)],
        borderRadius: BorderRadius.circular(12),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Material(
          color: const Color.fromRGBO(46, 164, 171, 1),
          child: InkWell(
            onTap: onTap,
            child: Container(
              width: width,
              padding: padding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [child],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DPLargeButton extends StatelessWidget {
  final Widget child;
  final double? width;
  final void Function()? onTap;
  const DPLargeButton({Key? key, required this.child, this.onTap, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DPBaseButton(
      child: child,
      padding: const EdgeInsets.all(24),
      width: width,
      onTap: onTap,
    );
  }
}

class DPLargeTextButton extends StatelessWidget {
  final String text;
  final double? width;
  final void Function()? onTap;
  const DPLargeTextButton({Key? key, required this.text, this.onTap, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DPLargeButton(
      child: Text(text, style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600)),
      width: width,
      onTap: onTap,
    );
  }
}

class DPMediumButton extends StatelessWidget {
  final Widget child;
  final double? width;
  final void Function()? onTap;
  const DPMediumButton({Key? key, required this.child, this.onTap, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DPBaseButton(
      child: child,
      padding: const EdgeInsets.all(16),
      width: width,
      onTap: onTap,
    );
  }
}

class DPMediumTextButton extends StatelessWidget {
  final String text;
  final double? width;
  final void Function()? onTap;
  const DPMediumTextButton({Key? key, required this.text, this.onTap, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DPMediumButton(
      child: Text(text, style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600)),
      width: width,
      onTap: onTap,
    );
  }
}

class DPSmallButton extends StatelessWidget {
  final Widget child;
  final double? width;
  final void Function()? onTap;
  const DPSmallButton({Key? key, required this.child, this.onTap, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DPBaseButton(
      child: child,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      width: width,
      onTap: onTap,
    );
  }
}

class DPSmallTextButton extends StatelessWidget {
  final String text;
  final double? width;
  final void Function()? onTap;
  const DPSmallTextButton({Key? key, required this.text, this.onTap, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DPSmallButton(
      child: Text(text, style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600)),
      width: width,
      onTap: onTap,
    );
  }
}
