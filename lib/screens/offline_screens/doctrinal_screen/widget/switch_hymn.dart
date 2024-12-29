import 'package:dlcm_ghs/screens/offline_screens/doctrinal_screen/controller/pdf_screens_controller.dart';
import 'package:get/get.dart';

class SwitchHymn {
  SwitchHymn();
  //final GlobalKey<SfPdfViewerState> _sfPdfKey = GlobalKey<SfPdfViewerState>();

  final List<String> hymnsTitle =<String>[
     'GHS 1 ','GHS 2 ','GHS 3 ','GHS 4 ','GHS 5 ','GHS 6 ','GHS 7 ','GHS 8 ','GHS 9 ','GHS 10 ','GHS 11 ','GHS 12 ','GHS 13 ',
     'GHS 14 ','GHS 15 ','GHS 16 ','GHS 17 ','GHS 18 ','GHS 19 ','GHS 20 ','GHS 21 ','GHS 22 ','GHS 23 ','GHS 24 ',
     'GHS 25 ','GHS 26 ','GHS 27 ',"GHS 28 ",'GHS 29 ',"GHS 30 ","GHS 31 ","GHS 32 ","GHS 33 ","GHS 34 ","GHS 35 ","GHS 36 ",
     "GHS 37 ","GHS 38 ","GHS 39 ","GHS 40 ","GHS 41 ","GHS 42 ","GHS 43 ","GHS 44 ","GHS 45 ","GHS 46 ","GHS 47 ","GHS 48 ","GHS 49 ",
     "GHS 50 ","GHS 51 ","GHS 52 ","GHS 53 ","GHS 54 ","GHS 55 ","GHS 56 ","GHS 57 ","GHS 58 ","GHS 59 ","GHS 60 ","GHS 61 ","GHS 62 ","GHS 63 ",
     "GHS 64 ","GHS 65 ","GHS 66 ","GHS 67 ","GHS 68 ","GHS 69 ","GHS 70 ","GHS 71 ","GHS 72 ","GHS 73 ","GHS 74 ","GHS 75 ","GHS 76 ","GHS 77 ",
     "GHS 78 ","GHS 79 ","GHS 80 ","GHS 81 ","GHS 82 ","GHS 83 ","GHS 84 ","GHS 85 ","GHS 86 ","GHS 87 ","GHS 88 ","GHS 89 ","GHS 90 ","GHS 91 ","GHS 92 ","GHS 93 ",
     "GHS 94 ","GHS 95 ","GHS 96 ","GHS 97 ","GHS 98 ","GHS 99 ","GHS 100 ","GHS 101 ","GHS 102 ","GHS 103 ","GHS 104 ","GHS 105 ","GHS 106 ","GHS 107 ","GHS 108 ","GHS 109 ","GHS 110 ",
     "GHS 111 ","GHS 112 ","GHS 113 ","GHS 114 ","GHS 115 ","GHS 116 ","GHS 117 ","GHS 118 ","GHS 119 ","GHS 120 ","GHS 121 ","GHS 122 ","GHS 123 ","GHS 124 ","GHS 125 ","GHS 126 ","GHS 127 ",
     "GHS 128 ","GHS 129 ","GHS 130 ","GHS 131 ","GHS 132 ","GHS 133 ","GHS 134 ","GHS 135 ","GHS 136 ","GHS 137 ","GHS 138 ","GHS 139 ","GHS 140 ","GHS 141 ",'GHS 142 ',"GHS ","GHS ","GHS 213 ","GHS 214 ","GHS 215 ","GHS 216 ","GHS 217 ","GHS 218 ",
     "GHS 219 ","GHS 220 ","GHS 221 ","GHS 222 ","GHS 223 ","GHS 224 ","GHS 225 ","GHS 226 ","GHS 245 ","GHS 246 ","GHS 247 ","GHS 248 ","GHS 249 ","GHS 250 ","GHS 251 ","GHS 252 ","GHS 253 ","GHS 254 ","GHS 255 ","GHS 256 ","GHS 257 ","GHS 258 ","GHS 259 ",
     "GHS 260 ",
  ];

  
  String dropDownValue = 'GHS 1 ';

  final pdfController = Get.put(PdfScreensController());

  

