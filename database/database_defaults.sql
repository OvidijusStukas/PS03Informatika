-- Default roles
INSERT INTO UserRole (UserRoleName)
VALUES ('ROLE_ADMIN'), ('ROLE_EMPLOYEE'), ('ROLE_USER');

INSERT INTO CarConfigurationIndex (Name)
VALUES ('brand'), ('model'), ('fuelType'), ('chassisType'), ('transmissionType'), ('wheelPosition'), ('driveType');

INSERT INTO ServiceType (ServiceName)
VALUES ('papildomas padangų komplektas'), ('pilnas kūro bakas'), ('nuplautas automobilis'), ('garso aparatūra'), ('tepalų pakeitimas'), ('dirželių keitimas')

INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'driveType'),
    'Priekiniai',
    1
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'driveType'),
    'Galiniai',
    2
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'driveType'),
    '4x4',
    3
  );

INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'wheelPosition'),
    'Kairėje',
    1
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'wheelPosition'),
    'Dešinėje',
    2
  );

INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'fuelType'),
    'Dyzelinas',
    1
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'fuelType'),
    'Benzinas',
    2
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'fuelType'),
    'Benzinas / dujos',
    3
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'fuelType'),
    'Benzinas / elektra',
    4
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'fuelType'),
    'Elektra',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'fuelType'),
    'Dyzelinas / elektra',
    6
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'fuelType'),
    'Dyzelinas / dujos',
    7
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'fuelType'),
    'Bioetanolis (E85)',
    8
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'fuelType'),
    'Kita',
    9
  );

INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'transmissionType'),
    'Mechaninė',
    1
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'transmissionType'),
    'Automatinė',
    2
  );

INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'chassisType'),
    'Sedanas',
    1
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'chassisType'),
    'Hečbekas',
    2
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'chassisType'),
    'Universalas',
    3
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'chassisType'),
    'Vienatūris',
    4
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'chassisType'),
    'Visureigis',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'chassisType'),
    'Kupė (Coupe)',
    6
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'chassisType'),
    'Komercinis',
    7
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'chassisType'),
    'Kabrioletas / Roadster',
    8
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'chassisType'),
    'Limuzinas',
    9
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'chassisType'),
    'Pikapas',
    10
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'chassisType'),
    'Kita',
    11
  );

INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Abarth',
    1
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'AC',
    2
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Acura',
    3
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Aixam',
    4
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Alfa',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Alpina',
    6
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'AMC',
    7
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'ARO',
    8
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Asia',
    9
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Aston',
    10
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Audi',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Austin',
    12
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Bentley',
    13
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'BMW',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Briliance',
    15
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Bugatti',
    16
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Buick',
    17
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Cadillac',
    18
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Chevrolet',
    19
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Chrysler',
    20
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Citroen',
    21
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Cobra',
    22
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Dacia',
    23
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Daewoo',
    24
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'DAF',
    25
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Daihatsu',
    26
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Datsun',
    27
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Delorean',
    28
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Desoto',
    29
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Dodge',
    30
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'DR',
    31
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Eagle',
    32
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Ferrari',
    33
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Fiat',
    34
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Fisker',
    35
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Ford',
    36
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'GAZ',
    37
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Geo',
    38
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'GMC',
    39
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Gonow',
    40
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Great',
    41
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Honda',
    42
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Hummer',
    43
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Hyundai',
    44
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Infiniti',
    45
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'International',
    46
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Isuzu',
    47
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Iveco',
    48
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Jaguar',
    49
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Jeep',
    50
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Kia',
    51
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Koenigsegg',
    52
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Lada',
    53
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Lamborghini',
    54
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Lancia',
    55
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Land',
    56
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Landwind',
    57
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Lexus',
    58
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Ligier',
    59
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Lincoln',
    60
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Lotus',
    61
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'LuAZ',
    62
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Mahindra',
    63
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Maserati',
    64
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Maybach',
    65
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Mazda',
    66
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Mclaren',
    67
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Mercedes',
    68
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Mercury',
    69
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'MG',
    70
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Microcar',
    71
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Mini',
    72
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Mitsubishi',
    73
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Morgan',
    74
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Moskvich',
    75
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Nissan',
    76
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Norster',
    77
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Nysa',
    78
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Oldsmobile',
    78
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Opel',
    79
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Packard',
    80
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Peugeot',
    81
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Plymouth',
    82
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Pontiac',
    83
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Porsche',
    84
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Proton',
    85
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Renault',
    86
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Rolls',
    87
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Roosevelt',
    88
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Rover',
    89
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Saab',
    90
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Santana',
    91
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Saturn',
    92
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Scion',
    93
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Seat',
    94
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Secma',
    95
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Shuanghuan',
    96
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Skoda',
    97
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Smart',
    98
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Spartan',
    99
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Spyker',
    100
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'SsangYong',
    101
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Studebaker',
    102
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Subaru',
    103
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Suzuki',
    104
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Talbot',
    105
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Tartan',
    106
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Tata',
    107
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Tatra',
    108
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Tazzari',
    109
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Tesla',
    110
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Think',
    111
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Toyota',
    112
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Trabant',
    113
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Triumph',
    114
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'UAZ',
    115
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Vauxhall',
    116
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Venturi',
    116
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Volkswagen',
    117
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Volvo',
    118
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Wanderer',
    119
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'Wartburg',
    120
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'brand'),
    'ZAZ',
    121
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Punto Evo',
    1
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Ace',
    2
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Aceca',
    2
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Cobra',
    2
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'CL',
    3
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'EL',
    3
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'ILX',
    3
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Integra',
    3
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'MDX',
    3
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'NSX',
    3
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'RDX',
    3
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'RL',
    3
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'RLX',
    3
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'RSX',
    3
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'SLX',
    3
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'TL',
    3
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'TLX',
    3
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'TSX',
    3
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Vigor',
    3
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'ZDX',
    3
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'A751',
    4
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'City',
    4
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Crossline',
    4
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Ligier',
    4
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Scouty',
    4
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '145',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '146',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '147',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '155',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '156',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '159',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '164',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '166',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '33',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '4C',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '75',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '8C',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '90',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Alfasud',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Alfetta',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Arna',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Brera',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Crosswagon Q4',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Giulia',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Giulietta',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'GT',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'GTV',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Junior',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Mito',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'RZ/SZ',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Spider',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Sportwagon',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Sprint',
    5
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'B10',
    6
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'B12',
    6
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'B3',
    6
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'B5',
    6
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'B6',
    6
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'B7',
    6
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'B8',
    6
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'D10',
    6
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'D3',
    6
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Roadster S',
    6
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Ambassador',
    7
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Concord',
    7
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Eagle',
    7
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Gremlin',
    7
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Javelin',
    7
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Matador',
    7
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Pacer',
    7
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Rambler',
    7
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Rebel',
    7
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Spirit',
    7
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '10',
    8
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '24',
    8
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '243',
    8
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '244',
    8
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '245',
    8
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '246',
    8
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'K450',
    8
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Spartana',
    8
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Hi-Topic',
    9
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Retona',
    9
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Rocsta',
    9
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Towner',
    9
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'AR1',
    10
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Cygnet',
    10
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'DB',
    10
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'DB7',
    10
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'DB9',
    10
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'DBS',
    10
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Lagonda',
    10
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Rapide',
    10
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Vanquish',
    10
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Vantage',
    10
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Virage',
    10
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Volante',
    10
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Zagato',
    10
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '100',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '200',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '5000',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '80',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '90',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'A1',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'A2',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'A3',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'A4',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'A4 ALLROAD',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'A5',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'A5 SPORTBACK',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'A6',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'A6 ALLROAD',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'A7 SPORTBACK',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'A8',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Allroad',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Cabriolet',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Coupe',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Q2',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Q3',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Q5',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Q7',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Quattro',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'R8',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'RS Q3',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'RS2',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'RS3',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'RS4',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'RS5',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'RS6',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'RS7',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'S1',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'S2',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'S3',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'S4',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'S5',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'S6',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'S7',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'S8',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'SQ5',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'SQ7',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'TT',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'TT RS',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'TTS',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'V8',
    11
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '114',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '116',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '118',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '140',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '143',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '145',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '148',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '130',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '135',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '214 Active Tourer',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '216 Active Tourer',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '216 Gran Tourer',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '218',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '218 Active Tourer',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '218 Gran Tourer',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '220',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '220 Active Tourer',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '220 Gran Tourer',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '225',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '225 Active Tourer',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '228',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '315',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '316',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '318',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '318 Gran turismo',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '320',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '320 Gran turismo',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '323',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '324',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '325',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '325 Gran turismo',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '327',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '328',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '328 Gran turismo',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '330',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '330 Gran turismo',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '335',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '335 Gran turismo',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '340',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '346',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Active Hybrid 3',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '418 Gran Coupe',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '420',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '420 Gran Coupe',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '425',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '428',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '428 Gran Coupe',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '430',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '430 Gran Coupe',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '435',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '435 Gran Coupe',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '5 serija',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '518',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '520',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '520 Gran turismo',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '523',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '524',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '525',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '528',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '530',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '530 Gran Turismo',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '535',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '535 Gran Turismo',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '540',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '545',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '550',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '550 Gran turismo',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Active Hybrid 5',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '628',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '630',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '632',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '633',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '635',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '640',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '640 Gran Coupe',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '645',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '650',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '650 Gran Coupe',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '725',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '728',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '730',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '732',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '735',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '740',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '745',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '750',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '760',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Active Hybrid 7',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '840',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '850',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'i3',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'i8',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '1M Coupe',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'M Coupe',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'M Roadster',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'M1',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'M135',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'M2',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'M235',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'M3',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'M4',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'M5',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'M550',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'M6',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'X1',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'X3',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'X4',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'X5',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'X5 M',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'X6',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'X6 M',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Z1',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Z3',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Z3 M',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Z4',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Z4 M',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    'Z8',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '1502',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '1602',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '1802',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '2002',
    14
  );
INSERT INTO CarConfigurationPosition (CarConfigurationIndexId, Name, Value)
VALUES
  (
    (SELECT CarConfigurationIndexId FROM CarConfigurationIndex WHERE Name = 'model'),
    '2800CS',
    14
  );
