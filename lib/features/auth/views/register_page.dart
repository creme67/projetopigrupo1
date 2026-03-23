import 'package:flutter/material.dart';
import 'package:pi_projeto/app/routes/app_routes.dart';
import 'package:pi_projeto/core/espaco.dart';
import 'package:pi_projeto/core/theme/app_colors.dart';
import 'package:pi_projeto/features/auth/widgets/botao.dart';
import 'package:pi_projeto/features/auth/widgets/caixa_input.dart';
import 'package:pi_projeto/features/auth/widgets/subtitulos_cadastro.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.CorPrincipal,
      appBar: AppBar(backgroundColor: AppColors.CorPrincipal),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            width: double.infinity,
            //height: 681,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.black, size: 24),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, AppRoutes.login);
                  },
                ),
              const Text(
                    'Cadastre-se',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                

                Row(
                  children: [
                    const Text(
                      'Já tem Conta? ',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.TextoSecundario,
                      ),
                    ),

                    const Text(
                      'Login',
                      style: TextStyle(
                        color: AppColors.CorPrincipal,
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                Espaco.h24,

                SubtitulosCadastro(texto: 'Nome Completo'),
                Espaco.h04,
                CustomInputLabel(text: 'Digite seu nome completo...'),
                Espaco.h12,
                SubtitulosCadastro(texto: 'Email'),
                Espaco.h04,
                CustomInputLabel(text: 'Digite seu Email...'),
                Espaco.h12,
                SubtitulosCadastro(texto: 'Data de Nascimento'),
                Espaco.h04,
                CustomInputLabel(text: 'Digite sua data de nascimento...',),
                Espaco.h12,
                SubtitulosCadastro(texto: 'Número de Telefone'),
                Espaco.h04,
                CustomInputLabel(text: 'Digite seu Telefone...'),
                Espaco.h12,
                SubtitulosCadastro(texto: 'Definir Senha'),
                Espaco.h04,
                CustomInputLabel(text: 'Digite sua senha...'),

                Espaco.h24,

                Botao(
                  backgroundColor: AppColors.CorPrincipal,
                  texto: 'Registrar',
                  corDaFonte: AppColors.CorBranco,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, AppRoutes.home);
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
