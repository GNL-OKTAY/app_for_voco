import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/core/localization/locale_keys.g.dart';
import '/core/error/result_types/state_result/state_result.dart';
import '/core/extensions/context_extension.dart';
import '/core/helpers/regex/regex_helper.dart';
import '/core/themes/constants/color_constants.dart';
import '/core/widgets/button/buttons.dart';
import '/injection/injection_container.dart';
import '../../../../home/home_screen.dart';
import '../../../controller/auth_controller.dart';
import '../../../service/model/user_login_model.dart';
import '../../../widget/auth_text_form_field.dart';

class LoginForm extends ConsumerStatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final _emailLogin = TextEditingController(text: 'eve.holt@reqres.in');
  final _passwordController = TextEditingController(text: 'cityslicka');

  final AuthController _authProvider = getit.get<AuthController>();

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
        ],
      ),
    );
  }

  AuthTextField _passwordTextField() {
    return AuthTextField(
      labelText: LocaleKeys.login_loginPassword.tr(),
      controller: _passwordController,
      inputPass: true,
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
          final userModel = LoginRequestModel(
            email: _emailLogin.text,
            password: _passwordController.text,
          );
          await _authProvider.login(userModel: userModel);
          ref.watch(authProvider).loginState.when(
                initial: () {},
                loading: () {},
                completed: (data) {
                  context.showSnackBar(
                    SnackBar(
                      content: Text(LocaleKeys.login_loginSuccessful.tr()),
                    ),
                  );

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
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
