local IsGoPostal, OnDuty, Help = true, false, false
local GoPostalTruck = nil
local GoPostalBlip = nil
local GoPostalJob = nil
local Package = nil
local Completed = false

GoPostal = {
	Data = {
		Service = vector3(78.803565979004,111.93710327148,81.168167114258),
		Job = {
			vector3(-11.7389554977417,-303.995056152344,45.5747222900391),
			vector3(146.843276977539,-300.878265380859,45.3772392272949),
			vector3(90.9032745361328,-287.846313476563,46.2548522949219),
			vector3(-25.0742530822754,-232.339614868164,45.9333648681641),
			vector3(-120.107566833496,-364.745635986328,36.387809753418),
			vector3(-25.1990394592285,-195.758193969727,52.1177139282227),
			vector3(-5.50260925292969,-146.08544921875,56.2241859436035),
			vector3(27.7411308288574,-210.56852722168,52.6132545471191),
			vector3(157.997344970703,-260.784973144531,51.1468048095703),
			vector3(114.574058532715,-245.457168579102,51.1555404663086),
			vector3(315.732696533203,-205.817001342773,53.8409042358398),
			vector3(335.27978515625,-213.279769897461,53.8431167602539),
			vector3(546.979309082031,-207.427703857422,53.7732124328613),
			vector3(303.611633300781,-174.296340942383,57.4277954101563),
			vector3(388.248901367188,-82.1120986938477,67.4467544555664),
			vector3(353.871612548828,-126.939880371094,65.9824523925781),
			vector3(267.145294189453,-150.983749389648,63.5137596130371),
			vector3(245.70703125,-145.144439697266,63.2356109619141),
			vector3(212.403762817383,-24.7241287231445,69.4420166015625),
			vector3(176.177703857422,-67.8491516113281,68.2495803833008),
			vector3(165.744750976563,-113.256736755371,62.0614356994629),
			vector3(196.085632324219,-157.104339599609,56.4725303649902),
			vector3(171.977188110352,-34.9312553405762,67.7583847045898),
			vector3(114.977584838867,-99.8651580810547,60.4771919250488),
			vector3(86.7692108154297,-100.260398864746,59.1181831359863),
			vector3(26.0904140472412,-73.1540985107422,61.3461799621582),
			vector3(-11.983060836792,-78.6496200561523,56.8573036193848),
			vector3(11.9316091537476,-3.83730173110962,69.9814147949219),
			vector3(0.237976536154747,27.7774333953857,70.7471694946289),
			vector3(-45.3299217224121,-20.6062450408936,68.2370071411133),
			vector3(-98.6652984619141,-63.4526863098145,56.1215362548828),
			vector3(-108.958450317383,36.9439506530762,71.1790466308594),
			vector3(-185.084457397461,97.5139465332031,69.8506698608398),
			vector3(-166.521682739258,114.104721069336,70.0628509521484),
			vector3(-191.907958984375,134.994033813477,69.5727081298828),
			vector3(-264.137969970703,198.03092956543,85.0904312133789),
			vector3(-177.637008666992,213.771255493164,88.5552062988281),
			vector3(-182.930419921875,316.721832275391,97.5557632446289),
			vector3(-127.102439880371,177.254760742188,85.503044128418),
			vector3(-74.2093200683594,145.735504150391,81.1078872680664),
			vector3(88.2836380004883,184.7744140625,104.354156494141),
			vector3(78.4332656860352,168.985961914063,104.335487365723),
			vector3(154.720397949219,170.130432128906,104.809013366699),
			vector3(326.063537597656,96.4807891845703,99.490119934082),
			vector3(382.353393554688,63.7339401245117,97.7345428466797),
			vector3(338.004821777344,41.2871208190918,90.1132507324219),
			vector3(274.633117675781,4.60633182525635,78.9510192871094),
			vector3(281.837341308594,-45.6216087341309,70.6862335205078),
			vector3(381.503295898438,115.495231628418,102.33438873291),
			vector3(649.293395996094,-10.4862375259399,82.5059432983398),
			vector3(683.592163085938,72.1659393310547,83.2104721069336),
			vector3(549.217712402344,154.938140869141,98.9910430908203),
			vector3(520.515747070313,168.794052124023,99.1263580322266),
			vector3(437.372039794922,222.17073059082,102.921821594238),
			vector3(368.649993896484,339.2578125,103.005744934082),
			vector3(220.53923034668,272.936248779297,105.255218505859),
			--midtown 20  area 2 49
			vector3(385.352111816406,-904.107788085938,29.0522365570068),
			vector3(365.969848632813,-824.960754394531,28.8995971679688),
			vector3(332.714202880859,-949.290710449219,29.140661239624),
			vector3(299.720153808594,-902.88330078125,28.8994235992432),
			vector3(323.334716796875,-683.579345703125,28.9122982025146),
			vector3(87.2545700073242,-819.47998046875,30.7565860748291),
			vector3(37.7948722839355,-1002.40435791016,29.0543842315674),
			vector3(101.742057800293,-1120.96765136719,28.9251003265381),
			vector3(307.379272460938,-1085.22058105469,28.9452438354492),
			vector3(-47.2743873596191,-762.72216796875,32.4531669616699),
			vector3(-274.226348876953,-564.568237304688,29.7809448242188),
			vector3(-307.191253662109,-712.606811523438,28.064624786377),
			vector3(-267.318206787109,-831.868835449219,31.3706645965576),
			vector3(-292.107818603516,-988.930786132813,23.7439479827881),
			vector3(-47.6948432922363,-785.235900878906,43.8152542114258),
			vector3(66.4006576538086,-734.228820800781,43.8344421386719),
			vector3(105.720031738281,-624.741760253906,43.8211212158203),
			vector3(495.365661621094,-778.442321777344,24.4849834442139),
			vector3(851.067077636719,-950.545227050781,25.8883152008057),
			vector3(849.662719726563,-1053.74816894531,27.6498584747314),
			-- east village 29
			vector3(902.838317871094,-142.258270263672,76.3618240356445),
			vector3(970.883605957031,-117.029663085938,74.1100769042969),
			vector3(945.690185546875,-255.781066894531,67.2504653930664),
			vector3(868.21728515625,-208.389022827148,70.3895111083984),
			vector3(768.811462402344,-156.665115356445,74.2722396850586),
			vector3(1203.64440917969,-454.903961181641,66.4116821289063),
			vector3(1151.87744140625,-461.1796875,66.5673065185547),
			vector3(1194.6396484375,-629.046875,62.6697311401367),
			vector3(1214.32604980469,-705.528747558594,59.7364654541016),
			vector3(1223.96301269531,-729.414794921875,60.0188598632813),
			vector3(1280.37512207031,-672.556762695313,65.9052810668945),
			vector3(1261.6884765625,-620.793701171875,68.8272933959961),
			vector3(1307.43054199219,-537.859313964844,70.9507827758789),
			vector3(1351.63500976563,-595.812377929688,74.0946197509766),
			vector3(1273.45751953125,-458.269714355469,69.0017929077148),
			vector3(1061.04089355469,-390.966857910156,67.0905303955078),
			vector3(993.396606445313,-436.334686279297,63.6045150756836),
			vector3(960.27783203125,-498.431579589844,60.9737091064453),
			vector3(946.991333007813,-510.247619628906,59.9701652526855),
			vector3(882.477783203125,-511.141693115234,57.0853042602539),
			vector3(878.437438964844,-556.980346679688,57.0162239074707),
			vector3(854.214904785156,-565.665466308594,57.4186058044434),
			vector3(917.097778320313,-621.714904785156,57.5890579223633),
			vector3(983.444641113281,-708.400329589844,57.3073081970215),
			vector3(1090.53833007813,-791.255737304688,58.0193672180176),
			vector3(1009.076171875,-590.626403808594,58.690788269043),
			vector3(1053.470703125,-489.113891601563,63.5801620483398),
			vector3(1071.23400878906,-447.562896728516,65.3984756469727),
			vector3(972.033752441406,-554.108215332031,58.8319549560547),
			--northside of south ls 18   area 3  43
			vector3(-206.080169677734,-1318.03527832031,30.5125579833984),
			vector3(-151.778945922852,-1349.14709472656,29.463903427124),
			vector3(-214.70263671875,-1359.99255371094,30.8813018798828),
			vector3(-106.83226776123,-1457.93762207031,33.0243949890137),
			vector3(-53.0842018127441,-1505.03540039063,30.9284286499023),
			vector3(-191.262603759766,-1608.03076171875,33.6884918212891),
			vector3(-107.097640991211,-1598.89270019531,31.2714824676514),
			vector3(-13.6944303512573,-1453.07653808594,29.963399887085),
			vector3(11.373348236084,-1455.75622558594,29.9189186096191),
			vector3(148.119903564453,-1517.82336425781,28.5764427185059),
			vector3(224.491546630859,-1520.30322265625,28.5792541503906),
			vector3(403.846832275391,-1502.89172363281,28.7238178253174),
			vector3(467.354461669922,-1579.06457519531,28.5578155517578),
			vector3(393.531311035156,-1436.67004394531,28.8963184356689),
			vector3(333.338714599609,-1261.2724609375,31.1195201873779),
			vector3(497.880340576172,-1335.07336425781,28.7632160186768),
			vector3(498.269134521484,-1400.85144042969,28.8060188293457),
			vector3(479.41357421875,-1517.90832519531,28.7261981964111),
			-- south south 25
			vector3(-63.1068229675293,-1789.77734375,27.3188400268555),
			vector3(18.1376876831055,-1879.91833496094,22.6591415405273),
			vector3(93.9403533935547,-1960.46398925781,20.3599662780762),
			vector3(115.805252075195,-1931.6064453125,20.3829689025879),
			vector3(157.643142700195,-1895.97875976563,22.6697120666504),
			vector3(199.111679077148,-1897.39379882813,23.8366222381592),
			vector3(176.815093994141,-1837.81481933594,27.7052974700928),
			vector3(243.076507568359,-1854.3154296875,26.2651119232178),
			vector3(227.982315063477,-1714.19995117188,28.7936859130859),
			vector3(335.734924316406,-1755.53869628906,28.7484760284424),
			vector3(298.528900146484,-1802.91943359375,27.0873889923096),
			vector3(128.719940185547,-1715.08996582031,28.7247829437256),
			vector3(431.897003173828,-1852.5224609375,27.159065246582),
			vector3(249.754867553711,-1955.12683105469,22.7369632720947),
			vector3(158.364028930664,-1969.00952148438,18.1727161407471),
			vector3(320.95068359375,-1983.98608398438,22.5428123474121),
			vector3(361.352874755859,-2062.46362304688,21.1120758056641),
			vector3(449.619964599609,-1961.78186035156,22.5744915008545),
			vector3(495.053131103516,-1969.17468261719,24.5272254943848),
			vector3(478.685485839844,-1888.86437988281,25.7081508636475),
			vector3(527.154907226563,-1830.65100097656,27.7945537567139),
			vector3(499.024108886719,-1720.14123535156,28.9230213165283),
			vector3(480.19287109375,-1776.34997558594,28.17746925354),
			vector3(516.267639160156,-1987.08154296875,24.4292316436768),
			vector3(83.5366134643555,-2560.27319335938,5.61167287826538),
			-- vinewood 53    area 4 53
			vector3(-345.338989257813,112.053901672363,66.2454071044922),
			vector3(-397.341064453125,136.209030151367,65.0139541625977),
			vector3(-357.603210449219,29.5045299530029,47.3471260070801),
			vector3(-509.991149902344,117.059188842773,62.9262809753418),
			vector3(-426.307189941406,-24.4472904205322,45.793270111084),
			vector3(-646.845886230469,32.2951354980469,38.9617385864258),
			vector3(-695.284729003906,40.4299240112305,42.7703437805176),
			vector3(-642.420593261719,105.648887634277,56.4914627075195),
			vector3(-477.898010253906,224.572387695313,82.6851654052734),
			vector3(-421.778564453125,293.303253173828,82.7933502197266),
			vector3(-349.973480224609,217.803176879883,86.0165405273438),
			vector3(-311.754608154297,227.975570678711,87.411506652832),
			vector3(-559.525512695313,300.540161132813,82.6860198974609),
			vector3(-773.259338378906,297.901824951172,85.1530609130859),
			vector3(-739.878601074219,241.291397094727,75.8833618164063),
			vector3(-639.6669921875,168.995559692383,60.6939163208008),
			vector3(-825.281616210938,177.80989074707,70.6563720703125),
			vector3(-839.051818847656,113.525749206543,54.7545013427734),
			vector3(-1046.44592285156,219.620895385742,63.1960334777832),
			vector3(-987.833129882813,144.561172485352,60.0635757446289),
			vector3(-956.985534667969,115.316078186035,56.3222732543945),
			vector3(-920.415832519531,107.748840332031,54.7536239624023),
			vector3(-953.544494628906,187.443695068359,66.0121154785156),
			vector3(-925.919921875,12.5866889953613,47.1334228515625),
			vector3(-833.679748535156,-35.751953125,38.1416053771973),
			vector3(-891.493591308594,-2.13482284545898,42.8728981018066),
			vector3(-707.653625488281,-185.055709838867,36.286506652832),
			vector3(-736.120910644531,-135.057693481445,36.6698455810547),
			vector3(-693.238952636719,-267.792358398438,35.6989402770996),
			vector3(-725.841552734375,-424.554534912109,34.6384391784668),
			vector3(-483.000213623047,-452.832427978516,33.6180801391602),
			vector3(-930.965209960938,-461.445678710938,36.5572166442871),
			vector3(-1022.22869873047,-492.600341796875,36.393669128418),
			vector3(-1083.98754882813,-375.209869384766,36.2828674316406),
			vector3(-1041.00256347656,-387.940582275391,37.1276512145996),
			vector3(-489.890258789063,-57.8195838928223,39.4080772399902),
			vector3(-459.117950439453,-137.876342773438,37.7294998168945),
			vector3(-1158.54418945313,-226.049575805664,37.3476867675781),
			vector3(-1096.38989257813,-317.182922363281,37.0811614990234),
			vector3(-1167.88439941406,-335.995910644531,37.0393447875977),
			vector3(-1159.66394042969,-399.218536376953,35.2171363830566),
			vector3(-1285.06042480469,-428.360656738281,34.1927833557129),
			vector3(-1345.60363769531,-293.904479980469,39.556827545166),
			vector3(-1355.54406738281,-216.085372924805,43.1127738952637),
			vector3(-1460.88781738281,-30.0602798461914,54.0585327148438),
			vector3(-1549.58898925781,-82.2022399902344,53.5496940612793),
			vector3(-1558.42346191406,-36.5513725280762,56.2246398925781),
			vector3(-1465.9638671875,40.2094383239746,53.3123359680176),
			vector3(-1567.9599609375,31.9729785919189,58.474910736084),
			vector3(-1544.01892089844,125.423881530762,56.1950454711914),
			vector3(-1243.25708007813,385.332092285156,74.8804092407227),
			vector3(-1396.58581542969,-294.828826904297,42.9301376342773),
			vector3(-1275.1884765625,-558.754516601563,29.4832954406738),
			--beach 54  area 5 54
			vector3(-1198.26147460938,-732.103393554688,20.338794708252),
			vector3(-1221.9326171875,-705.452880859375,21.9235076904297),
			vector3(-754.695373535156,-912.980224609375,18.7608795166016),
			vector3(-822.445251464844,-990.14111328125,13.0752420425415),
			vector3(-770.191345214844,-1302.67626953125,4.40547657012939),
			vector3(-855.579284667969,-1270.13977050781,4.41537761688232),
			vector3(-683.339782714844,-885.247619628906,23.9142284393311),
			vector3(-948.41650390625,-1082.64819335938,1.5385490655899),
			vector3(-1072.21813964844,-1158.8486328125,1.52664005756378),
			vector3(-988.570922851563,-985.8173828125,1.36811316013336),
			vector3(-1120.69995117188,-1063.10327148438,1.39628577232361),
			vector3(-1093.37817382813,-919.305236816406,2.29149770736694),
			vector3(-1276.34350585938,-1152.94787597656,5.5441370010376),
			vector3(-1253.9658203125,-1197.61608886719,6.34510087966919),
			vector3(-1339.50646972656,-1210.49499511719,3.96823167800903),
			vector3(-1279.34484863281,-1251.06213378906,3.29812169075012),
			vector3(-1153.234375,-1520.67614746094,3.64794492721558),
			vector3(-1185.71105957031,-1562.92419433594,3.65394926071167),
			vector3(-1132.697265625,-1582.4326171875,3.55767679214478),
			vector3(-1083.09106445313,-1535.39392089844,3.84467601776123),
			vector3(-1067.95288085938,-1538.41821289063,4.11108350753784),
			vector3(-1021.89056396484,-1519.9560546875,4.89227819442749),
			vector3(-1054.50463867188,-1571.13122558594,4.0337233543396),
			vector3(-1105.31286621094,-1681.4150390625,3.62900733947754),
			vector3(-941.772766113281,-1524.78881835938,4.33578824996948),
			vector3(-990.477905273438,-1437.67309570313,4.34794092178345),
			vector3(-1210.47351074219,-1148.54956054688,6.94658946990967),
			vector3(-1379.82702636719,-973.952514648438,8.07372856140137),
			vector3(-1468.36853027344,-925.037353515625,9.58611583709717),
			vector3(-1297.83459472656,-787.924682617188,17.0836410522461),
			vector3(-1268.61389160156,-818.876708984375,16.6243114471436),
			vector3(-1407.99182128906,-735.800415039063,23.0887184143066),
			vector3(-1377.88793945313,-652.622497558594,28.2150058746338),
			vector3(-1642.96533203125,-993.046203613281,12.5428237915039),
			vector3(-1691.28979492188,-1068.29382324219,12.5562171936035),
			vector3(-1818.53234863281,-1210.51550292969,12.5427179336548),
			vector3(-1540.11462402344,-582.15087890625,33.2285423278809),
			vector3(-1526.26147460938,-281.718872070313,48.6887893676758),
			vector3(-1570.37072753906,-288.545227050781,47.6945915222168),
			vector3(-1567.60192871094,-236.082565307617,48.8926277160645),
			vector3(-1610.322265625,-382.220367431641,42.5706596374512),
			vector3(-1608.48828125,-413.600250244141,40.8177070617676),
			vector3(-1668.81750488281,-452.784637451172,38.6393394470215),
			vector3(-1714.82043457031,-502.125366210938,37.5113868713379),
			vector3(-1711.01318359375,-416.278228759766,44.0267486572266),
			vector3(-1656.42749023438,-357.58056640625,48.8499755859375),
			vector3(-1775.29406738281,-364.032867431641,44.7817306518555),
			vector3(-1863.40234375,-352.799896240234,48.6571655273438),
			vector3(-2183.59985351563,-408.342437744141,12.469780921936),
			vector3(-1929.66540527344,-530.206298828125,11.2496871948242),
			vector3(-1897.53198242188,-556.751281738281,11.154369354248),
			vector3(-1862.7236328125,-585.575744628906,10.9879150390625),
			vector3(-1802.40234375,-637.487426757813,10.4068717956543),
			vector3(-1758.70397949219,-682.206176757813,9.49457454681396),
			--Vinewood hills 30   area 6 30
			vector3(-1082.61889648438,456.733764648438,76.3031158447266),
			vector3(-1039.49841308594,496.919799804688,82.054817199707),
			vector3(-858.334350585938,515.422668457031,89.1987915039063),
			vector3(-918.225280761719,579.730895996094,99.0909881591797),
			vector3(-1022.71704101563,593.901428222656,102.37043762207),
			vector3(-1383.03857421875,450.747894287109,104.104797363281),
			vector3(-1449.8525390625,531.747314453125,118.468521118164),
			vector3(-1539.69030761719,427.578247070313,108.835731506348),
			vector3(-1353.65515136719,567.254638671875,129.946884155273),
			vector3(-1284.90588378906,644.803039550781,138.594711303711),
			vector3(-1117.29162597656,774.75341796875,161.646728515625),
			vector3(-1048.46252441406,767.957885742188,166.836151123047),
			vector3(-910.521057128906,697.753173828125,150.719833374023),
			vector3(-695.307739257813,666.498901367188,153.162490844727),
			vector3(-696.717468261719,706.821899414063,156.824630737305),
			vector3(-580.781188964844,739.828308105469,183.007995605469),
			vector3(-746.078308105469,816.215942382813,212.794815063477),
			vector3(-968.549499511719,764.239562988281,174.750885009766),
			vector3(-472.506805419922,652.219665527344,143.608108520508),
			vector3(-347.918975830078,636.378967285156,171.423629760742),
			vector3(-225.667541503906,594.723815917969,189.643768310547),
			vector3(-483.942352294922,553.29541015625,119.060554504395),
			vector3(-411.493103027344,555.736389160156,123.182189941406),
			vector3(-362.981781005859,509.676635742188,118.377410888672),
			vector3(-231.069961547852,497.976867675781,127.233642578125),
			vector3(-3.63188219070435,472.345947265625,145.123123168945),
			vector3(115.164993286133,490.907501220703,146.428985595703),
			vector3(226.296096801758,679.674255371094,188.863845825195),
			vector3(118.493515014648,569.005310058594,182.409606933594),
			vector3(9.64954662322998,545.573791503906,175.11296081543),
			-- docks & ind 44           area 7 44
			vector3(-63.1068229675293,-1789.77734375,27.3188400268555),
			vector3(18.1376876831055,-1879.91833496094,22.6591415405273),
			vector3(93.9403533935547,-1960.46398925781,20.3599662780762),
			vector3(115.805252075195,-1931.6064453125,20.3829689025879),
			vector3(157.643142700195,-1895.97875976563,22.6697120666504),
			vector3(199.111679077148,-1897.39379882813,23.8366222381592),
			vector3(176.815093994141,-1837.81481933594,27.7052974700928),
			vector3(243.076507568359,-1854.3154296875,26.2651119232178),
			vector3(227.982315063477,-1714.19995117188,28.7936859130859),
			vector3(335.734924316406,-1755.53869628906,28.7484760284424),
			vector3(298.528900146484,-1802.91943359375,27.0873889923096),
			vector3(128.719940185547,-1715.08996582031,28.7247829437256),
			vector3(431.897003173828,-1852.5224609375,27.159065246582),
			vector3(249.754867553711,-1955.12683105469,22.7369632720947),
			vector3(158.364028930664,-1969.00952148438,18.1727161407471),
			vector3(320.95068359375,-1983.98608398438,22.5428123474121),
			vector3(361.352874755859,-2062.46362304688,21.1120758056641),
			vector3(449.619964599609,-1961.78186035156,22.5744915008545),
			vector3(495.053131103516,-1969.17468261719,24.5272254943848),
			vector3(478.685485839844,-1888.86437988281,25.7081508636475),
			vector3(527.154907226563,-1830.65100097656,27.7945537567139),
			vector3(499.024108886719,-1720.14123535156,28.9230213165283),
			vector3(480.19287109375,-1776.34997558594,28.17746925354),
			vector3(516.267639160156,-1987.08154296875,24.4292316436768),
			vector3(83.5366134643555,-2560.27319335938,5.61167287826538),
			vector3(-41.2876281738281,-2508.9697265625,5.62094259262085),
			vector3(-256.736572265625,-2653.59643554688,5.61118936538696),
			vector3(-406.068664550781,-2799.0322265625,5.60997343063354),
			vector3(-68.2952651977539,-2651.14672851563,5.60910415649414),
			vector3(144.771682739258,-3331.01391601563,5.63123273849487),
			vector3(1235.23852539063,-3205.35205078125,5.2932333946228),
			vector3(782.038696289063,-2982.02368164063,5.4059853553772),
			vector3(959.550048828125,-2372.13989257813,30.1417827606201),
			vector3(1050.63415527344,-2366.83447265625,30.1897411346436),
			vector3(1088.68811035156,-2289.53930664063,29.7793636322021),
			vector3(1041.94897460938,-2178.07690429688,31.0512428283691),
			vector3(934.963134765625,-1964.57470703125,30.0044727325439),
			vector3(924.246398925781,-2020.62280273438,29.9459743499756),
			vector3(967.231506347656,-1816.20007324219,30.6835784912109),
			vector3(946.368469238281,-1697.91320800781,29.6896724700928),
			vector3(943.090209960938,-1455.56103515625,30.8775959014893),
			vector3(1158.44934082031,-1316.01293945313,34.3467903137207),
			vector3(1122.14929199219,-1516.86755371094,34.2972297668457),
			vector3(1144.16955566406,-1406.31457519531,34.1875534057617),
		},
		Vehicles = {
			Model = "Boxville2",
			Location = vector3(72.220001220703,114.37594604492,79.123878479004),
			Spawn = vector3(67.081314086914,119.43117523193,79.103141784668),
		},
		Animations = {
			Dictionary = "anim@heists@box_carry@",
			Idle = "idle",
			Place = "PROP_HUMAN_BUM_BIN",
		},
	},
}

