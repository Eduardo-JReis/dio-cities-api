--
-- Estrutura da tabela "pais"
--

DROP TABLE IF EXISTS "pais" CASCADE;
CREATE TABLE pais (
  id       bigserial NOT NULL,
  nome     varchar(60),
  nome_pt  varchar(60),
  sigla     varchar(2),
  bacen    integer,
  /* Keys */
  CONSTRAINT pais_pkey
    PRIMARY KEY (id)
);

COMMENT ON TABLE pais
  IS 'Pa�ses e Na��es';

COMMENT ON COLUMN pais.sigla
  IS 'ISO 3166-1 Alpha2';

--
-- Inserindo dados na tabela "pais"
--

INSERT INTO "pais" (id, nome, nome_pt, sigla, bacen) VALUES
(1, 'Brazil', 'Brasil', 'BR', 1058),
(2, 'Afghanistan', 'Afeganist�o', 'AF', 132),
(3, 'Albania', 'Alb�nia, Republica da', 'AL', 175),
(4, 'Algeria', 'Arg�lia', 'DZ', 590),
(5, 'American Samoa', 'Samoa Americana', 'AS', 6912),
(6, 'Andorra', 'Andorra', 'AD', 370),
(7, 'Angola', 'Angola', 'AO', 400),
(8, 'Anguilla', 'Anguilla', 'AI', 418),
(9, 'Antarctica', 'Ant�rtida', 'AQ', 3596),
(10, 'Antigua and Barbuda', 'Antigua e Barbuda', 'AG', 434),
(11, 'Argentina', 'Argentina', 'AR', 639),
(12, 'Armenia', 'Arm�nia, Republica da', 'AM', 647),
(13, 'Aruba', 'Aruba', 'AW', 655),
(14, 'Australia', 'Austr�lia', 'AU', 698),
(15, 'Austria', '�ustria', 'AT', 728),
(16, 'Azerbaijan', 'Azerbaij�o, Republica do', 'AZ', 736),
(17, 'Bahamas', 'Bahamas, Ilhas', 'BS', 779),
(18, 'Bahrain', 'Bahrein, Ilhas', 'BH', 809),
(19, 'Bangladesh', 'Bangladesh', 'BD', 817),
(20, 'Barbados', 'Barbados', 'BB', 833),
(21, 'Belarus', 'Belarus, Republica da', 'BY', 850),
(22, 'Belgium', 'B�lgica', 'BE', 876),
(23, 'Belize', 'Belize', 'BZ', 884),
(24, 'Benin', 'Benin', 'BJ', 2291),
(25, 'Bermuda', 'Bermudas', 'BM', 906),
(26, 'Bhutan', 'But�o', 'BT', 1198),
(27, 'Bolivia', 'Bol�via', 'BO', 973),
(28, 'Bosnia and Herzegowina', 'B�snia-herzegovina (Republica da)', 'BA', 981),
(29, 'Botswana', 'Botsuana', 'BW', 1015),
(30, 'Bouvet Island', 'Bouvet, Ilha', 'BV', 1023),
(31, 'British Indian Ocean Territory', 'Territ�rio Brit�nico do Oceano Indico', 'IO', 7820),
(32, 'Brunei Darussalam', 'Brunei', 'BN', 1082),
(33, 'Bulgaria', 'Bulg�ria, Republica da', 'BG', 1112),
(34, 'Burkina Faso', 'Burkina Faso', 'BF', 310),
(35, 'Burundi', 'Burundi', 'BI', 1155),
(36, 'Cambodia', 'Camboja', 'KH', 1414),
(37, 'Cameroon', 'Camar�es', 'CM', 1457),
(38, 'Canada', 'Canada', 'CA', 1490),
(39, 'Cape Verde', 'Cabo Verde, Republica de', 'CV', 1279),
(40, 'Cayman Islands', 'Cayman, Ilhas', 'KY', 1376),
(41, 'Central African Republic', 'Republica Centro-Africana', 'CF', 6408),
(42, 'Chad', 'Chade', 'TD', 7889),
(43, 'Chile', 'Chile', 'CL', 1589),
(44, 'China', 'China, Republica Popular', 'CN', 1600),
(45, 'Christmas Island', 'Christmas, Ilha (Navidad)', 'CX', 5118),
(46, 'Cocos (Keeling) Islands', 'Cocos (Keeling), Ilhas', 'CC', 1651),
(47, 'Colombia', 'Col�mbia', 'CO', 1694),
(48, 'Comoros', 'Comores, Ilhas', 'KM', 1732),
(49, 'Congo', 'Congo', 'CG', 1775),
(50, 'Congo, the Democratic Republic of the', 'Congo, Republica Democr�tica do', 'CD', 8885),
(51, 'Cook Islands', 'Cook, Ilhas', 'CK', 1830),
(52, 'Costa Rica', 'Costa Rica', 'CR', 1961),
(53, 'Cote d`Ivoire', 'Costa do Marfim', 'CI', 1937),
(54, 'Croatia (Hrvatska)', 'Cro�cia (Republica da)', 'HR', 1953),
(55, 'Cuba', 'Cuba', 'CU', 1996),
(56, 'Cyprus', 'Chipre', 'CY', 1635),
(57, 'Czech Republic', 'Tcheca, Republica', 'CZ', 7919),
(58, 'Denmark', 'Dinamarca', 'DK', 2321),
(59, 'Djibouti', 'Djibuti', 'DJ', 7838),
(60, 'Dominica', 'Dominica, Ilha', 'DM', 2356),
(61, 'Dominican Republic', 'Republica Dominicana', 'DO', 6475),
(62, 'East Timor', 'Timor Leste', 'TL', 7951),
(63, 'Ecuador', 'Equador', 'EC', 2399),
(64, 'Egypt', 'Egito', 'EG', 2402),
(65, 'El Salvador', 'El Salvador', 'SV', 6874),
(66, 'Equatorial Guinea', 'Guine-Equatorial', 'GQ', 3310),
(67, 'Eritrea', 'Eritreia', 'ER', 2437),
(68, 'Estonia', 'Est�nia, Republica da', 'EE', 2518),
(69, 'Ethiopia', 'Eti�pia', 'ET', 2534),
(70, 'Falkland Islands (Malvinas)', 'Falkland (Ilhas Malvinas)', 'FK', 2550),
(71, 'Faroe Islands', 'Feroe, Ilhas', 'FO', 2593),
(72, 'Fiji', 'Fiji', 'FJ', 8702),
(73, 'Finland', 'Finl�ndia', 'FI', 2712),
(74, 'France', 'Franca', 'FR', 2755),
(76, 'French Guiana', 'Guiana francesa', 'GF', 3255),
(77, 'French Polynesia', 'Polin�sia Francesa', 'PF', 5991),
(78, 'French Southern Territories', 'Terras Austrais e Ant�rticas Francesas', 'TF', 3607),
(79, 'Gabon', 'Gab�o', 'GA', 2810),
(80, 'Gambia', 'Gambia', 'GM', 2852),
(81, 'Georgia', 'Georgia, Republica da', 'GE', 2917),
(82, 'Germany', 'Alemanha', 'DE', 230),
(83, 'Ghana', 'Gana', 'GH', 2895),
(84, 'Gibraltar', 'Gibraltar', 'GI', 2933),
(85, 'Greece', 'Gr�cia', 'GR', 3018),
(86, 'Greenland', 'Groenl�ndia', 'GL', 3050),
(87, 'Grenada', 'Granada', 'GD', 2976),
(88, 'Guadeloupe', 'Guadalupe', 'GP', 3093),
(89, 'Guam', 'Guam', 'GU', 3131),
(90, 'Guatemala', 'Guatemala', 'GT', 3174),
(91, 'Guinea', 'Guine', 'GN', 3298),
(92, 'Guinea-Bissau', 'Guine-Bissau', 'GW', 3344),
(93, 'Guyana', 'Guiana', 'GY', 3379),
(94, 'Haiti', 'Haiti', 'HT', 3417),
(95, 'Heard and Mc Donald Islands', 'Ilha Heard e Ilhas McDonald', 'HM', 3603),
(96, 'Holy See (Vatican City State)', 'Vaticano, Estado da Cidade do', 'VA', 8486),
(97, 'Honduras', 'Honduras', 'HN', 3450),
(98, 'Hong Kong', 'Hong Kong', 'HK', 3514),
(99, 'Hungary', 'Hungria, Republica da', 'HU', 3557),
(100, 'Iceland', 'Isl�ndia', 'IS', 3794),
(101, 'India', '�ndia', 'IN', 3611),
(102, 'Indonesia', 'Indon�sia', 'ID', 3654),
(103, 'Iran (Islamic Republic of)', 'Ira, Republica Isl�mica do', 'IR', 3727),
(104, 'Iraq', 'Iraque', 'IQ', 3697),
(105, 'Ireland', 'Irlanda', 'IE', 3751),
(106, 'Israel', 'Israel', 'IL', 3832),
(107, 'Italy', 'It�lia', 'IT', 3867),
(108, 'Jamaica', 'Jamaica', 'JM', 3913),
(109, 'Japan', 'Jap�o', 'JP', 3999),
(110, 'Jordan', 'Jord�nia', 'JO', 4030),
(111, 'Kazakhstan', 'Cazaquist�o, Republica do', 'KZ', 1538),
(112, 'Kenya', 'Qu�nia', 'KE', 6238),
(113, 'Kiribati', 'Kiribati', 'KI', 4111),
(114, 'Korea, Democratic People`s Republic of', 'Coreia, Republica Popular Democr�tica da', 'KP', 1872),
(115, 'Korea, Republic of', 'Coreia, Republica da', 'KR', 1902),
(116, 'Kuwait', 'Kuwait', 'KW', 1988),
(117, 'Kyrgyzstan', 'Quirguiz, Republica', 'KG', 6254),
(118, 'Lao People`s Democratic Republic', 'Laos, Republica Popular Democr�tica do', 'LA', 4200),
(119, 'Latvia', 'Let�nia, Republica da', 'LV', 4278),
(120, 'Lebanon', 'L�bano', 'LB', 4316),
(121, 'Lesotho', 'Lesoto', 'LS', 4260),
(122, 'Liberia', 'Lib�ria', 'LR', 4340),
(123, 'Libyan Arab Jamahiriya', 'L�bia', 'LY', 4383),
(124, 'Liechtenstein', 'Liechtenstein', 'LI', 4405),
(125, 'Lithuania', 'Litu�nia, Republica da', 'LT', 4421),
(126, 'Luxembourg', 'Luxemburgo', 'LU', 4456),
(127, 'Macau', 'Macau', 'MO', 4472),
(128, 'North Macedonia', 'Maced�nia do Norte', 'MK', 4499),
(129, 'Madagascar', 'Madagascar', 'MG', 4502),
(130, 'Malawi', 'Malavi', 'MW', 4588),
(131, 'Malaysia', 'Mal�sia', 'MY', 4553),
(132, 'Maldives', 'Maldivas', 'MV', 4618),
(133, 'Mali', 'Mali', 'ML', 4642),
(134, 'Malta', 'Malta', 'MT', 4677),
(135, 'Marshall Islands', 'Marshall, Ilhas', 'MH', 4766),
(136, 'Martinique', 'Martinica', 'MQ', 4774),
(137, 'Mauritania', 'Maurit�nia', 'MR', 4880),
(138, 'Mauritius', 'Mauricio', 'MU', 4855),
(139, 'Mayotte', 'Mayotte (Ilhas Francesas)', 'YT', 4885),
(140, 'Mexico', 'M�xico', 'MX', 4936),
(141, 'Micronesia, Federated States of', 'Micronesia', 'FM', 4995),
(142, 'Moldova, Republic of', 'Mold�via, Republica da', 'MD', 4944),
(143, 'Monaco', 'M�naco', 'MC', 4952),
(144, 'Mongolia', 'Mong�lia', 'MN', 4979),
(145, 'Montserrat', 'Montserrat, Ilhas', 'MS', 5010),
(146, 'Morocco', 'Marrocos', 'MA', 4740),
(147, 'Mozambique', 'Mo�ambique', 'MZ', 5053),
(148, 'Myanmar', 'Mianmar (Birm�nia)', 'MM', 930),
(149, 'Namibia', 'Nam�bia', 'NA', 5070),
(150, 'Nauru', 'Nauru', 'NR', 5088),
(151, 'Nepal', 'Nepal', 'NP', 5177),
(152, 'Netherlands', 'Pa�ses Baixos (Holanda)', 'NL', 5738),
(154, 'New Caledonia', 'Nova Caledonia', 'NC', 5428),
(155, 'New Zealand', 'Nova Zel�ndia', 'NZ', 5487),
(156, 'Nicaragua', 'Nicar�gua', 'NI', 5215),
(157, 'Niger', 'N�ger', 'NE', 5258),
(158, 'Nigeria', 'Nig�ria', 'NG', 5282),
(159, 'Niue', 'Niue, Ilha', 'NU', 5312),
(160, 'Norfolk Island', 'Norfolk, Ilha', 'NF', 5355),
(161, 'Northern Mariana Islands', 'Marianas do Norte', 'MP', 4723),
(162, 'Norway', 'Noruega', 'NO', 5380),
(163, 'Oman', 'Oma', 'OM', 5568),
(164, 'Pakistan', 'Paquist�o', 'PK', 5762),
(165, 'Palau', 'Palau', 'PW', 5754),
(166, 'Panama', 'Panam�', 'PA', 5800),
(167, 'Papua New Guinea', 'Papua Nova Guine', 'PG', 5452),
(168, 'Paraguay', 'Paraguai', 'PY', 5860),
(169, 'Peru', 'Peru', 'PE', 5894),
(170, 'Philippines', 'Filipinas', 'PH', 2674),
(171, 'Pitcairn', 'Pitcairn, Ilha', 'PN', 5932),
(172, 'Poland', 'Pol�nia, Republica da', 'PL', 6033),
(173, 'Portugal', 'Portugal', 'PT', 6076),
(174, 'Puerto Rico', 'Porto Rico', 'PR', 6114),
(175, 'Qatar', 'Catar', 'QA', 1546),
(176, 'Reunion', 'Reuni�o, Ilha', 'RE', 6602),
(177, 'Romania', 'Rom�nia', 'RO', 6700),
(178, 'Russian Federation', 'R�ssia, Federa��o da', 'RU', 6769),
(179, 'Rwanda', 'Ruanda', 'RW', 6750),
(180, 'Saint Kitts and Nevis', 'S�o Cristov�o e Neves, Ilhas', 'KN', 6955),
(181, 'Saint LUCIA', 'Santa Lucia', 'LC', 7153),
(182, 'Saint Vincent and the Grenadines', 'S�o Vicente e Granadinas', 'VC', 7056),
(183, 'Samoa', 'Samoa', 'WS', 6904),
(184, 'San Marino', 'San Marino', 'SM', 6971),
(185, 'Sao Tome and Principe', 'S�o Tome e Pr�ncipe, Ilhas', 'ST', 7200),
(186, 'Saudi Arabia', 'Ar�bia Saudita', 'SA', 531),
(187, 'Senegal', 'Senegal', 'SN', 7285),
(188, 'Seychelles', 'Seychelles', 'SC', 7315),
(189, 'Sierra Leone', 'Serra Leoa', 'SL', 7358),
(190, 'Singapore', 'Cingapura', 'SG', 7412),
(191, 'Slovakia (Slovak Republic)', 'Eslovaca, Republica', 'SK', 2470),
(192, 'Slovenia', 'Eslov�nia, Republica da', 'SI', 2461),
(193, 'Solomon Islands', 'Salom�o, Ilhas', 'SB', 6777),
(194, 'Somalia', 'Somalia', 'SO', 7480),
(195, 'South Africa', '�frica do Sul', 'ZA', 7560),
(196, 'South Georgia and the South Sandwich Islands', 'Ilhas Ge�rgia do Sul e Sandwich do Sul', 'GS', 2925),
(197, 'Spain', 'Espanha', 'ES', 2453),
(198, 'Sri Lanka', 'Sri Lanka', 'LK', 7501),
(199, 'St. Helena', 'Santa Helena', 'SH', 7102),
(200, 'St. Pierre and Miquelon', 'S�o Pedro e Miquelon', 'PM', 7005),
(201, 'Sudan', 'Sud�o', 'SD', 7595),
(202, 'Suriname', 'Suriname', 'SR', 7706),
(203, 'Svalbard and Jan Mayen Islands', 'Svalbard e Jan Mayen', 'SJ', 7552),
(204, 'Swaziland', 'Eswatini', 'SZ', 7544),
(205, 'Sweden', 'Su�cia', 'SE', 7641),
(206, 'Switzerland', 'Su��a', 'CH', 7676),
(207, 'Syrian Arab Republic', 'S�ria, Republica �rabe da', 'SY', 7447),
(208, 'Taiwan, Province of China', 'Formosa (Taiwan)', 'TW', 1619),
(209, 'Tajikistan', 'Tadjiquistao, Republica do', 'TJ', 7722),
(210, 'Tanzania, United Republic of', 'Tanz�nia, Republica Unida da', 'TZ', 7803),
(211, 'Thailand', 'Tail�ndia', 'TH', 7765),
(212, 'Togo', 'Togo', 'TG', 8001),
(213, 'Tokelau', 'Toquelau, Ilhas', 'TK', 8052),
(214, 'Tonga', 'Tonga', 'TO', 8109),
(215, 'Trinidad and Tobago', 'Trinidad e Tobago', 'TT', 8150),
(216, 'Tunisia', 'Tun�sia', 'TN', 8206),
(217, 'Turkey', 'Turquia', 'TR', 8273),
(218, 'Turkmenistan', 'Turcomenist�o, Republica do', 'TM', 8249),
(219, 'Turks and Caicos Islands', 'Turcas e Caicos, Ilhas', 'TC', 8230),
(220, 'Tuvalu', 'Tuvalu', 'TV', 8281),
(221, 'Uganda', 'Uganda', 'UG', 8338),
(222, 'Ukraine', 'Ucr�nia', 'UA', 8311),
(223, 'United Arab Emirates', 'Emirados �rabes Unidos', 'AE', 2445),
(224, 'United Kingdom', 'Reino Unido', 'GB', 6289),
(225, 'United States', 'Estados Unidos', 'US', 2496),
(226, 'United States Minor Outlying Islands', 'Ilhas Menores Distantes dos Estados Unidos', 'UM', 18664),
(227, 'Uruguay', 'Uruguai', 'UY', 8451),
(228, 'Uzbekistan', 'Uzbequist�o, Republica do', 'UZ', 8478),
(229, 'Vanuatu', 'Vanuatu', 'VU', 5517),
(230, 'Venezuela', 'Venezuela', 'VE', 8508),
(231, 'Viet Nam', 'Vietn�', 'VN', 8583),
(232, 'Virgin Islands (British)', 'Virgens, Ilhas (Brit�nicas)', 'VG', 8630),
(233, 'Virgin Islands (U.S.)', 'Virgens, Ilhas (E.U.A.)', 'VI', 8664),
(234, 'Wallis and Futuna Islands', 'Wallis e Futuna, Ilhas', 'WF', 8753),
(235, 'Western Sahara', 'Saara Ocidental', 'EH', 6858),
(236, 'Yemen', 'I�men', 'YE', 3573),
(237, 'Yugoslavia', 'Iugosl�via, Rep�blica Fed. da', 'YU', 3883),
(238, 'Zambia', 'Z�mbia', 'ZM', 8907),
(239, 'Zimbabwe', 'Zimbabue', 'ZW', 6653),
(240, 'Bailiwick of Guernsey', 'Guernsey, Ilha do Canal (Inclui Alderney e Sark)', 'GG', 1504),
(241, 'Bailiwick of Jersey', 'Jersey, Ilha do Canal', 'JE', 1508),
(243, 'Isle of Man', 'Man, Ilha de', 'IM', 3595),
(246, 'Crna Gora (Montenegro)', 'Montenegro', 'ME', 4985),
(247, 'S�RVIA', 'Republika Srbija', 'RS', 7370),
(248, 'Republic of South Sudan', 'Sudao do Sul', 'SS', 7600),
(249, 'Zona del Canal de Panam�', 'Zona do Canal do Panam�', NULL, 8958),
(252, 'Dawlat Filas?in', 'Palestina', 'PS', 5780),
(253, '�land Islands', 'Aland, Ilhas', 'AX', 153),
(254, 'Saint Barth�lemy', 'Coletividade de S�o Bartolomeu', 'BL', 3598),
(255, 'Cura�ao', 'Cura�ao', 'CW', 200),
(256, 'Saint Martin', 'S�o Martinho, Ilha de (Parte Francesa)', 'SM', 6980),
(258, 'Bonaire', 'Bonaire', 'AN', 990),
(259, 'Antartica', 'Antartica', 'AQ', 420),
(260, 'Heard Island and McDonald Islands', 'Ilha Herad e Ilhas Macdonald', 'AU', 3433),
(261, 'Saint-Barth�lemy', 'S�o Bartolomeu', 'FR', 6939),
(262, 'Saint Martin', 'S�o Martinho, Ilha de (Parte Holandesa)', 'SM', 6998),
(263, 'Terres Australes et Antarctiques Fran�aises', 'Terras Austrais e Ant�rcticas Francesas', 'TF', 7811);