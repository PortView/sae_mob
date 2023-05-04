import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['pt', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? ptText = '',
    String? enText = '',
  }) =>
      [ptText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'duimpdp3': {
      'pt': 'Home',
      'en': 'Home',
    },
    'mfzqewr3': {
      'pt': 'Button',
      'en': '',
    },
    'zjo3x5cb': {
      'pt': 'Cópia tarefas',
      'en': '',
    },
    'a15h9dvp': {
      'pt': 'Hello World',
      'en': '',
    },
    'y6eaeieg': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // login
  {
    '9la9eozt': {
      'pt': 'SAE',
      'en': 'SAE',
    },
    'h2xrogid': {
      'pt': 'Bem vindo',
      'en': 'Welcome',
    },
    'uohl795f': {
      'pt': 'Preencha as informações abaixo para acessar sua conta.',
      'en': 'Fill in the information below to access your account.',
    },
    '0a8e8pde': {
      'pt': 'Email',
      'en': 'Email',
    },
    '4r2uh91l': {
      'pt': 'Senha',
      'en': 'Password',
    },
    'ffijgrpt': {
      'pt': 'Entrar',
      'en': 'To enter',
    },
    'b7hzhrjb': {
      'pt': 'Esqueci minha senha. ',
      'en': 'I don\'t have a record?',
    },
    'lh0emep0': {
      'pt': 'Enviar',
      'en': 'register',
    },
    'aokh02hx': {
      'pt': 'Ou',
      'en': 'Or',
    },
    '3hpmfrcb': {
      'pt': 'Continuar com o Google',
      'en': 'Continue with Google',
    },
    'lgn9ijr9': {
      'pt': 'Continuar com a Apple',
      'en': 'Continue with Apple',
    },
    'kvan424l': {
      'pt': 'Não tenho cadastro?  ',
      'en': 'I don\'t have a record?',
    },
    'h4hx4d0f': {
      'pt': 'Cadastrar',
      'en': 'register',
    },
    'hv6zdu3v': {
      'pt': 'Cadastro',
      'en': 'Register',
    },
    'ldu824xc': {
      'pt': 'Preencha as informações abaixo para acessar sua conta.',
      'en': 'Fill in the information below to access your account.',
    },
    'cda2rw8z': {
      'pt': 'Email',
      'en': 'Email',
    },
    'lv6f9fcw': {
      'pt': 'Senha',
      'en': 'Password',
    },
    'oc6jumn5': {
      'pt': 'Senha',
      'en': 'Password',
    },
    'cppkvfjd': {
      'pt': 'Cadastrar',
      'en': 'register',
    },
    'xauz083q': {
      'pt': 'Ou',
      'en': 'Or',
    },
    'cukr4h2t': {
      'pt': 'Continuar com o Google',
      'en': 'Continue with Google',
    },
    'y9ff6xve': {
      'pt': 'Continuar com a Apple',
      'en': 'Continue with Apple',
    },
    '8mlsxwdo': {
      'pt': 'Já tenho cadastro. ',
      'en': 'I already have registration.',
    },
    'qr84syw5': {
      'pt': 'Login',
      'en': 'Login',
    },
    'x84qb2s2': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // PagTeste01
  {
    'khxgkzsv': {
      'pt': 'Tarefas',
      'en': '',
    },
    '6viokwk8': {
      'pt': 'Ativos',
      'en': '',
    },
    'kx0zdgr7': {
      'pt': 'Busca Descrição',
      'en': '',
    },
    'nwhxd630': {
      'pt': 'Ordem',
      'en': '',
    },
    'q3pcupg8': {
      'pt': 'Descrição',
      'en': '',
    },
    'kvlvtbop': {
      'pt': 'Home',
      'en': '',
    },
  },
  // gerServTarefasBase
  {
    'hhjrrwi4': {
      'pt': 'Tarefas',
      'en': '',
    },
    'v4evcyd0': {
      'pt': 'Ativos',
      'en': '',
    },
    'lrkumz6c': {
      'pt': 'Busca Descrição',
      'en': '',
    },
    'sl21o4e7': {
      'pt': 'Sel.',
      'en': '',
    },
    'rvalt2pn': {
      'pt': 'Ordem',
      'en': '',
    },
    'sm72mzhp': {
      'pt': 'Descrição',
      'en': '',
    },
    '48rmq2mj': {
      'pt': 'TE',
      'en': '',
    },
    'tfv61j7p': {
      'pt': ' ',
      'en': '',
    },
    'u0fb53be': {
      'pt': ' ',
      'en': '',
    },
    'rbvh9djh': {
      'pt': 'Serviços',
      'en': '',
    },
    '48eo6jy8': {
      'pt': 'Ativos',
      'en': '',
    },
    'obh7fcyp': {
      'pt': 'Busca Descrição',
      'en': '',
    },
    'b71xhpxv': {
      'pt': 'Sel.',
      'en': '',
    },
    'wjj13jtr': {
      'pt': 'Código',
      'en': '',
    },
    'iqzijegl': {
      'pt': 'Descrição',
      'en': '',
    },
    '97i7svp9': {
      'pt': 'Órgão publ.',
      'en': '',
    },
    'nkgadfu0': {
      'pt': 'Tarefas',
      'en': '',
    },
    'w2p8w1b1': {
      'pt': 'Ordem',
      'en': '',
    },
    'prqe2abn': {
      'pt': 'Descrição',
      'en': '',
    },
    'o1hmx3ud': {
      'pt': 'Te',
      'en': '',
    },
    '9lkmgxmk': {
      'pt': 'Só teste',
      'en': '',
    },
    'mhk99qqc': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pedidoUnicoIncluir
  {
    '447h09g9': {
      'pt': 'Pedido novo',
      'en': '',
    },
    'v3kj3n99': {
      'pt': 'Nome',
      'en': '',
    },
    '57wdo25d': {
      'pt': 'Nome',
      'en': '',
    },
    'klrkjeut': {
      'pt': 'Descrição',
      'en': '',
    },
    '1dx159ny': {
      'pt': 'Descr.',
      'en': '',
    },
    'z2fgccx2': {
      'pt': 'Qtde',
      'en': '',
    },
    '1no1hw0s': {
      'pt': 'Qtde',
      'en': '',
    },
    'b9jg2azi': {
      'pt': 'Preço',
      'en': '',
    },
    'kuot77a7': {
      'pt': 'Preço',
      'en': '',
    },
    '7nkrkzy8': {
      'pt': 'Cancelar',
      'en': '',
    },
    'ya9u4dn1': {
      'pt': 'Salvar',
      'en': '',
    },
  },
  // pedidoUnicoEditar
  {
    'zi9v78yi': {
      'pt': 'Edição pedido',
      'en': '',
    },
    'lj3zr5gp': {
      'pt': 'Nome',
      'en': '',
    },
    'ijr3hxd1': {
      'pt': 'Nome',
      'en': '',
    },
    '3q4jf21g': {
      'pt': 'Descrição',
      'en': '',
    },
    'prgeckbx': {
      'pt': 'Descr.',
      'en': '',
    },
    'hu3wddk2': {
      'pt': 'Qtde',
      'en': '',
    },
    '5t340yyp': {
      'pt': 'Qtde',
      'en': '',
    },
    '6wij48ta': {
      'pt': 'Preço',
      'en': '',
    },
    '9duw60ud': {
      'pt': 'Preço',
      'en': '',
    },
    '6gzkfq99': {
      'pt': 'Cancelar',
      'en': '',
    },
    'v3zfn2u5': {
      'pt': 'Salvar',
      'en': '',
    },
  },
  // barraSupLogado
  {
    '0ajuoegh': {
      'pt': 'PortView Eletronica LTDA ME',
      'en': '',
    },
    '0ki1p1c9': {
      'pt': 'Cargo - Gerente',
      'en': '',
    },
  },
  // tarefasBaseEditar
  {
    '87p7go8v': {
      'pt': 'Editar Tarefa Base',
      'en': '',
    },
    'jnwfhkjw': {
      'pt': 'Ativo',
      'en': '',
    },
    'pxavd6dx': {
      'pt': 'Ordem',
      'en': '',
    },
    'ki75q1wc': {
      'pt': '[Some hint text...]',
      'en': '',
    },
    '2awk8qqf': {
      'pt': 'Descrição',
      'en': '',
    },
    'wckhhzu2': {
      'pt': '[Some hint text...]',
      'en': '',
    },
    'bwvqmu5s': {
      'pt': 'Tempo estimado',
      'en': '',
    },
    'j7qqrs6d': {
      'pt': '[Some hint text...]',
      'en': '',
    },
    '0bvf5yqw': {
      'pt': 'Medição',
      'en': '',
    },
    'nb6yg1oc': {
      'pt': 'Cancelar',
      'en': '',
    },
    'p8lra8ms': {
      'pt': 'Salvar',
      'en': '',
    },
  },
  // tarefasBaseNovo
  {
    '756s4y4l': {
      'pt': 'Nova Tarefa Base',
      'en': '',
    },
    'wsnj3msv': {
      'pt': 'Ativo',
      'en': '',
    },
    'v3j2ccfc': {
      'pt': 'Ordem',
      'en': '',
    },
    '83jwzv0e': {
      'pt': 'Ordem',
      'en': '',
    },
    'f7huvekb': {
      'pt': 'Descrição',
      'en': '',
    },
    'htu2ksu4': {
      'pt': 'Descrição',
      'en': '',
    },
    '55tro8u5': {
      'pt': 'Tempo estimado',
      'en': '',
    },
    'tiuz3zk1': {
      'pt': 'Tempo estimado (minutos)',
      'en': '',
    },
    'nkpoa7s4': {
      'pt': 'Medição',
      'en': '',
    },
    'xcgmlfaw': {
      'pt': 'Salvar',
      'en': '',
    },
    'vzhq5wvo': {
      'pt': 'Cancelar',
      'en': '',
    },
  },
  // gridViewBase
  {
    'cwmf8n1z': {
      'pt': 'Tarefas',
      'en': '',
    },
    'bnmvgndq': {
      'pt': 'Ativos',
      'en': '',
    },
    'vh8xf0bd': {
      'pt': 'Busca Descrição',
      'en': '',
    },
    'e2z2d7i1': {
      'pt': 'Sel.',
      'en': '',
    },
    'hq7wbbdt': {
      'pt': 'Ordem',
      'en': '',
    },
    'wpmsgr9v': {
      'pt': 'Descrição',
      'en': '',
    },
    '6oxwwnl7': {
      'pt': 'TE',
      'en': '',
    },
    'zo6g8rcn': {
      'pt': ' ',
      'en': '',
    },
    'iwf4qd88': {
      'pt': ' ',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'wkjnae4b': {
      'pt': '',
      'en': '',
    },
    'nrsvr2dx': {
      'pt': '',
      'en': '',
    },
    'tdgbpb9h': {
      'pt': '',
      'en': '',
    },
    'r2g5261o': {
      'pt': '',
      'en': '',
    },
    'wgxtqpnz': {
      'pt': '',
      'en': '',
    },
    'o9x15lpn': {
      'pt': '',
      'en': '',
    },
    '2tfs0gn6': {
      'pt': '',
      'en': '',
    },
    '49f13su2': {
      'pt': '',
      'en': '',
    },
    'nf9ysl8y': {
      'pt': '',
      'en': '',
    },
    '7b1f4bpp': {
      'pt': '',
      'en': '',
    },
    'vr9mwlet': {
      'pt': '',
      'en': '',
    },
    'bzdo7qfd': {
      'pt': '',
      'en': '',
    },
    'jbesx335': {
      'pt': '',
      'en': '',
    },
    'mwrcygp5': {
      'pt': '',
      'en': '',
    },
    'rckdf0nk': {
      'pt': '',
      'en': '',
    },
    'cl87o116': {
      'pt': '',
      'en': '',
    },
    'juwug4y0': {
      'pt': '',
      'en': '',
    },
    'famwdtso': {
      'pt': '',
      'en': '',
    },
    '43qi5q71': {
      'pt': '',
      'en': '',
    },
    'r6yvt0oh': {
      'pt': '',
      'en': '',
    },
    'jhro153y': {
      'pt': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
