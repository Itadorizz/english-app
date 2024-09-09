class EnglishMaterial {
  String materialname;
  String formula;
  String description;
  String short;
  String long;
  String imageAsset;

  EnglishMaterial({
    required this.materialname,
    required this.formula,
    required this.description,
    required this.short,
    required this.long,
    required this.imageAsset,
  });
}

var englishMaterialList = <EnglishMaterial>[
  EnglishMaterial(
    materialname: 'Present Continous Tense',
    short:
        'Present continuous tense adalah bentuk tense yang dapat kamu gunakan untuk menjelaskan sesuatu atau menyatakan aksi yang sedang berlangsung selama waktu tertentu pada masa sekarang (present).',
    formula:
        '''Rumus kalimat positif present coninuous tense: Subject + be (am/are/is) + verb1 -ing + complement.
    
Rumus kalimat negatif present continuous tense: Subject + be (am/are/is) + not + verb1 -ing + complement.
                
Rumus kalimat tanya present continuous tense: Be (am/is/are) + subject + verb1 -ing + complement?''',
    description:
        '''Rumus present continuous tense untuk kalimat positif adalah subject + be (am/are/is) + verb1 -ing + complement. Yap yang menjadi ciri khas dari present continuous tense adalah penambahan –ing di akhir kata kerja. Jadi, apa rumus (+) (-) (?) dari present continuous tense?''',
    long: 'long',
    imageAsset: 'images/present.png',
  ),
  EnglishMaterial(
    materialname: 'Simple Present Tense',
    formula: '''(+) Subject + To be + Complement
(-) Subject + To be + Not + Complement
(?) To be + Subject + Complement ''',
    description:
        'Dalam kalimat verbal, setelah subjek akan diikuti oleh kata kerja (V). Sementara itu pada kalimat nominal, setelah subjek akan diiringi dengan non kata kerja yang biasa kita kenal sebagai auxiliary verb atau to be (kata kerja bantu). Apa rumus simple present tense? Secara umum, rumus simple present tense adalah Subject + Verb 1(s/es) + Complement untuk kalimat positif dengan pola verbal. Kalau polanya nominal, maka rumus present tense menjadi Subject + Auxiliary Verb (to be) + Complement.',
    short:
        'Simple present tense adalah bentuk tenses yang digunakan untuk menyatakan kejadian yang terjadi secara teratur, rutin, atau biasa dilakukan pada masa kini.',
    long: 'long',
    imageAsset: 'images/simple.png',
  ),
  EnglishMaterial(
    materialname: 'Simple Past Tense',
    formula: '''(+) Subject + to be (was/were) + complement

(-)  Subject +to be (was/were) + not + complement

(?) To be (was/were) + Subject + complement''',
    description:
        'Formula atau rumus simple past tense adalah subject + verb 2 + object + complement untuk bentuk kalimat positif.',
    short:
        'Simple past tense adalah tenses untuk menunjukkan aksi yang terjadi di masa lampau dan telah selesai pada waktu tertentu di masa lampau. ',
    long: 'long',
    imageAsset: 'images/simple2.png',
  ),
];
