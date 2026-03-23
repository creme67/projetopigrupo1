import 'package:flutter/material.dart';
import 'package:pi_projeto/app/routes/app_routes.dart';
import 'package:pi_projeto/core/theme/app_colors.dart';
import 'package:pi_projeto/core/espaco.dart';
import 'package:pi_projeto/features/auth/widgets/caixa_input.dart';
import 'package:pi_projeto/features/auth/widgets/subtitulos_cadastro.dart';
import 'package:pi_projeto/features/auth/widgets/botao.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _senhaEscondida = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.CorPrincipal,
      appBar: AppBar(backgroundColor: AppColors.CorPrincipal),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/Tooth.png'),
              Espaco.w06,
              const Text(
                'Dr. Thais Tardelli',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),

          Espaco.h16,

          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Não tem uma conta? ',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          AppRoutes.register,
                        );
                      },
                      child: Text(
                        'Cadastre-se',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: AppColors.CorPrincipal,
                        ),
                      ),
                    ),
                  ],
                ),

                Espaco.h16,

                const SubtitulosCadastro(texto: 'Login'),
                const SizedBox(height: 1),

                const CustomInputLabel(text: 'Digite seu email aqui...'),
                Espaco.h16,

                const SubtitulosCadastro(texto: 'Senha'),
                const SizedBox(height: 1),

                CustomInputLabel(
                  text: 'Digite sua senha aqui...',
                  //aqui foi ia
                  obscureText: _senhaEscondida,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _senhaEscondida ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _senhaEscondida = !_senhaEscondida;
                      });
                    },
                  ),
                ),
                Espaco.h16,

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SubtitulosCadastro(texto: 'Manter conectado'),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Esqueceu a senha?',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFB76E79),
                        ),
                      ),
                    ),
                  ],
                ),

                Espaco.h24,

                Botao(
                  backgroundColor: AppColors.CorPrincipal,
                  texto: 'Entrar',
                  corDaFonte: Colors.white,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, AppRoutes.home);
                  },
                ),

                Espaco.h24,

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'ou',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),

                Espaco.h24,

                Botao(
                  backgroundColor: Colors.white,
                  texto: 'Continuar com Google',
                  corDaFonte: Colors.black, // AppColors.TextoPrincipal
                  icone: Image.asset('assets/images/google.png', height: 20),
                  onPressed: () {
                    //o mais macho ta fazendo ainda
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
