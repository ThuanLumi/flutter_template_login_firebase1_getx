part of email_verification;

class _InfoText extends StatelessWidget {
  const _InfoText({Key? key, required this.email}) : super(key: key);

  final String? email;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: 14.0,
          color: Theme.of(context).textTheme.caption?.color,
          height: 1.5,
        ),
        children: email == null
            ? [
                const TextSpan(
                    text:
                        'Invalid email, please sign in or sign up and come back again.')
              ]
            : [
                const TextSpan(text: 'We sent an email verification to '),
                TextSpan(
                  text: email,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(text: ', please check your inbox.'),
              ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
