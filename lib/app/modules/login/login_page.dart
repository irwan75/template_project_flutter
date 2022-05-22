import 'package:data/enum/enum_general.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mall_pelayanan_publik/app/base/base_scaffold.dart';
import 'package:mall_pelayanan_publik/app/module/auth/login/bloc/login_bloc.dart';
import 'package:mall_pelayanan_publik/app/res/colors_custom.dart';
import 'package:mall_pelayanan_publik/generated/app_translations.dart';
import 'package:shared/const/enum.dart';

import '../../../base/base_platform_view.dart';
import '../../../common_widget/button/circular_button.dart';
import '../../../common_widget/custom_painter/example_shape.dart';
import '../../../common_widget/text_form/default_text_field.dart';
import '../../../general_bloc/cart_counter/cart_counter_cubit.dart';
import '../../../res/sizes.dart';
import '../../../res/styles.dart';

// ignore: must_be_immutable
class LoginPage extends BaseScaffold<LoginBloc> {
  final PlatformView? platformWidgetTest;
  const LoginPage(
      {Key? key, required LoginBloc loginBloc, this.platformWidgetTest})
      : super(key: key, blocClass: loginBloc);

  @override
  Widget? bodyScaffold(BuildContext context) {
    return BasePlatformView(
      platformWidgetTest: PlatformView.MOBILE,
      smartphoneView: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BlocBuilder<LoginBloc, LoginState>(
                builder: (contextBloc, state) {
                  // final bloc = BlocProvider.of<LoginBloc>(contextBloc);
                  return state.when(
                    initial: (value) => Column(
                      children: [
                        Text(AppTranslations.of(context).helloWorld),
                        const DefaultTextField(
                          hintText: 'NIK',
                          prefixIcon: Icons.abc,
                          suffixIcon: Icons.abc_outlined,
                        ),
                        const DefaultTextField(
                          hintText: 'No HP',
                          prefixIcon: Icons.abc_outlined,
                          suffixIcon: Icons.abc,
                        ),
                        const DefaultTextField(
                          hintText: 'Password',
                          prefixIcon: Icons.abc,
                          suffixIcon: Icons.abc,
                        ),
                        // SizedBox(
                        //   width: 200,
                        //   height: 200,
                        //   child: Image.network(
                        //     "https://previews.123rf.com/images/fordzolo/fordzolo1506/fordzolo150600296/41026708-ejemplo-de-texto-sello-blanco-en-backgroud-roja.jpg",
                        //   ),
                        // ),
                        CustomPaint(
                          size: Size(
                              200,
                              (200 * 0.5)
                                  .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                          painter: ExampleShape(),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://previews.123rf.com/images/fordzolo/fordzolo1506/fordzolo150600296/41026708-ejemplo-de-texto-sello-blanco-en-backgroud-roja.jpg'))),
                        ),
                        Builder(
                          builder: (context) {
                            final cartCounter =
                                context.watch<CartCounterCubit>().state;
                            return Text(cartCounter.toString());
                          },
                        ),
                        CircularButton(
                            textButton: 'Masuk',
                            paddingVertical: Sizes.sizePaddingVerticalButton,
                            sizeWidth: SizeWidth.max,
                            // onTap: () => contextBloc
                            // .read<LoginBloc>()
                            // .add(LoginEvent.onClickLogin(context)),
                            onTap: () {
                              // context.read<CartCounterCubit>().updateValue();
                              blocClass.add(LoginEvent.onClickLogin(context));
                            }

                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => const DashboardPage(),
                            //   ),
                            // ),
                            ),
                        RichText(
                          text: TextSpan(
                            text: "Belum Punya Akun ? ",
                            style: Styles.richText.defaultRichText,
                            children: [
                              TextSpan(
                                text: "Daftar Disini",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: ColorsCustom.pimaryColor,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () async {
                                    blocClass.add(LoginEvent.onClickRegister(
                                        contextBloc));
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    failure: (message) =>
                        const Center(child: CircularProgressIndicator()),
                  );
                },
              ),
              const Text("Okee siapp"),
            ],
          ),
        ),
      ),
    );
  }
}