  void switchHymn(String value) {
    switch (value) {
      case 'GHS 1 ':
        pdfController.pdfViewerController.jumpToPage(1);
        break;
      case 'GHS 2 ':
        pdfController.pdfViewerController.jumpToPage(2);
        break;
      case 'GHS 3 ':
        pdfController.pdfViewerController.jumpToPage(4);
        break;
      case 'GHS 4 ':
        pdfController.pdfViewerController.jumpToPage(5);
        break;
      case 'GHS 5 ':
        pdfController.pdfViewerController.jumpToPage(6);
        break;
      case 'GHS 6 ':
        pdfController.pdfViewerController.jumpToPage(7);
        break;
      case 'GHS 7 ':
        pdfController.pdfViewerController.jumpToPage(8);
        break;
      case 'GHS 8 ':
        pdfController.pdfViewerController.jumpToPage(9);
        break;
      case 'GHS 9 ':
        pdfController.pdfViewerController.jumpToPage(10);
        break;
      case 'GHS 10 ':
        pdfController.pdfViewerController.jumpToPage(11);
        break;
      case 'GHS 11 ':
        pdfController.pdfViewerController.jumpToPage(12);
        break;
      case 'GHS 12 ':
        pdfController.pdfViewerController.jumpToPage(13);
        break;
      case 'GHS 13 ':
        pdfController.pdfViewerController.jumpToPage(14);
        break;
      case 'GHS 14 ':
        pdfController.pdfViewerController.jumpToPage(15);
        break;
      case 'GHS 15 ':
        pdfController.pdfViewerController.jumpToPage(16);
        break;
      case 'GHS 16 ':
        pdfController.pdfViewerController.jumpToPage(17);
        break;
      case 'GHS 17 ':
        pdfController.pdfViewerController.jumpToPage(18);
        break;
      case 'GHS 18 ':
        pdfController.pdfViewerController.jumpToPage(19);
        break;
      case 'GHS 19 ':
        pdfController.pdfViewerController.jumpToPage(20);
        break;
      case 'GHS 20 ':
        pdfController.pdfViewerController.jumpToPage(22);
        break;
      case 'GHS 21 ':
        pdfController.pdfViewerController.jumpToPage(23);
        break;
      case 'GHS 22 ':
        pdfController.pdfViewerController.jumpToPage(24);
        break;
      case 'GHS 23 ':
        pdfController.pdfViewerController.jumpToPage(25);
        break;
      case 'GHS 24 ':
        pdfController.pdfViewerController.jumpToPage(26);
        break;
      case 'GHS 25 ':
        pdfController.pdfViewerController.jumpToPage(27);
        break;
      case 'GHS 26 ':
        pdfController.pdfViewerController.jumpToPage(28);
        break;
      case 'GHS 27 ':
        pdfController.pdfViewerController.jumpToPage(29);
        break;
      case "GHS 28 ":
        pdfController.pdfViewerController.jumpToPage(30);
        break;
      case 'GHS 29 ':
        pdfController.pdfViewerController.jumpToPage(31);
        break;
      case "GHS 30 ":
        pdfController.pdfViewerController.jumpToPage(35);
        break;
      case "GHS 31 ":
        pdfController.pdfViewerController.jumpToPage(36);
        break;
      case "GHS 32 ":
        pdfController.pdfViewerController.jumpToPage(37);
        break;
      case "GHS 33 ":
        pdfController.pdfViewerController.jumpToPage(39);
        break;
      case "GHS 34 ":
        pdfController.pdfViewerController.jumpToPage(40);
        break;
      case "GHS 35 ":
        pdfController.pdfViewerController.jumpToPage(41);
        break;
      case "GHS 36 ":
        pdfController.pdfViewerController.jumpToPage(42);
        break;
      case "GHS 37 ":
        pdfController.pdfViewerController.jumpToPage(43);
        break;
      case "GHS 38 ":
        pdfController.pdfViewerController.jumpToPage(44);
        break;
      case "GHS 39 ":
        pdfController.pdfViewerController.jumpToPage(45);
        break;
      case "GHS 40 ":
        pdfController.pdfViewerController.jumpToPage(47);
        break;
      case "GHS 41 ":
        pdfController.pdfViewerController.jumpToPage(48);
        break;
      case "GHS 42 ":
        pdfController.pdfViewerController.jumpToPage(49);
        break;
      case "GHS 43 ":
        pdfController.pdfViewerController.jumpToPage(50);
        break;
      case "GHS 44 ":
        pdfController.pdfViewerController.jumpToPage(51);
        break;
      case "GHS 45 ":
        pdfController.pdfViewerController.jumpToPage(52);
        break;
      case "GHS 46 ":
        pdfController.pdfViewerController.jumpToPage(53);
        break;
      case "GHS 47 ":
        pdfController.pdfViewerController.jumpToPage(54);
        break;
      case "GHS 48 ":
        pdfController.pdfViewerController.jumpToPage(55);
        break;
      case "GHS 49 ":
        pdfController.pdfViewerController.jumpToPage(56);
        break;
      case "GHS 50 ":
        pdfController.pdfViewerController.jumpToPage(57);
        break;
      case "GHS 51 ":
        pdfController.pdfViewerController.jumpToPage(58);
        break;
      case "GHS 52 ":
        pdfController.pdfViewerController.jumpToPage(59);
        break;
      case "GHS 53 ":
        pdfController.pdfViewerController.jumpToPage(60);
        break;
      case "GHS 54 ":
        pdfController.pdfViewerController.jumpToPage(61);
        break;
      case "GHS 55 ":
        pdfController.pdfViewerController.jumpToPage(62);
        break;
      case "GHS 56 ":
        pdfController.pdfViewerController.jumpToPage(63);
        break;
      case "GHS 57 ":
        pdfController.pdfViewerController.jumpToPage(65);
        break;
      case "GHS 58 ":
        pdfController.pdfViewerController.jumpToPage(67);
        break;
      case "GHS 59 ":
        pdfController.pdfViewerController.jumpToPage(68);
        break;
      case "GHS 60 ":
        pdfController.pdfViewerController.jumpToPage(69);
        break;
      case "GHS 61 ":
        pdfController.pdfViewerController.jumpToPage(70);
        break;
      case "GHS 62 ":
        pdfController.pdfViewerController.jumpToPage(73);
        break;
      case "GHS 63 ":
        pdfController.pdfViewerController.jumpToPage(74);
        break;
      case "GHS 64 ":
        pdfController.pdfViewerController.jumpToPage(75);
        break;
      case "GHS 65 ":
        pdfController.pdfViewerController.jumpToPage(76);
        break;
      case "GHS 66 ":
        pdfController.pdfViewerController.jumpToPage(77);
        break;
      case "GHS 67 ":
        pdfController.pdfViewerController.jumpToPage(78);
        break;
      case "GHS 68 ":
        pdfController.pdfViewerController.jumpToPage(79);
        break;
      case "GHS 69 ":
        pdfController.pdfViewerController.jumpToPage(80);
        break;
      case "GHS 70 ":
        pdfController.pdfViewerController.jumpToPage(81);
        break;
      case "GHS 71 ":
        pdfController.pdfViewerController.jumpToPage(82);
        break;
      case "GHS 72 ":
        pdfController.pdfViewerController.jumpToPage(83);
        break;
      case "GHS 73 ":
        pdfController.pdfViewerController.jumpToPage(84);
        break;
      case "GHS 74 ":
        pdfController.pdfViewerController.jumpToPage(85);
        break;
      case "GHS 75 ":
        pdfController.pdfViewerController.jumpToPage(86);
        break;
      case "GHS 76 ":
        pdfController.pdfViewerController.jumpToPage(87);
        break;
      case "GHS 77 ":
        pdfController.pdfViewerController.jumpToPage(88);
        break;
      case "GHS 78 ":
        pdfController.pdfViewerController.jumpToPage(89);
        break;
      case "GHS 79 ":
        pdfController.pdfViewerController.jumpToPage(90);
        break;
      case "GHS 80 ":
        pdfController.pdfViewerController.jumpToPage(91);
        break;
      case "GHS 81 ":
        pdfController.pdfViewerController.jumpToPage(92);
        break;
      case "GHS 82 ":
        pdfController.pdfViewerController.jumpToPage(93);
        break;
      case "GHS 83 ":
        pdfController.pdfViewerController.jumpToPage(95);
        break;
      case "GHS 84 ":
        pdfController.pdfViewerController.jumpToPage(96);
        break;
      case "GHS 85 ":
        pdfController.pdfViewerController.jumpToPage(97);
        break;
      case "GHS 86 ":
        pdfController.pdfViewerController.jumpToPage(98);
        break;
      case "GHS 87 ":
        pdfController.pdfViewerController.jumpToPage(99);
        break;
      case "GHS 88 ":
        pdfController.pdfViewerController.jumpToPage(102);
        break;
      case "GHS 89 ":
        pdfController.pdfViewerController.jumpToPage(103);
        break;
      case "GHS 90 ":
        pdfController.pdfViewerController.jumpToPage(104);
        break;
      case "GHS 91 ":
        pdfController.pdfViewerController.jumpToPage(105);
        break;
      case "GHS 92 ":
        pdfController.pdfViewerController.jumpToPage(107);
        break;
      case "GHS 93 ":
        pdfController.pdfViewerController.jumpToPage(108);
        break;
      case "GHS 94 ":
        pdfController.pdfViewerController.jumpToPage(109);
        break;
      case "GHS 95 ":
        pdfController.pdfViewerController.jumpToPage(110);
        break;
      case "GHS 96 ":
        pdfController.pdfViewerController.jumpToPage(111);
        break;
      case "GHS 97 ":
        pdfController.pdfViewerController.jumpToPage(113);
        break;
      case "GHS 98 ":
        pdfController.pdfViewerController.jumpToPage(114);
        break;
      case "GHS 99 ":
        pdfController.pdfViewerController.jumpToPage(116);
        break;
      case "GHS 100 ":
        pdfController.pdfViewerController.jumpToPage(117);
        break;
      case "GHS 101 ":
        pdfController.pdfViewerController.jumpToPage(118);
        break;
      case "GHS 102 ":
        pdfController.pdfViewerController.jumpToPage(119);
        break;
      case "GHS 103 ":
        pdfController.pdfViewerController.jumpToPage(120);
        break;
      case "GHS 104 ":
        pdfController.pdfViewerController.jumpToPage(122);
        break;
      case "GHS 105 ":
        pdfController.pdfViewerController.jumpToPage(123);
        break;
      case "GHS 106 ":
        pdfController.pdfViewerController.jumpToPage(124);
        break;
      case "GHS 107 ":
        pdfController.pdfViewerController.jumpToPage(125);
        break;
      case "GHS 108 ":
        pdfController.pdfViewerController.jumpToPage(126);
        break;
      case "GHS 109 ":
        pdfController.pdfViewerController.jumpToPage(127);
        break;
      case "GHS 110 ":
        pdfController.pdfViewerController.jumpToPage(128);
        break;
      case "GHS 111 ":
        pdfController.pdfViewerController.jumpToPage(129);
        break;
      case "GHS 112 ":
        pdfController.pdfViewerController.jumpToPage(130);
        break;
      case "GHS 113 ":
        pdfController.pdfViewerController.jumpToPage(131);
        break;
      case "GHS 114 ":
        pdfController.pdfViewerController.jumpToPage(132);
        break;
      case "GHS 115 ":
        pdfController.pdfViewerController.jumpToPage(133);
        break;
      case "GHS 116 ":
        pdfController.pdfViewerController.jumpToPage(134);
        break;
      case "GHS 117 ":
        pdfController.pdfViewerController.jumpToPage(135);
        break;
      case "GHS 118 ":
        pdfController.pdfViewerController.jumpToPage(136);
        break;
      case "GHS 119 ":
        pdfController.pdfViewerController.jumpToPage(137);
        break;
      case "GHS 120 ":
        pdfController.pdfViewerController.jumpToPage(138);
        break;
      case "GHS 121 ":
        pdfController.pdfViewerController.jumpToPage(139);
        break;
      case "GHS 122 ":
        pdfController.pdfViewerController.jumpToPage(140);
        break;
      case "GHS 123 ":
        pdfController.pdfViewerController.jumpToPage(141);
        break;
      case "GHS 124 ":
        pdfController.pdfViewerController.jumpToPage(142);
        break;
      case "GHS 125 ":
        pdfController.pdfViewerController.jumpToPage(143);
        break;
      case "GHS 126 ":
        pdfController.pdfViewerController.jumpToPage(145);
        break;
      case "GHS 127 ":
        pdfController.pdfViewerController.jumpToPage(146);
        break;
      case "GHS 128 ":
        pdfController.pdfViewerController.jumpToPage(148);
        break;
      case "GHS 129 ":
        pdfController.pdfViewerController.jumpToPage(150);
        break;
      case "GHS 130 ":
        pdfController.pdfViewerController.jumpToPage(151);
        break;
      case "GHS 131 ":
        pdfController.pdfViewerController.jumpToPage(152);
        break;
      case "GHS 132 ":
        pdfController.pdfViewerController.jumpToPage(154);
        break;
      case "GHS 133 ":
        pdfController.pdfViewerController.jumpToPage(155);
        break;
      case "GHS 134 ":
        pdfController.pdfViewerController.jumpToPage(156);
        break;
      case "GHS 135 ":
        pdfController.pdfViewerController.jumpToPage(157);
        break;
      case "GHS 136 ":
        pdfController.pdfViewerController.jumpToPage(158);
        break;
      case "GHS 137 ":
        pdfController.pdfViewerController.jumpToPage(159);
        break;
      case "GHS 138 ":
        pdfController.pdfViewerController.jumpToPage(160);
        break;
      case "GHS 139 ":
        pdfController.pdfViewerController.jumpToPage(161);
        break;
      case "GHS 140 ":
        pdfController.pdfViewerController.jumpToPage(162);
        break;
      case "GHS 141 ":
        pdfController.pdfViewerController.jumpToPage(163);
        break;
      case 'GHS 142 ':
        pdfController.pdfViewerController.jumpToPage(164);
        break;
      case "GHS 143 ":
        pdfController.pdfViewerController.jumpToPage(166);
        break;
      case "GHS 144 ":
        pdfController.pdfViewerController.jumpToPage(167);
        break;
      case "GHS 145 ":
        pdfController.pdfViewerController.jumpToPage(168);
        break;
      case "GHS 146 ":
        pdfController.pdfViewerController.jumpToPage(170);
        break;
      case "GHS 147 ":
        pdfController.pdfViewerController.jumpToPage(171);
        break;
      case "GHS 148 ":
        pdfController.pdfViewerController.jumpToPage(172);
        break;
      case "GHS 149 ":
        pdfController.pdfViewerController.jumpToPage(173);
        break;
      case "GHS 150 ":
        pdfController.pdfViewerController.jumpToPage(174);
        break;
      case "GHS 151 ":
        pdfController.pdfViewerController.jumpToPage(175);
        break;
      case "GHS 152 ":
        pdfController.pdfViewerController.jumpToPage(176);
        break;
      case "GHS 153 ":
        pdfController.pdfViewerController.jumpToPage(177);
        break;
      case "GHS 154 ":
        pdfController.pdfViewerController.jumpToPage(178);
        break;
      case "GHS 155 ":
        pdfController.pdfViewerController.jumpToPage(179);
        break;
      case "GHS 156 ":
        pdfController.pdfViewerController.jumpToPage(180);
        break;
      case "GHS 157 ":
        pdfController.pdfViewerController.jumpToPage(181);
        break;
      case "GHS 158 ":
        pdfController.pdfViewerController.jumpToPage(182);
        break;
      case "GHS 159 ":
        pdfController.pdfViewerController.jumpToPage(184);
        break;
      case "GHS 160 ":
        pdfController.pdfViewerController.jumpToPage(185);
        break;
      case "GHS 161 ":
        pdfController.pdfViewerController.jumpToPage(186);
        break;
      case "GHS 162 ":
        pdfController.pdfViewerController.jumpToPage(187);
        break;
      case "GHS 163 ":
        pdfController.pdfViewerController.jumpToPage(188);
        break;
      case "GHS 164 ":
        pdfController.pdfViewerController.jumpToPage(190);
        break;
      case "GHS 165 ":
        pdfController.pdfViewerController.jumpToPage(193);
        break;
      case "GHS 166 ":
        pdfController.pdfViewerController.jumpToPage(194);
        break;
      case "GHS 167 ":
        pdfController.pdfViewerController.jumpToPage(195);
        break;
      case "GHS 168 ":
        pdfController.pdfViewerController.jumpToPage(196);
        break;
      case "GHS 169 ":
        pdfController.pdfViewerController.jumpToPage(197);
        break;
      case "GHS 170 ":
        pdfController.pdfViewerController.jumpToPage(198);
        break;
      case "GHS 171 ":
        pdfController.pdfViewerController.jumpToPage(199);
        break;
      case "GHS 172 ":
        pdfController.pdfViewerController.jumpToPage(200);
        break;
      case "GHS 173 ":
        pdfController.pdfViewerController.jumpToPage(201);
        break;
      case "GHS 174 ":
        pdfController.pdfViewerController.jumpToPage(202);
        break;
      case "GHS 175 ":
        pdfController.pdfViewerController.jumpToPage(203);
        break;
      case "GHS 176 ":
        pdfController.pdfViewerController.jumpToPage(204);
        break;
      case "GHS 177 ":
        pdfController.pdfViewerController.jumpToPage(205);
        break;
      case "GHS 178 ":
        pdfController.pdfViewerController.jumpToPage(206);
        break;
      case "GHS 179 ":
        pdfController.pdfViewerController.jumpToPage(207);
        break;
      case "GHS 180 ":
        pdfController.pdfViewerController.jumpToPage(208);
        break;
      case "GHS 181 ":
        pdfController.pdfViewerController.jumpToPage(209);
        break;
      case "GHS 182 ":
        pdfController.pdfViewerController.jumpToPage(210);
        break;
      case "GHS 183 ":
        pdfController.pdfViewerController.jumpToPage(211);
        break;
      case "GHS 184 ":
        pdfController.pdfViewerController.jumpToPage(212);
        break;
      case "GHS 185 ":
        pdfController.pdfViewerController.jumpToPage(213);
        break;
      case "GHS 186 ":
        pdfController.pdfViewerController.jumpToPage(216);
        break;
      case "GHS 187 ":
        pdfController.pdfViewerController.jumpToPage(218);
        break;
      case "GHS 188 ":
        pdfController.pdfViewerController.jumpToPage(219);
        break;
      case "GHS 189 ":
        pdfController.pdfViewerController.jumpToPage(220);
        break;
      case 'GHS 190 ':
        pdfController.pdfViewerController.jumpToPage(221);
        break;
      case "GHS 191 ":
        pdfController.pdfViewerController.jumpToPage(222);
        break;
      case "GHS 192 ":
        pdfController.pdfViewerController.jumpToPage(223);
        break;
      case "GHS 193 ":
        pdfController.pdfViewerController.jumpToPage(224);
        break;
      case "GHS 194 ":
        pdfController.pdfViewerController.jumpToPage(225);
        break;
      case "GHS 195 ":
        pdfController.pdfViewerController.jumpToPage(226);
        break;
      case "GHS 196 ":
        pdfController.pdfViewerController.jumpToPage(228);
        break;
      case "GHS 197 ":
        pdfController.pdfViewerController.jumpToPage(229);
        break;
      case "GHS 198 ":
        pdfController.pdfViewerController.jumpToPage(230);
        break;
      case "GHS 199 ":
        pdfController.pdfViewerController.jumpToPage(231);
        break;
      case "GHS 200 ":
        pdfController.pdfViewerController.jumpToPage(232);
        break;
      case "GHS 201 ":
        pdfController.pdfViewerController.jumpToPage(233);
        break;
      case "GHS 202 ":
        pdfController.pdfViewerController.jumpToPage(234);
        break;
      case "GHS 203 ":
        pdfController.pdfViewerController.jumpToPage(235);
        break;
      case "GHS 204 ":
        pdfController.pdfViewerController.jumpToPage(236);
        break;
      case "GHS 205 ":
        pdfController.pdfViewerController.jumpToPage(237);
        break;
      case "GHS 206 ":
        pdfController.pdfViewerController.jumpToPage(238);
        break;
      case "GHS 207 ":
        pdfController.pdfViewerController.jumpToPage(239);
        break;
      case "GHS 208 ":
        pdfController.pdfViewerController.jumpToPage(240);
        break;
      case "GHS 209 ":
        pdfController.pdfViewerController.jumpToPage(241);
        break;
      case "GHS 210 ":
        pdfController.pdfViewerController.jumpToPage(242);
        break;
      case "GHS 211 ":
        pdfController.pdfViewerController.jumpToPage(243);
        break;
      case "GHS 212 ":
        pdfController.pdfViewerController.jumpToPage(244);
        break;
      case "GHS 213 ":
        pdfController.pdfViewerController.jumpToPage(246);
        break;
      case "GHS 214 ":
        pdfController.pdfViewerController.jumpToPage(248);
        break;
      case "GHS 215 ":
        pdfController.pdfViewerController.jumpToPage(251);
        break;
      case "GHS 216 ":
        pdfController.pdfViewerController.jumpToPage(253);
        break;
      case "GHS 217 ":
        pdfController.pdfViewerController.jumpToPage(254);
        break;
      case "GHS 218 ":
        pdfController.pdfViewerController.jumpToPage(255);
        break;
      case "GHS 219 ":
        pdfController.pdfViewerController.jumpToPage(256);
        break;
      case "GHS 220 ":
        pdfController.pdfViewerController.jumpToPage(257);
        break;
      case "GHS 221 ":
        pdfController.pdfViewerController.jumpToPage(258);
        break;
      case "GHS 222 ":
        pdfController.pdfViewerController.jumpToPage(259);
        break;
      case "GHS 223 ":
        pdfController.pdfViewerController.jumpToPage(261);
        break;
      case "GHS 224 ":
        pdfController.pdfViewerController.jumpToPage(262);
        break;
      case "GHS 225 ":
        pdfController.pdfViewerController.jumpToPage(263);
        break;
      case "GHS 226 ":
        pdfController.pdfViewerController.jumpToPage(264);
        break;
      case "GHS 227 ":
        pdfController.pdfViewerController.jumpToPage(265);
        break;
      case "GHS 228 ":
        pdfController.pdfViewerController.jumpToPage(266);
        break;
      case "GHS 229 ":
        pdfController.pdfViewerController.jumpToPage(267);
        break;
      case "GHS 230 ":
        pdfController.pdfViewerController.jumpToPage(268);
        break;
      case "GHS 231 ":
        pdfController.pdfViewerController.jumpToPage(269);
        break;
      case "GHS 232 ":
        pdfController.pdfViewerController.jumpToPage(270);
        break;
      case "GHS 233 ":
        pdfController.pdfViewerController.jumpToPage(271);
        break;
      case 'GHS 234 ':
        pdfController.pdfViewerController.jumpToPage(272);
        break;
      case "GHS 235 ":
        pdfController.pdfViewerController.jumpToPage(275);
        break;
      case "GHS 236 ":
        pdfController.pdfViewerController.jumpToPage(276);
        break;
      case "GHS 237 ":
        pdfController.pdfViewerController.jumpToPage(277);
        break;
      case "GHS 238 ":
        pdfController.pdfViewerController.jumpToPage(279);
        break;
      case "GHS 239 ":
        pdfController.pdfViewerController.jumpToPage(280);
        break;
      case "GHS 240 ":
        pdfController.pdfViewerController.jumpToPage(282);
        break;
      case 'GHS 241 ':
        pdfController.pdfViewerController.jumpToPage(284);
        break;
      case "GHS 242 ":
        pdfController.pdfViewerController.jumpToPage(287);
        break;
      case "GHS 243 ":
        pdfController.pdfViewerController.jumpToPage(290);
        break;
      case "GHS 244 ":
        pdfController.pdfViewerController.jumpToPage(291);
        break;
      case "GHS 245 ":
        pdfController.pdfViewerController.jumpToPage(292);
        break;
      case "GHS 246 ":
        pdfController.pdfViewerController.jumpToPage(293);
        break;
      case "GHS 247 ":
        pdfController.pdfViewerController.jumpToPage(294);
        break;
      case "GHS 248 ":
        pdfController.pdfViewerController.jumpToPage(295);
        break;
      case "GHS 249 ":
        pdfController.pdfViewerController.jumpToPage(297);
        break;
      case "GHS 250 ":
        pdfController.pdfViewerController.jumpToPage(298);
        break;
      case "GHS 251 ":
        pdfController.pdfViewerController.jumpToPage(302);
        break;
      case "GHS 252 ":
        pdfController.pdfViewerController.jumpToPage(304);
        break;
      case "GHS 253 ":
        pdfController.pdfViewerController.jumpToPage(305);
        break;
      case "GHS 254 ":
        pdfController.pdfViewerController.jumpToPage(306);
        break;
      case "GHS 255 ":
        pdfController.pdfViewerController.jumpToPage(307);
        break;
      case "GHS 256 ":
        pdfController.pdfViewerController.jumpToPage(309);
        break;
      case "GHS 257 ":
        pdfController.pdfViewerController.jumpToPage(310);
        break;
      case "GHS 258 ":
        pdfController.pdfViewerController.jumpToPage(311);
        break;
      case "GHS 259 ":
        pdfController.pdfViewerController.jumpToPage(312);
        break;
      case "GHS 260 ":
        pdfController.pdfViewerController.jumpToPage(313);
        break;
      default:
        pdfController.pdfViewerController.jumpToPage(1);
        break;
    }
  }
}
