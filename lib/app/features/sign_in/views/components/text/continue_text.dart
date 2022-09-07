part of sign_in;

class _ContinueText extends StatelessWidget {
  const _ContinueText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: Divider(
            endIndent: kDefaultSpacing,
            thickness: 1,
          ),
        ),
        Text(
          'Or continue with',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w300,
            fontSize: 16.0,
          ),
        ),
        Expanded(
          child: Divider(
            indent: kDefaultSpacing,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
