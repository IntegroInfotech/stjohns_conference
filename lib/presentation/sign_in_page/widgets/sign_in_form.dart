import 'package:auto_route/auto_route.dart';
import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stjohns_conference/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:stjohns_conference/presentation/routes/router.gr.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final signInFormBloc = BlocProvider.of<SignInFormBloc>(context);
    final autoRoute = AutoRouter.of(context);
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    failure.map(
                      cancelledByUser: (_) => 'Cancelled',
                      serverError: (_) => 'Server error',
                      emailAlreadyInUse: (_) => 'Email already in use',
                      invalidEmailAndPasswordCombination: (_) => 'Invalid email and password combination',
                      userAlreadySignedIn: (_) => 'User with this credential already Signed In.',
                    ),
                  ),
                ),
              );
            },
            (_) {
              autoRoute.popAndPush(const VideoPageRoute());
            },
          ),
        );
      },
      builder: (context, state) {
        return BsRow(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            BsCol(
              offset: const ColScreen(md: Col.col_4),
              sizes: const ColScreen(md: Col.col_4),
              child: Form(
                autovalidateMode: state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Text(
                      'AMBKCCON - 2021',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline3?.copyWith(
                            color: Colors.yellow,
                          ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    /*Image.asset('assets/images/stjohn_logo.png'),*/
                    /*const Text(
                      '\u{1F4DD}',
                      style: TextStyle(
                        fontSize: 150,
                      ),
                      textAlign: TextAlign.center,
                    ),*/
                    TextFormField(
                      decoration: const InputDecoration(prefixIcon: Icon(Icons.email), labelText: 'Registered e-Mail', hintText: 'Enter Registered e-Mail'),
                      autocorrect: false,
                      // initialValue: 'souzaavi@gmail.com',
                      onChanged: (value) => signInFormBloc.add(SignInFormEvent.emailChanged(value.trim())),
                      validator: (_) => signInFormBloc.state.emailAddress.value.fold(
                        (f) => f.maybeMap(invalidEmail: (_) => 'Invalid Email', orElse: () => null),
                        (_) => null,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        labelText: 'Registered Mobile Number',
                        hintText: 'Enter 10 digit Registered Mobile Number',
                      ),
                      autocorrect: false,
                      obscureText: true,
                      // initialValue: 'Ken321.d',
                      onChanged: (value) => signInFormBloc.add(SignInFormEvent.passwordChanged(value)),
                      validator: (_) => state.password.value.fold(
                        (f) => f.maybeMap(shortPassword: (_) => null, orElse: () => 'Invalid Password'),
                        (_) => null,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 200,
                          child: ElevatedButton(
                            onPressed: () {
                              final signInFormBloc = context.read<SignInFormBloc>();
                              signInFormBloc.add(const SignInFormEvent.signInWithEmailAndPasswordPressed());
                            },
                            child: const Text('Sign In'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Visibility(
                      visible: state.isSubmitting,
                      child: const LinearProgressIndicator(),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
