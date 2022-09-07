part of email_verification;

class _ResendButton extends StatelessWidget {
  const _ResendButton({
    Key? key,
    required this.onPressed,
    required this.isLoading,
  }) : super(key: key);

  final Function()? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t receive email verification?',
          style: Theme.of(context).textTheme.caption?.copyWith(fontSize: 14.0),
        ),
        if (isLoading) const SizedBox(width: kDefaultSpacing / 2),
        TextButton(
          onPressed: isLoading ? null : onPressed,
          child: isLoading
              ? const SizedBox(
                  height: 15.0,
                  width: 15.0,
                  child: CircularProgressIndicator(),
                )
              : const Text('Resend'),
        ),
      ],
    );
  }
}