-- Functions --

function StartJob()
	local Randomizer = math.random(1, #GoPostal.Data.Job)
	GoPostalJob = Randomizer
end

function PlayAnimation(number)
	Citizen.CreateThread(function()
		if number == 1 then
			local Dictionary = GoPostal.Data.Animations.Dictionary
			RequestAnimDict(Dictionary)
			while not HasAnimDictLoaded(Dictionary) do
				Citizen.Wait(0)
			end
			TaskPlayAnim(PlayerPedId(), Dictionary, GoPostal.Data.Animations.Idle, 8.0, 1.0, -1, 49, 0, 0, 0, 0)
		elseif number == 3 then
			TaskStartScenarioInPlace(PlayerPedId(), GoPostal.Data.Animations.Place, 0, true)
			Citizen.Wait(2000)
			ClearPedTasks(PlayerPedId())
		end
	end)
end

-- Events

RegisterNetEvent("GoPostal.Set")
AddEventHandler("GoPostal.Set", function(_IsGoPostal)
	OnDuty = false
	IsGoPostal = _IsGoPostal
end)

RegisterNetEvent("GoPostal.Rent")
AddEventHandler("GoPostal.Rent", function()
	Citizen.CreateThread(function()
		GoPostalTruck = exports["core"]:SpawnVehicle(GoPostal.Data.Vehicles.Model, GoPostal.Data.Vehicles.Spawn, 156.78520202637, false)

		if GoPostalTruck ~= nil and GoPostalTruck ~= 0 then
			local plate = "GP"..GetVehicleNumberPlateText(GoPostalTruck)
			SetVehicleNumberPlateText(GoPostalTruck, plate)
			SetEntityInvincible(GoPostalTruck, false)
			DecorSetBool(GoPostalTruck, "hotwire", true)
			StartJob()
		end
	end)
end)

-- Threads --

Citizen.CreateThread(function()
	CreateBlip("GoPostal Depot", 411, 18, GoPostal.Data.Service.x, GoPostal.Data.Service.y, GoPostal.Data.Service.z)
	while true do
		Citizen.Wait(0)
		if IsGoPostal then
			local Ped = PlayerPedId()
			local Pos = GetEntityCoords(Ped, false)
			local Distance = #(GoPostal.Data.Service - Pos)
			if Distance < 10 then
				RenderMarker(25, GoPostal.Data.Service.x, GoPostal.Data.Service.y, GoPostal.Data.Service.z, 1.5, 1.5, 2.0, 255, 255, 0, 20)
				if Distance < 1 then
					if OnDuty then
						DisplayHelpText("Press ~INPUT_CONTEXT~ to ~g~clock out~w~!")
					else
						DisplayHelpText("Press ~INPUT_CONTEXT~ to ~r~clock in~w~!")
					end
					if IsControlJustPressed(1, 51) then
						if OnDuty then
							Notify("You are now off duty!", 2600)
						else
							Notify("You are now on duty!", 2600)
						end
						OnDuty = not OnDuty
					end
				end
			end
			if OnDuty then
				local Distance = #(GoPostal.Data.Vehicles.Location - Pos)
				if Distance < 10 then
					RenderMarker(25, GoPostal.Data.Vehicles.Location.x, GoPostal.Data.Vehicles.Location.y, GoPostal.Data.Vehicles.Location.z, 1.5, 1.5, 2.0, 255, 255, 0, 20)
					if Distance < 1 then
						if GoPostalTruck then
							DisplayHelpText("Press ~INPUT_CONTEXT~ to return your vehicle!")
						else
							DisplayHelpText("Press ~INPUT_CONTEXT~ to retrieve your vehicle!")
						end
						if IsControlJustPressed(1, 51) then
							if GoPostalTruck then
								DestroyVehicle(GoPostalTruck)
								while DoesEntityExist(GoPostalTruck) do
									Citizen.Wait(0)
								end
								GoPostalTruck = nil
								GoPostalJob = nil
							else
								if tobool(drivers_license) then
									TriggerServerEvent("GoPostal.Rent")
								else
									Notify("You do not have a valid drivers license!", 2500)
								end
							end
						end
					end
				end
				if GoPostalJob and GoPostalTruck then
					if IsEntityDead(GoPostalTruck) then
						GoPostalTruck = nil
						Notify("The GoPostal truck was destroyed, go get a new one!", 3000)
						if GoPostalBlip then
							RemoveBlip(GoPostalBlip)
							SetBlipRoute(GoPostalBlip, false)
							GoPostalBlip = nil
						end
					end
					if not DoesBlipExist(GoPostalBlip) then
						GoPostalBlip = AddBlipForCoord(GoPostal.Data.Job[GoPostalJob].x, GoPostal.Data.Job[GoPostalJob].y, GoPostal.Data.Job[GoPostalJob].z)
						SetBlipSprite(GoPostalBlip, 1)
						SetBlipColour(GoPostalBlip, 60)
						SetBlipAsShortRange(GoPostalBlip, true)
						SetBlipScale(GoPostalBlip, 0.85)
						BeginTextCommandSetBlipName("STRING")
						AddTextComponentString("Delivery Destination")
						EndTextCommandSetBlipName(GoPostalBlip)
						SetBlipRoute(GoPostalBlip, true)
					end
					if DoesEntityExist(Package) and IsEntityAttachedToEntity(Package, Ped) then
						local DistanceThree = #(GoPostal.Data.Job[GoPostalJob] - Pos)
						if DistanceThree < 20 then
							RenderMarker(25, GoPostal.Data.Job[GoPostalJob].x, GoPostal.Data.Job[GoPostalJob].y, GoPostal.Data.Job[GoPostalJob].z, 1.5, 1.5, 2.0, 255, 255, 0, 20)
							if DistanceThree < 2 then
								DisplayHelpText("Press ~INPUT_CONTEXT~ to place the package!")
								if IsControlJustPressed(1, 51) then
									PlayAnimation(3)
									Citizen.Wait(3800)
									DetachEntity(Package)
									Notify("Please head to your next destination!", 10000)
									TriggerServerEvent("GoPostal.Success", 150)
									RemoveBlip(GoPostalBlip)
									SetBlipRoute(GoPostalBlip, false)
									GoPostalBlip = nil
									StartJob()
								end
							end
						end
						if DistanceThree > 20 and #(GetEntityCoords(Package, false) - GoPostal.Data.Job[GoPostalJob]) < 2 and DoesEntityExist(Package) then
							DestroyObject(Package)
						end
					else
						local VehicleCoords = vector3(GetEntityCoords(GoPostalTruck, false))
						local Distance = vector3(VehicleCoords + (GetEntityForwardVector(GoPostalTruck) * -5.1125))
						if #(Distance - Pos) < 1 then
							DisplayHelpText("Press ~INPUT_CONTEXT~ to grab the package!")
							if IsControlJustPressed(1, 51) then
								local Model = GetHashKey("prop_cardbordbox_02a")
								RequestModel(Model)
								while not HasModelLoaded(Model) do
									Citizen.Wait(0)
								end
								Package = CreateObject(Model,  0.01, 0, 0, true, false, false)
								PlayAnimation(1)
								AttachEntityToEntity(Package, Ped, GetPedBoneIndex(Ped, 60309), 0.025, 0.08, 0.255, -145.0, 290.0, 0.0, true, true, false, true, 1, true)
							end
						end
					end
				else
					if GoPostalBlip then
						RemoveBlip(GoPostalBlip)
						SetBlipRoute(GoPostalBlip, false)
						GoPostalBlip = nil
					end
					if GoPostalTruck then
						SetEntityAsMissionEntity(GoPostalTruck, true, true)
						DeleteVehicle(GoPostalTruck)
						GoPostalTruck = nil
						GoPostalJob = nil
					end
				end
			end
		end
	end
end)
