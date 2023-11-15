import 'package:app_for_voco/core/error/result_types/state_result/state_result.dart';
import 'package:app_for_voco/core/extensions/context_extension.dart';
import 'package:app_for_voco/feature/auth/data/model/user_login_model.dart';
import 'package:app_for_voco/feature/auth/widget/auth_text_form_field.dart';
import 'package:app_for_voco/injection/injection_container.dart';

import '../../../../../core/helpers/regex/regex_helper.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../core/localization/locale_keys.g.dart';
import '../../../../../core/themes/constants/color_constants.dart';

import '../../../../../core/widgets/button/buttons.dart';
import '../../../provider/auth_provider.dart';
import '../../../widget/already_have_an_account_acheck.dart';
import '../../Register/signup_screen.dart';

class LoginForm extends ConsumerStatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final _emailLogin = TextEditingController(text: 'ttarcanlaroto@gmail.com');
  final _passwordController = TextEditingController(text: '1234567');

  final AuthProvider _userViewModel = getit.get<AuthProvider>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _emailTextField(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: _passwordTextField(),
          ),
          const SizedBox(height: defaultPadding),
          _loginButton(),
          const SizedBox(height: defaultPadding),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SignUpScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  AuthTextField _passwordTextField() {
    return AuthTextField(
      labelText: LocaleKeys.login_loginPassword.tr(),
      controller: _passwordController,
      isObscure: true,
      validator: (val) {
        final hasSpecialCharacter =
            RegexHelper.shared.hasSpecialCharacter(email: val ?? '');
        if (val!.isEmpty) {
          return LocaleKeys.login_loginPlsPassword.tr();
        } else {
          if (val.length < 7) {
            return LocaleKeys.login_loginPlsChrPassword.tr();
          } else {
            if (hasSpecialCharacter) {
              return null;
            } else {
              return LocaleKeys.login_loginPlsSpChrPassword.tr();
            }
          }
        }
      },
    );
  }

  AuthTextField _emailTextField() {
    return AuthTextField(
      labelText: LocaleKeys.login_loginMail.tr(),
      controller: _emailLogin,
      validator: (val) {
        final isCorrectEmail = RegexHelper.shared.isCorrectEmail(
          email: val ?? '',
        );

        if (!isCorrectEmail) {
          return LocaleKeys.login_logininvaledMail.tr();
        } else {
          return null;
        }
      },
    );
  }

  Widget _loginButton() {
    return CustomElevatedButton(
      isLoading: ref.watch(authProvider).loginState ==
              const StateResult<dynamic>.loading()
          ? true
          : false,
      text: LocaleKeys.login_login.tr(),
      onPressed: () async {
        final isValidatedInputs = _validateInputs();

        if (isValidatedInputs) {
          final userModel = UserLoginModel(
            email: _emailLogin.text,
            password: _passwordController.text,
          );
          await _userViewModel.login(userModel: userModel);
          ref.watch(authProvider).loginState.when(
                initial: () {},
                loading: () {},
                completed: (data) {
                  context.showSnackBar(
                    SnackBar(
                      content: Text(LocaleKeys.login_loginSuccessful.tr()),
                    ),
                  );
                },
                failed: (failure) {
                  context.showSnackBar(
                    SnackBar(
                      content: Text(failure.message),
                    ),
                  );
                },
              );
        }
      },
    );
  }

  bool _validateInputs() {
    if (_formKey.currentState!.validate()) {
//    If all data are correct then save data to out variables
      // _formKey.currentState!.save();
      return true;
    } else {
//    If all data are not valid then start auto validation.
      // setState(() {
      //   // _autoValidate = true;
      // });
      return false;
    }
  }
}
