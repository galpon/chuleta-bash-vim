Un consello con respecto aos «splits»: xa que se nomean, que menos que explicar como se move un por eles.
  [modo normal] ^w l,h,j,k → Moverse aol «split» dereito,esquerdo,inferior e superior, respectivamente.
  [modo normal] ^w L,H,J,K → Mover o «split» a unha posición á dereita, á esquerda, cara abaixo e cara arriba.
  [modo normal] ^w w       → Alterna entre os diferentes «splits»

Os «split» son útiles cando queres ver varios ficheiros de vez. Vim tamén admite «lapelas»
  [modo orde] tabopen ficheiro → Abre un novo documento noutra lapela.
  [modo orde] tabnew           → Para abrir unha nova lapela sen estar asociada a un ficheiro (un novo documento, ou un temporal)
  [modo normal]  gt ou gT      → Desprázase entre as lapelas cara á dereita, ou á esquerda, respectivamente.

Non hai que esquecer que vi ten 4 modos:
  * inserción → Neste modo podes inserir, substituír, borrar... Accedese dende o modo normal premendo aAiIoOsScC (algunhas teñen mais teclas que premendo só unha)
  * visual     → Neste modo permítese «seleccionar» e actuar sobre o seleccionado
  * comando    → Vi permite a execución de ordes. Accedese dende normal premendo «:»
  * normal     → É o modo principal ao que se accede se non se lle di outra cousa. Desde calquera dos outros modos accedese premendo «Esc»

É importante facer ver a diferencia entre os catro modos. Sería «falso» que «w» significase gardar:
  * normal  → significa moverse ao seguinte inicio de palabra
  * visual  → selecciona hasta ao seguinte inicio de palabra
  * comando → garda o ficheiro

Na documentación de varios engadidos para vim pódese ver algo como isto:
  [ncvi] w → mesma acción para os catro modos
  [n v ] w → Esta acción so funciona nos modos normal e visual

Igual habería que indicalo dalgunha forma, ou só facer unha chuleta pensando no modo normal
  * :w  → gardar
  * :q  → saír
  * A   → inserir na fin da liña
  * :s/buscar/substituír/g
  * :%s/buscar/substituír/g
  * :num_liña_ini,num_liña_fin/buscar/substituír/g
  * /palabra

Recoméndoche esta última opción por ser máis xeral, máis concisa.
