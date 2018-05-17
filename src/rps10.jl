"""
    rps10()

RPS Serial Chains for 10 positions on a circular hyperboloid

## References

Hai-Jun Su and J. Micheal McCarthy:
"Kinematics Synthesis of RPS Serial Chains",
In Proceedings of the ASME Design Engineering Technical Conferences
(CDROM).  Paper DETC03/DAC-48813.  Chicago, IL, Sept.02-06, 2003.
"""
function rps10()
    @polyvar g1 g2 g3 p1 p2 p3 q0 q1 q2 q3
    equations = [
    -0.1279703687075118*g1^2 - 0.48596123125526264*g1*g2 + 0.30699556370717496*g2^2 + 0.3778977698527674*g1*g3 - 0.23404544076569642*g2*g3 + 0.01563626178508072*g3^2 + 0.327228678790004*g1^2*p1 + 0.8426829275672494*g1*g2*p1 + 0.6075645757034159*g2^2*p1 - 1.1371405598667543*g1*g3*p1 + 0.229293271620915*g2*g3*p1 - 0.21948911177437957*g3^2*p1 - 0.2075154964282774*g1^2*p1^2 - 0.37702968479068544*g1*g2*p1^2 - 0.16688906819159421*g2^2*p1^2 + 0.7986954318323025*g1*g3*p1^2 + 0.866826144775651*g2*g3*p1^2 + 0.37440456461987165*g3^2*p1^2 + 1.5614616440131446*g1^2*p2 - 1.7388380675822595*g1*g2*p2 + 0.06790915713070725*g2^2*p2 - 0.4309121044684771*g1*g3*p2 + 0.9086272006283425*g2*g3*p2 - 0.2764931751394603*g3^2*p2 - 1.8163349832174116*g1^2*p1*p2 - 0.9167144057621401*g1*g2*p1*p2 + 1.0203368504488892*g2^2*p1*p2 - 0.23194646823111892*g1*g3*p1*p2 + 0.539670777307627*g2*g3*p1*p2 + 0.7959981327685224*g3^2*p1*p2 + 0.08717268867521591*g1^2*p2^2 + 0.9504154644263471*g1*g2*p2^2 - 0.48206756571420756*g2^2*p2^2 - 1.065062423127697*g1*g3*p2^2 + 0.1209952909274163*g2*g3*p2^2 + 0.3948948770389917*g3^2*p2^2 + 0.289766299873838*g1^2*p3 - 1.2778927965251532*g1*g2*p3 + 0.9087896778886251*g2^2*p3 - 0.5812612591154215*g1*g3*p3 - 0.7595904624983555*g2*g3*p3 + 0.5084892760496751*g3^2*p3 - 0.3268802641947883*g1^2*p1*p3 + 0.657630238424344*g1*g2*p1*p3 + 1.1093919363972093*g2^2*p1*p3 + 0.4551393419480071*g1*g3*p1*p3 + 1.8553852513069364*g2*g3*p1*p3 - 0.7825116722024211*g3^2*p1*p3 + 0.5810469298461638*g1^2*p2*p3 - 1.1557382363783264*g1*g2*p2*p3 - 0.11367961187637783*g2^2*p2*p3 + 1.7077140933509898*g1*g3*p2*p3 - 0.36547942767108677*g2*g3*p2*p3 - 0.4673673179697859*g3^2*p2*p3 + 0.12034280775306151*g1^2*p3^2 - 0.5733857796356615*g1*g2*p3^2 + 0.6489566339058018*g2^2*p3^2 + 0.2663669912953945*g1*g3*p3^2 - 0.9878214357030672*g2*g3*p3^2 - 0.7692994416588633*g3^2*p3^2 - 0.19466145678474384*q0 - 0.7153041427190404*p1*q0 - 1.3528776260043915*p2*q0 - 1.7070452538121381*p3*q0 - 1.0516635822669562*q1 + 1.2244185478631853*p1*q1 - 0.05844567698552443*p2*q1 - 0.37706149953585283*p3*q1 + 0.580102254517945*q2 + 1.2898860704586343*p1*q2 - 0.6655948497180294*p2*q2 + 0.697758704890495*p3*q2 - 0.042921436747585445*q3 + 0.5172073855756967*p1*q3 + 0.6917094054122289*p2*q3 - 1.4579672250860476*p3*q3,

    0.16011034303688113*g1^2 - 0.9005468824403076*g1*g2 - 0.3519015838689263*g2^2 + 0.5202586158306898*g1*g3 + 0.908682123022068*g2*g3 - 0.4464562170645777*g3^2 - 0.13844524415679324*g1^2*p1 + 1.5568085644333742*g1*g2*p1 + 1.6863862382239232*g2^2*p1 - 1.7409458121154344*g1*g3*p1 - 0.13872356093602894*g2*g3*p1 - 0.5159047084859331*g3^2*p1 - 0.2741643484200128*g1^2*p1^2 - 0.34212012775550327*g1*g2*p1^2 - 0.07542436599114127*g2^2*p1^2 + 0.37458987278720324*g1*g3*p1^2 + 0.4782561996467687*g2*g3*p1^2 + 0.3495887144111541*g3^2*p1^2 + 0.41377445473869573*g1^2*p2 - 1.5789383736211624*g1*g2*p2 + 1.268319517294935*g2^2*p2 + 0.6163793667190677*g1*g3*p2 - 0.43374574206406646*g2*g3*p2 - 0.2061458017243186*g3^2*p2 + 0.14555549639831628*g1^2*p1*p2 - 1.1674745895517964*g1*g2*p1*p2 - 0.9428064489876502*g2^2*p1*p2 + 0.0024916775818734295*g1*g3*p1*p2 + 0.5291621555283466*g2*g3*p1*p2 + 0.7972509525893339*g3^2*p1*p2 + 0.1807885464109201*g1^2*p2^2 + 0.9404541869824675*g1*g2*p2^2 - 0.5780030515551372*g2^2*p2^2 - 1.0257418447585547*g1*g3*p2^2 + 0.09251778173989315*g2*g3*p2^2 + 0.39721450514421713*g3^2*p2^2 + 0.40272988912109214*g1^2*p3 - 0.8272484673958682*g1*g2*p3 + 1.057139636924469*g2^2*p3 - 0.12353226665002319*g1*g3*p3 - 2.5741855761862396*g2*g3*p3 + 1.560474007685759*g3^2*p3 - 0.6150996832616941*g1^2*p1*p3 + 0.09937192239106099*g1*g2*p1*p3 + 0.8226042775491553*g2^2*p1*p3 + 0.4732438203631739*g1*g3*p1*p3 + 1.6946050580334677*g2*g3*p1*p3 - 0.20750459428746135*g3^2*p1*p3 + 0.7556396990592089*g1^2*p2*p3 - 1.412614951501404*g1*g2*p2*p3 - 0.09676545515565128*g2^2*p2*p3 - 0.9781576342585658*g1*g3*p2*p3 + 2.5006617995144724*g2*g3*p2*p3 - 0.6588742439035575*g3^2*p2*p3 + 0.09337580200909272*g1^2*p3^2 - 0.5983340592269643*g1*g2*p3^2 + 0.6534274175462785*g2^2*p3^2 + 0.6511519719713513*g1*g3*p3^2 - 0.5707739813866619*g2*g3*p3^2 - 0.7468032195553712*g3^2*p3^2 + 0.6382474578966228*q0 - 1.032036285581197*p1*q0 - 1.4759481703093122*p2*q0 - 3.0203435337313205*p3*q0 - 0.22812438675350769*q1 - 0.2157590670168509*p1*q1 - 0.1270558344695696*p2*q1 - 0.5148593639524484*p3*q1 + 1.3667793800860086*q2 - 0.06171123442924746*p1*q2 - 0.7314954155886625*p2*q2 + 0.7189348075213543*p3*q2 - 0.902118536026858*q3 + 0.43214823742186254*p1*q3 + 0.6677624868260497*p2*q3 + 0.5162571144422815*p3*q3,

    0.20816475809219404*g1^2 - 0.44624795696445435*g1*g2 + 0.1573457781818856*g2^2 + 0.2432511536576595*g1*g3 - 0.4587424991969163*g2*g3 - 0.048748564896809544*g3^2 - 0.542424299098038*g1^2*p1 + 0.412606879197033*g1*g2*p1 + 0.026228493490255755*g2^2*p1 - 0.7135454436169615*g1*g3*p1 + 0.38566725023570736*g2*g3*p1 + 0.06641935708182738*g3^2*p1 + 0.1946156279601214*g1^2*p1^2 + 1.0726514255671113*g1*g2*p1^2 - 0.29746151974577967*g2^2*p1^2 + 0.3474150051655493*g1*g3*p1^2 + 1.5662794253637933*g2*g3*p1^2 + 0.10284589178565828*g3^2*p1^2 + 0.8655281158446179*g1^2*p2 - 1.4227007533612923*g1*g2*p2  - 0.3561608986253729*g2^2*p2 - 0.7002053827479838*g1*g3*p2 + 0.1451263721376322*g2*g3*p2 - 0.4446427929457582*g3^2*p2  - 0.35089234105147404*g1^2*p1*p2 - 1.8637325747105546*g1*g2*p1*p2 - 0.7643910878410862*g2^2*p1*p2 + 0.7421389633104346*g1*g3*p1*p2 + 0.8043890896223826*g2*g3*p1*p2 + 1.1152834288925604*g3^2*p1*p2 - 0.05058692105297476*g1^2*p2^2 - 0.8545531093164939*g1*g2*p2^2 - 0.25045809562785276*g2^2*p2^2 - 1.482438556873845*g1*g3*p2^2 - 0.2760311985894717*g2*g3*p2^2 + 0.30104501668082756*g3^2*p2^2 + 0.41615153726461007*g1^2*p3 - 1.6031132124173149*g1*g2*p3 + 1.1652768530802575*g2^2*p3 + 0.1236694347662175*g1*g3*p3  - 0.033510271732486586*g2*g3*p3 + 0.6625023868605743*g3^2*p3 - 0.06941899872446193*g1^2*p1*p3 - 0.5612725019588681*g1*g2*p1*p3 + 1.4835363108262836*g2^2*p1*p3 - 0.8310204341509994*g1*g3*p1*p3 + 1.3650887611787323*g2*g3*p1*p3 - 1.4141173121018216*g3^2*p1*p3 - 0.2915853970368523*g1^2*p2*p3 - 1.2521117933146961*g1*g2*p2*p3 + 0.38706376702247*g2^2*p2*p3 + 1.2309129178715645*g1*g3*p2*p3 + 2.001338697637118*g2*g3*p2*p3 - 0.09547836998561768*g3^2*p2*p3 - 0.14402870690714664*g1^2*p3^2 - 0.2180983162506176*g1*g2*p3^2 + 0.5479196153736324*g2^2*p3^2 + 1.1350235517082958*g1*g3*p3^2 - 1.2902482267743214*g2*g3*p3^2 - 0.40389090846648584*g3^2*p3^2 - 0.31676197137727014*q0 + 0.44977644852595483*p1*q0 - 0.06472442427348668*p2*q0 - 2.2439307772054415*p3*q0 - 0.5547165223690258*q1 + 0.23831878651082344*p1*q1 + 0.031977776730485255*p2*q1 + 0.16687455406564522*p3*q1 + 0.9423377906275198*q2 + 1.376589178886685*p1*q2 + 0.5306523901876015*p2*q2 + 0.4754891181933043*p3*q2 + 0.09673230093655334*q3 + 0.0892904130224598*p1*q3 + 0.943551163213123*p2*q3 - 1.2527250130712726*p3*q3,
     -0.04095049824628835*g1^2 + 0.043116025511842154*g1*g2 + 0.003940499198786224*g2^2 + 0.7629770334036455*g1*g3 - 0.8492350760146794*g2*g3 - 0.2784174783424625*g3^2 + 0.4281444292173086*g1^2*p1 - 0.8828960936117035*g1*g2*p1 + 0.5676682886279524*g2^2*p1 - 1.3924527881029736*g1*g3*p1 - 0.08671339002537767*g2*g3*p1 - 0.7256104095984146*g3^2*p1 - 0.5422313181564682*g1^2*p1^2 + 0.4871946471731439*g1*g2*p1^2 + 0.33193585698170985*g2^2*p1^2 - 0.10273772900088107*g1*g3*p1^2 + 0.6624874115365778*g2*g3*p1^2 + 0.21029546117475836*g3^2*p1^2 + 1.1356911567255628*g1^2*p2 - 1.222100685178249*g1*g2*p2 - 0.09334002143332033*g2^2*p2 - 1.6524959396527132*g1*g3*p2 + 1.5569725124184146*g2*g3*p2 + 0.7669386068453008*g3^2*p2 - 1.5587675264538823*g1^2*p1*p2 - 1.1317581527003464*g1*g2*p1*p2 + 0.01829080736739283*g2^2*p1*p2 + 1.0020439814840232*g1*g3*p1*p2 + 0.7984049760283556*g2*g3*p1*p2 + 1.5404767190864894*g3^2*p1*p2 + 0.4331904808414006*g1^2*p2^2 - 0.1389285705830233*g1*g2*p2^2 - 0.012183710127155694*g2^2*p2^2 - 0.23769385136664706*g1*g3*p2^2 + 0.24382837068218804*g2*g3*p2^2 - 0.4210067707142449*g3^2*p2^2 + 0.21198555697618326*g1^2*p3 - 0.01647709154129892*g1*g2*p3 - 0.18945218115272705*g2^2*p3 + 0.77528301920843*g1*g3*p3 - 2.0514046696465*g2*g3*p3 + 0.10432028494512646*g3^2*p3 - 0.1676311045685404*g1^2*p1*p3 - 1.325546381572095*g1*g2*p1*p3 + 0.8078478514339609*g2^2*p1*p3 - 0.9669176278885212*g1*g3*p1*p3 - 0.36872926793739896*g2*g3*p1*p3 - 0.6402167468654205*g3^2*p1*p3 + 0.6297207100844667*g1^2*p2*p3 - 2.067771321161895*g1*g2*p2*p3  - 0.17862819697751522*g2^2*p2*p3 + 0.020391323549034297*g1*g3*p2*p3  + 2.777563669744398*g2*g3*p2*p3 - 0.45109251310695153*g3^2*p2*p3 + 0.10904083731506761*g1^2*p3^2 - 0.3482660765901206*g1*g2*p3^2 - 0.31975214685455416*g2^2*p3^2 + 0.34043158036752813*g1*g3*p3^2 - 0.9063157822187657*g2*g3*p3^2 + 0.21071130953948652*g3^2*p3^2 + 0.31542747738996463*q0 - 0.27020230824684643*p1*q0 - 1.8092897421375431*p2*q0 - 0.12685366076858268*p3*q0 - 0.9721054060313574*q1 + 1.4332583965298273*p1*q1 - 0.3658292969614953*p2*q1 - 0.458292808629767*p3*q1 + 1.1057480001700448*q2 + 0.649216154064302*p1*q2 + 0.1435470147844548*p2*q2 + 1.8049686045262234*p3*q2 + 0.3619641675513017*q3 + 1.0386298649000567*p1*q3 - 0.2739870731830222*p2*q3 - 0.38992289294835114*p3*q3,
     -0.41615764608945516*g1^2 - 1.2331171001793817*g1*g2 + 0.10423594498637195*g2^2 + 0.4451741240918564*g1*g3 - 0.0807794759847403*g2*g3 + 0.015584822151867354*g3^2 + 0.5169791211840113*g1^2*p1 - 0.3281633186673521*g1*g2*p1 + 0.10768082059655043*g2^2*p1 - 1.78387184821123*g1*g3*p1 + 0.1962385955438586*g2*g3*p1 - 0.0932755727182936*g3^2*p1 - 0.12307658314371513*g1^2*p1^2 + 1.3649915585405705*g1*g2*p1^2 - 0.01641144275933561*g2^2*p1^2 + 1.282522294958988*g1*g3*p1^2 + 0.13118389677242223*g2*g3*p1^2 + 0.13948802590305073*g3^2*p1^2 - 0.4784260518169776*g1^2*p2 - 2.092134198423298*g1*g2*p2 - 0.2652478875380973*g2^2*p2 - 0.9322070346912057*g1*g3*p2 + 0.28229645793462466*g2*g3*p2 - 0.07438003692790207*g3^2*p2 + 0.1376969425780227*g1^2*p1*p2 - 1.3462021315216954*g1*g2*p1*p2 - 0.35831006800801096*g2^2*p1*p2 - 0.3236078908735904*g1*g3*p1*p2 - 0.23312973570099904*g2*g3*p1*p2 + 0.2206131254299883*g3^2*p1*p2 + 0.03212463900566726*g1^2*p2^2 - 0.543299069419884*g1*g2*p2^2 - 0.1081313237618179*g2^2*p2^2 - 1.8348908578280814*g1*g3*p2^2 - 0.3379484782876818*g2*g3*p2^2 + 0.07600668475615065*g3^2*p2^2 + 0.6002572265406737*g1^2*p3 + 0.1802055521069689*g1*g2*p3 + 1.5644331744196656*g2^2*p3 - 0.5267676534246675*g1*g3*p3 - 1.676157338774887*g2*g3*p3 + 0.4008307913692461*g3^2*p3 - 0.5875157312206984*g1^2*p1*p3 - 0.26794777918572443*g1*g2*p1*p3 + 1.8161766879761405*g2^2*p1*p3 + 0.08217873131336825*g1*g3*p1*p3 + 0.41625228622759664*g2*g3*p1*p3 - 1.228660956755442*g3^2*p1*p3 + 0.801736157469905*g1^2*p2*p3 - 0.06119905069237429*g1*g2*p2*p3 + 0.5320140756032581*g2^2*p2*p3 - 0.5120321678148483*g1*g3*p2*p3 + 1.3994959245799465*g2*g3*p2*p3 - 1.3337502330731632*g3^2*p2*p3 + 0.09095194413804787*g1^2*p3^2 - 0.8216924891206866*g1*g2*p3^2 + 0.12454276652115351*g2^2*p3^2 + 0.5523685628690934*g1*g3*p3^2 + 0.20676458151525956*g2*g3*p3^2 - 0.2154947106592014*g3^2*p3^2 + 0.29633687895121585*q0 - 0.5313843690622682*p1*q0 + 0.8180539762829769*p2*q0 - 2.5655211923295855*p3*q0 - 1.2602089223582702*q1 + 1.1609512634985952*p1*q1 - 1.5289512288758575*p2*q1 - 0.17424561505966216*p3*q1 + 0.10364901876603111*q2 - 0.013973408764994696*p1*q2 - 0.30080374272031296*p2*q2 + 1.5473286276087392*p3*q2 - 0.04276145686338927*q3 + 0.12497482938060817*p1*q3 + 0.06337974500071619*p2*q3 - 1.1223229062458282*p3*q3,

    0.0995239208560676*g1^2 - 0.4069835646127759*g1*g2 + 0.2822661867004282*g2^2 + 0.8451107786883508*g1*g3 - 0.5316708978452792*g2*g3 - 0.8798108963881374*g3^2 - 0.08841286657967666*g1^2*p1 - 0.5437440767827946*g1*g2*p1 + 0.8310187547943032*g2^2*p1 - 2.300828301805621*g1*g3*p1 + 1.7576212044508612*g2*g3*p1 + 0.8123567734335738*g3^2*p1 - 0.06820768665581543*g1^2*p1^2 + 1.3043060864108098*g1*g2*p1^2 - 0.009054065062096384*g2^2*p1^2 + 1.3077574118576432*g1*g3*p1^2 + 0.06768474224643237*g2*g3*p1^2 + 0.07726175171791182*g3^2*p1^2 + 0.21964796928975452*g1^2*p2 - 0.7213869971382741*g1*g2*p2 + 0.06428880062023586*g2^2*p2 + 0.6769693907722261*g1*g3*p2 + 1.0938889186830445*g2*g3*p2 + 1.033778176369894*g3^2*p2 + 0.04579106142198317*g1^2*p1*p2 - 1.6136177673887118*g1*g2*p1*p2 - 0.08313705215573315*g2^2*p1*p2 - 0.3180870028357637*g1*g3*p1*p2 - 0.1323253404673372*g2*g3*p1*p2 + 0.03734599073374998*g3^2*p1*p2 + 0.06270407236710761*g1^2*p2^2 - 0.19162792586107563*g1*g2*p2^2 - 0.009068232422623026*g2^2*p2^2 - 1.9648502282295741*g1*g3*p2^2 - 0.09696983966017489*g2*g3*p2^2 - 0.053635839944484585*g3^2*p2^2 + 0.09136896607569936*g1^2*p3 - 1.5831271499881143*g1*g2*p3  + 1.1586203238882382*g2^2*p3 + 1.561944037084699*g1*g3*p3 + 0.5373765622781439*g2*g3*p3 - 0.7510078085771675*g3^2*p3 + 0.03313601431114031*g1^2*p1*p3 + 0.999575794109116*g1*g2*p1*p3 + 0.0005673645755714211*g2^2*p1*p3 - 1.8768450822200746*g1*g3*p1*p3 + 0.15574381848783894*g2*g3*p1*p3 - 0.03370337888671173*g3^2*p1*p3 + 0.040671941002624216*g1^2*p2*p3 - 2.5271478321380254*g1*g2*p2*p3 - 0.11221443152128503*g2^2*p2*p3 + 0.5426249873354888*g1*g3*p2*p3 + 0.01844664972668835*g2*g3*p2*p3 + 0.07154249051866082*g3^2*p2*p3 + 0.005503614288707821*g1^2*p3^2 - 1.1126781605497342*g1*g2*p3^2 + 0.01812229748471941*g2^2*p3^2 + 0.657092816371931*g1*g3*p3^2 + 0.029285097413742515*g2*g3*p3^2 - 0.02362591177342723*g3^2*p3^2 + 0.49802078883164164*q0 - 1.5549626616482004*p1*q0 - 1.3177149462798845*p2*q0 - 0.49898148138677*p3*q0 - 0.12338824573791841*q1 - 0.06111510706623446*p1*q1 - 0.04157014428073322*p2*q1 - 0.007996832327295606*p3*q1 + 0.3953545453627241*q2 + 1.168253359907005*p1*q2 + 0.1289788318383644*p2*q2 + 1.6166074402033737*p3*q2 - 1.1634376524391858*q3 + 1.1753697910765462*p1*q3 + 1.303746265623441*p2*q3 - 0.9550529463247988*p3*q3,
     -0.43946259392041137*g1^2 - 0.2794194400312886*g1*g2 + 0.28633513817241923*g2^2 + 0.4837842932289669*g1*g3 - 0.2789447622513483*g2*g3 + 0.00840391192868436*g3^2 - 1.5744202005495247*g1^2*p1 - 0.2861663506179279*g1*g2*p1 + 0.7386941869051702*g2^2*p1 + 0.5331769017373268*g1*g3*p1 + 0.3754313238644043*g2*g3*p1 - 0.49557272342979514*g3^2*p1 - 0.1697121445535322*g1^2*p1^2 + 0.17649121044520624*g1*g2*p1^2 + 0.230772384999563*g2^2*p1^2 + 1.5487222154552227*g1*g3*p1^2 + 1.1549190062177301*g2*g3*p1^2 - 0.061060240446030825*g3^2*p1^2 + 0.3428887153466959*g1^2*p2 - 2.0520172954900926*g1*g2*p2 + 0.2548434377395737*g2^2*p2 - 1.1661156986017325*g1*g3*p2 + 1.1418016311188108*g2*g3*p2 - 0.03717326023724154*g3^2*p2 - 1.1298456541690676*g1^2*p1*p2 - 2.0395244570443807*g1*g2*p1*p2 - 0.46158802071478294*g2^2*p1*p2 - 0.7937227851031279*g1*g3*p1*p2 + 1.3925863980743391*g2*g3*p1*p2 + 1.5914336748838505*g3^2*p1*p2 + 0.5461657368466324*g1^2*p2^2 - 0.40076456254394*g1*g2*p2^2 - 0.5789448963236655*g2^2*p2^2 - 1.2606913391501393*g1*g3*p2^2 - 0.8839870841626388*g2*g3*p2^2 + 0.03277915947703309*g3^2*p2^2 - 0.8186969313136523*g1^2*p3 - 0.02925076747851844*g1*g2*p3 + 0.7392135200738452*g2^2*p3 + 0.12848993732517067*g1*g3*p3 - 0.9246721961161062*g2*g3*p3 + 0.34711806557393554*g3^2*p3 - 1.3114980542204153*g1^2*p1*p3 + 0.7458693987541652*g1*g2*p1*p3  + 1.309443056027262*g2^2*p1*p3 - 0.5609050703954811*g1*g3*p1*p3 - 0.560863866588139*g2*g3*p1*p3 + 0.0020549981931533984*g3^2*p1*p3 + 0.21040044489655793*g1^2*p2*p3 - 2.094674294769259*g1*g2*p2*p3 + 0.9014935747766074*g2^2*p2*p3 - 0.7741828342315165*g1*g3*p2*p3 + 1.0179705141740856*g2*g3*p2*p3 - 1.1118940196731655*g3^2*p2*p3 - 0.37645359229310016*g1^2*p3^2 + 0.22427335209873375*g1*g2*p3^2 + 0.34817251132410243*g2^2*p3^2 - 0.2880308763050832*g1*g3*p3^2 - 0.27093192205509137*g2*g3*p3^2 + 0.028281080968997733*g3^2*p3^2 + 0.14472354381930777*q0 + 1.3312987370741496*p1*q0 - 0.560558892849028*p2*q0 - 0.26763465433412853*p3*q0 + 0.34474968158768826*q1 + 1.1967487089081013*p1*q1 - 0.5416788729536276*p2*q1 + 0.35732161373948407*p3*q1 + 0.4086834090152563*q2 + 0.9057045158335053*p1*q2 + 0.790785041402257*p2*q2 + 0.25330644272284614*p3*q2 - 0.3854162586341408*q3 - 0.04738889206888738*p1*q3 + 1.2360880142692436*p2*q3 - 0.03146357181747231*p3*q3,
     -0.3364985136694329*g1^2 - 0.6220713377668979*g1*g2  + 0.30253663989085705*g2^2 + 0.09691241616903694*g1*g3 - 0.23475287081412524*g2*g3 + 0.03759204880218851*g3^2 - 1.0655428995245861*g1^2*p1 + 1.2015525036653503*g1*g2*p1 + 0.7601103825805371*g2^2*p1 - 0.19738187400246698*g1*g3*p1 + 0.6151569823342218*g2*g3*p1 - 0.19896444557080828*g3^2*p1 + 0.12867336914719074*g1^2*p1^2 + 1.2422164684570598*g1*g2*p1^2 - 0.32698199621342966*g2^2*p1^2 + 0.988903111633841*g1*g3*p1^2 + 0.015998020944011523*g2*g3*p1^2 + 0.19830862706623895*g3^2*p1^2 - 0.36506543203523656*g1^2*p2 - 1.8191248166962*g1*g2*p2 - 0.04702353062492582*g2^2*p2 + 0.22650992191881464*g1*g3*p2 + 0.6757394159618821*g2*g3*p2 - 0.20784006514510822*g3^2*p2 - 1.3823450011564475*g1^2*p1*p2 - 0.10921823662847378*g1*g2*p1*p2 + 0.9411204746791397*g2^2*p1*p2 + 0.6416176172245012*g1*g3*p1*p2 + 0.6050178988297725*g2*g3*p1*p2 + 0.4412245264773078*g3^2*p1*p2 + 0.06735301456610396*g1^2*p2^2 - 0.8585408362609629*g1*g2*p2^2 - 0.3090762258515019*g2^2*p2^2 - 0.4001418483728859*g1*g3*p2^2 + 0.4779675484647562*g2*g3*p2^2 + 0.24172321128539795*g3^2*p2^2 - 0.5137007261636957*g1^2*p3 - 0.9820327320175907*g1*g2*p3 + 0.926095293449879*g2^2*p3 - 0.7003487284409724*g1*g3*p3 - 0.9430374895060032*g2*g3*p3 + 0.08868217302851986*g3^2*p3 - 0.8028419556001375*g1^2*p1*p3 + 1.4979362188623169*g1*g2*p1*p3 + 0.6798639272820932*g2^2*p1*p3 - 1.0625669164194511*g1*g3*p1*p3  + 1.6499737530190743*g2*g3*p1*p3 + 0.12297802831804432*g3^2*p1*p3 - 0.2829951083769471*g1^2*p2*p3 - 1.67180387717421*g1*g2*p2*p3 + 0.22862840829725906*g2^2*p2*p3 - 0.45573353517584536*g1*g3*p2*p3 - 0.030399560249614144*g2*g3*p2*p3 + 0.05436670007968804*g3^2*p2*p3 - 0.1960263837132947*g1^2*p3^2 - 0.3836756321960968*g1*g2*p3^2 + 0.6360582220649316*g2^2*p3^2 - 0.5887612632609552*g1*g3*p3^2 - 0.49396556940876774*g2*g3*p3^2 - 0.4400318383516369*g3^2*p3^2 - 0.0036301750236126602*q0 + 0.5043969625148573*p1*q0 + 0.6199290278052706*p2*q0 - 0.5010767403147031*p3*q0 + 0.27845755063810307*q1 + 0.9141858220671707*p1*q1 - 0.04474642022970836*p2*q1 + 0.21510107355697375*p3*q1 + 0.6261152163591358*q2 - 0.23441023070199246*p1*q2  + 0.5860551333365724*p2*q2 + 0.6514610848268766*p3*q2 - 0.1414398428437503*q3 + 0.18837597417330545*p1*q3 + 0.23529746996939166*p2*q3 + 0.34502969365002717*p3*q3,
     -0.4997153826800627*g1^2 + 1.1379854833548109*g1*g2 - 0.6474309248194395*g2^2 + 0.5441177673182162*g1*g3  - 0.6356209362624222*g2*g3 - 0.00249167421336129*g3^2 - 1.5544041627556424*g1^2*p1 + 2.3739950333676623*g1*g2*p1  - 0.626498203472872*g2^2*p1 - 1.251167893581656*g1*g3*p1 + 1.014528145879352*g2*g3*p1 - 0.07360314669929015*g3^2*p1 - 0.11700211538167525*g1^2*p1^2 + 1.4292168664824174*g1*g2*p1^2 - 0.08561887506760898*g2^2*p1^2 + 0.11756149787203274*g1*g3*p1^2 + 1.2753331275027957*g2*g3*p1^2 + 0.20262099044928422*g3^2*p1^2 - 0.5322121916934887*g1^2*p2 - 0.5705836762208184*g1*g2*p2 + 1.338552997747994*g2^2*p2 + 0.1626686039427204*g1*g3*p2 + 0.8255938648528275*g2*g3*p2 - 0.2877403739032339*g3^2*p2 - 1.7484788356484942*g1^2*p1*p2 - 0.7462669895235802*g1*g2*p1*p2 + 0.9024930142580471*g2^2*p1*p2 - 0.836428661723292*g1*g3*p1*p2 + 0.10315211869079574*g2*g3*p1*p2 + 0.8459858213904471*g3^2*p1*p2 + 0.0524174914208927*g1^2*p2^2 - 1.0349080883999526*g1*g2*p2^2 - 0.4456138068634661*g2^2*p2^2 - 0.8702119648626987*g1*g3*p2^2 + 0.1347633798985455*g2*g3*p2^2 + 0.3931963154425734*g3^2*p2^2 + 0.7263228121576023*g1^2*p3 - 2.2210658961930227*g1*g2*p3 + 1.6108892968930464*g2^2*p3 - 1.0504867050871953*g1*g3*p3 + 1.0659099359741329*g2*g3*p3 + 0.5672833993063003*g3^2*p3 - 0.06811413086649659*g1^2*p1*p3 - 0.31001429706461026*g1*g2*p1*p3 + 1.4153449120254278*g2^2*p1*p3 - 1.8526453839326555*g1*g3*p1*p3 + 1.3321822393355465*g2*g3*p1*p3 - 1.3472307811589312*g3^2*p1*p3 + 0.8918357940981352*g1^2*p2*p3 - 1.500420306224534*g1*g2*p2*p3 - 0.43633002867072346*g2^2*p2*p3 - 1.087845994748532*g1*g3*p2*p3 - 0.15102803926606495*g2*g3*p2*p3 - 0.4555057654274117*g3^2*p2*p3 + 0.06458462396078254*g1^2*p3^2 - 0.39430877808246473*g1*g2*p3^2 + 0.5312326819310751*g2^2*p3^2 + 0.752650466990666*g1*g3*p3^2 - 1.4100965074013412*g2*g3*p3^2 - 0.5958173058918577*g3^2*p3^2 + 1.1496379817128635*q0 + 2.2545055129278047*p1*q0 - 0.5186004321512713*p2*q0 - 2.904495508356949*p3*q0 + 0.3811371457709*q1 + 1.1561384774363503*p1*q1 - 0.03459051968276095*p2*q1 - 0.5860104174434722*p3*q1 - 0.42262305475993184*q2 - 0.06960283700014054*p1*q2 + 0.6975228406191866*p2*q2 + 1.1761445768437886*p3*q2 - 0.4132504788764938*q3 + 1.0477095469315294*p1*q3 + 0.5581768684334514*p2*q3 + 0.4360576481532085*p3*q3,

    -1. + 0.9336143308746049*g1 + 1.1781580271766483*g2 + 0.551650235747964*g3
    ]
    #

    return TestSystem(equations, multi_bezout_number=(18432, [[g1, g2, g3], [p1, p2, p3, q0, q1, q2, q3]]), mixed_volume=1024)
end