part of sign_in;

class _SignInButton extends StatelessWidget {
  const _SignInButton({
    Key? key,
    required this.isLoading,
    required this.onPressed,
  }) : super(key: key);

  final bool isLoading;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return AsyncButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.maxFinite, 50),
        textStyle: const TextStyle(
          fontSize: 17.0,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.1,
        ),
      ),
      onPressed: onPressed,
      isLoading: isLoading,
      child: const Text('Sign In'),
    );
  }
}
