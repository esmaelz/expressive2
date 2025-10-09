class Client {
  final String id;
  final String name;
  final String cnpj;
  final String city;
  final String state;
  final String? avatarUrl;

  const Client({
    required this.id,
    required this.name,
    required this.cnpj,
    required this.city,
    required this.state,
    this.avatarUrl,
  });

  // Format CNPJ for display (XX.XXX.XXX/XXXX-XX)
  String get formattedCnpj {
    if (cnpj.length == 14) {
      return '${cnpj.substring(0, 2)}.${cnpj.substring(2, 5)}.${cnpj.substring(5, 8)}/${cnpj.substring(8, 12)}-${cnpj.substring(12)}';
    }
    return cnpj;
  }

  // Get location display string
  String get location => '$city - $state';

  // Get initials for avatar placeholder
  String get initials {
    final parts = name.split(' ');
    if (parts.length >= 2) {
      return '${parts.first[0]}${parts.last[0]}'.toUpperCase();
    }
    return name.isNotEmpty ? name[0].toUpperCase() : '';
  }

  // Mock data for demonstration
  static List<Client> getMockClients() {
    return [
      const Client(
        id: '1',
        name: 'Empresa ABC Ltda',
        cnpj: '12345678000190',
        city: 'São Paulo',
        state: 'SP',
      ),
      const Client(
        id: '2',
        name: 'Comércio XYZ S.A.',
        cnpj: '98765432000111',
        city: 'Rio de Janeiro',
        state: 'RJ',
      ),
      const Client(
        id: '3',
        name: 'Indústria Tech Ltda',
        cnpj: '11222333000144',
        city: 'Belo Horizonte',
        state: 'MG',
      ),
      const Client(
        id: '4',
        name: 'Serviços Premium EIRELI',
        cnpj: '44555666000177',
        city: 'Curitiba',
        state: 'PR',
      ),
      const Client(
        id: '5',
        name: 'Grupo Global Ltda',
        cnpj: '77888999000188',
        city: 'Porto Alegre',
        state: 'RS',
      ),
      const Client(
        id: '6',
        name: 'Distribuidora Nacional S.A.',
        cnpj: '22333444000155',
        city: 'Brasília',
        state: 'DF',
      ),
      const Client(
        id: '7',
        name: 'Varejo Express Ltda',
        cnpj: '55666777000166',
        city: 'Salvador',
        state: 'BA',
      ),
      const Client(
        id: '8',
        name: 'Logística Rápida EIRELI',
        cnpj: '88999000000199',
        city: 'Recife',
        state: 'PE',
      ),
    ];
  }
}