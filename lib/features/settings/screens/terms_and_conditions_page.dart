import 'package:flutter/material.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Termos de Uso',
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
                    'TERMO DE USO DO PASSAGEIRO\nAPLICATIVO MAYLON',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Última atualização: 20/12/2025',
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                  ),
                  const SizedBox(height: 16),
                  _buildCompanyHeader(),
                  const Divider(height: 32),

                  _buildSectionTitle('1. ACEITAÇÃO DOS TERMOS'),
                  _buildSectionText(
                      'Ao se cadastrar e utilizar o aplicativo Maylon, o passageiro (“Usuário”) declara que leu, compreendeu e aceita integralmente este Termo de Uso. Caso não concorde, o Usuário não deverá utilizar o Serviço.'),

                  _buildSectionTitle('2. SOBRE A PLATAFORMA MAYLON'),
                  _buildSectionText(
                      'A Maylon é uma plataforma tecnológica que conecta passageiros a motoristas independentes. A Maylon não presta serviços de transporte, atuando exclusivamente como intermediadora tecnológica.'),

                  _buildSectionTitle('3. CADASTRO DO PASSAGEIRO'),
                  _buildBulletPoint('Requisitos:', 'Dados verdadeiros, ser maior de 18 anos e autorizar o uso de informações conforme a Política de Privacidade.'),

                  _buildSectionTitle('4. FUNCIONAMENTO DO SERVIÇO'),
                  _buildSectionText(
                      'O passageiro indica origem, destino e forma de pagamento. A Maylon não garante disponibilidade imediata de motoristas ou tempo de espera fixo.'),

                  _buildSectionTitle('5. TARIFAS E PAGAMENTOS'),
                  _buildSectionText(
                      'O preço é calculado automaticamente. Podem ocorrer taxas de pedágio, tempo parado ou ajuste dinâmico.'),
                  _buildBulletPoint('Formas de Pagamento:', 'Cartão de Crédito/Débito, Pix, Carteira Maylon ou Dinheiro (quando disponível).'),

                  _buildSectionTitle('6. COMPORTAMENTO E REGRAS'),
                  _buildSectionText(
                      'O passageiro deve tratar motoristas com respeito, usar cinto de segurança e não danificar o veículo. Agressões ou fraudes resultam em banimento imediato.'),

                  _buildSectionTitle('7. CANCELAMENTO DE VIAGENS'),
                  _buildSectionText(
                      'Cancelamentos tardios podem gerar cobrança de taxa. O motorista também pode cancelar por motivos de segurança.'),

                  _buildSectionTitle('8. AVALIAÇÃO'),
                  _buildSectionText(
                      'Passageiros e motoristas se avaliam mutuamente. A manutenção de boas notas é essencial para o uso da plataforma.'),

                  _buildSectionTitle('9. LIMITAÇÃO DE RESPONSABILIDADE'),
                  _buildSectionText(
                      'A responsabilidade pelo transporte é exclusiva do motorista parceiro, que atua como profissional independente.'),

                  _buildSectionTitle('10. PRIVACIDADE E DADOS (LGPD)'),
                  _buildSectionText(
                      'Coletamos dados para conectar usuários, garantir segurança e processar pagamentos, sempre em conformidade com a LGPD.'),

                  _buildSectionTitle('11. FORO E LEGISLAÇÃO'),
                  _buildSectionText(
                      'Este Termo é regido pelas leis brasileiras. Foro eleito: Comarca de São Paulo – SP.'),

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
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('MAYLON TRIP TECNOLOGIA LTDA', style: TextStyle(fontWeight: FontWeight.bold)),
          Text('CNPJ: 46.795.263/0001-35'),
          Text('Av. Yojiro Takaoka, 4384, Alphaville, Santana de Parnaíba – SP'),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 8),
      child: Text(
        title,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black87),
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
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, -5))
        ],
      ),
      child: SafeArea(
        child: ElevatedButton(
          onPressed: () {
            // Lógica para registrar o aceite do passageiro
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF2758D4), // Tom de azul para diferenciar do app motorista
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