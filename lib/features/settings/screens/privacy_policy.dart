import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Privacidade e Cancelamento',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'POLÍTICA DE PRIVACIDADE E CANCELAMENTO – PASSAGEIRO',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildCompanyHeader(),
                  const Divider(height: 32),

                  // SEÇÃO 2: PRIVACIDADE
                  _buildSectionTitle('2. POLÍTICA DE PRIVACIDADE (LGPD)'),
                  _buildSectionText(
                      'A Maylon coleta dados para garantir sua segurança e a operação do serviço.'),
                  _buildBulletPoint('Dados Coletados:',
                      'Nome, CPF, Telefone, E-mail, Dados de Pagamento e Geolocalização em tempo real.'),
                  _buildBulletPoint('Finalidade:',
                      'Conectar você ao motorista, processar pagamentos e prevenir fraudes. Não comercializamos seus dados.'),
                  _buildSectionText(
                      '2.6. Seus Direitos: Você tem direito ao acesso, correção, exclusão e portabilidade dos seus dados conforme a Lei nº 13.709/2018.'),

                  // SEÇÃO 3: CANCELAMENTO
                  _buildSectionTitle('3. POLÍTICA DE CANCELAMENTO'),
                  _buildBulletPoint('Taxas de Cancelamento:',
                      'Pode haver cobrança se o motorista já estiver a caminho, se o tempo gratuito expirar ou em caso de não comparecimento (no-show).'),
                  _buildSectionText(
                      '3.4. Cancelamento pelo Motorista: O motorista pode cancelar caso o local seja inseguro ou o passageiro apresente comportamento inadequado.'),

                  // SEÇÃO 4: PROTEÇÃO À MULHER (INTEGRADO DO PDF)
                  _buildSectionTitle('4. PROTEÇÃO À MULHER E SEGURANÇA'),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.pink[50],
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.pink[100]!),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Compromisso com a Integridade',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink),
                        ),
                        const SizedBox(height: 8),
                        _buildSectionText(
                            'A MAYLON estabelece como princípio essencial a proteção da integridade física, moral e psicológica de suas usuárias, em especial das mulheres.'),
                        _buildBulletPoint('Atuação em Risco:',
                            'Em situações de briga, agressão, ameaça ou assédio, o motorista está autorizado a interromper a corrida e conduzir a usuária a um local seguro (delegacias, hospitais ou postos iluminados).'),
                        _buildBulletPoint('Suporte:',
                            'A Central de Segurança realizará o monitoramento em tempo real e prestará apoio total à vítima, incluindo cooperação com autoridades.'),
                      ],
                    ),
                  ),

                  // SEÇÃO 5: DISPOSIÇÕES FINAIS
                  _buildSectionTitle('5. DISPOSIÇÕES FINAIS'),
                  _buildSectionText(
                      'O uso do aplicativo indica concordância com estas políticas. Foro eleito: Santana de Parnaíba – SP.'),
                  _buildSectionText('\nContato: privacidade@maylon.com.br'),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
          _buildBottomAction(context),
        ],
      ),
    );
  }

  Widget _buildCompanyHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text('MAYLON TRIP TECNOLOGIA LTDA', style: TextStyle(fontWeight: FontWeight.bold)),
        Text('CNPJ: 46.795.263/0001-35'),
        Text('Av. Yojiro Takaoka, 4384, Alphaville, Santana de Parnaíba – SP'),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 8),
      child: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF2758D4)),
      ),
    );
  }

  Widget _buildSectionText(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 14, color: Colors.grey[800], height: 1.5),
    );
  }

  Widget _buildBulletPoint(String title, String body) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 14, color: Colors.grey[800], height: 1.5),
          children: [
            TextSpan(text: '• $title ', style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: body),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomAction(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey[200]!)),
      ),
      child: SafeArea(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF2758D4),
            minimumSize: const Size(double.infinity, 56),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: const Text(
            'CONCORDAR E CONTINUAR',
            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );

  }
}