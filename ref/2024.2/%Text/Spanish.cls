/// See <CLASS>%Text.Text</CLASS>
/// <p>
/// The <CLASS>%Text.Spanish</CLASS> class implements the Spanish language-specific stemming algorithm
/// and initializes the language-specific list of noise words.</p>
///
Class %Text.Spanish Extends %Text.Text [ System = 4 ]
{

Parameter DICTIONARY = 8;

Parameter SOURCELANGUAGE = "es";

Parameter NOISEWORDS100 = "de a y a en es él usted eso el era para en sea con como el suyo ellos sea en uno tenga esto de o tenía por caliente palabra pero qué algunos nosotros lata fuera de otro eran todos allí cuando encima de utilice su cómo dicho cada uno ella cuál su tiempo si voluntad manera sobre muchos entonces ellos escriba como tan éstos ella largo haga cosa vea él dos tiene mirada más día podría vaya venido número sonido no la mayoría gente mi encima sepa agua que llamada primero quién pueda abajo lado sido ahora hallazgo cualesquiera nuevo trabajo parte toma";

Parameter NOISEWORDS200 = "consiga lugar hecho vivo donde después parte posteriora poco solamente redondo hombre año vino demostración cada bueno yo elasticidad nuestro debajo nom nombre muy por apenas forma oración grande piense opinión ayuda bajo línea diferencie vuelta causa mucho medio antes movimiento la derecha muchacho viejo también iguales diga sistema tres desee aire pozo también juego pequeño extremo puesto casero leído mano puerto grande encanto agregue iguale tierra aquí necesidad grande alto tales siga acto porqué pida hombres cambio fue luz bueno de necesidad casa cuadro intento nosotros otra vez animal punto madre mundo cerca estructura uno mismo tierra padre cabeza soporte poseer página si";

Parameter NOISEWORDS300 = "país encontrado respuesta escuela crezca estudio aún aprenda planta cubierta alimento sol cuatro entre estado subsistencia ojo nunca último dejado pensamiento ciudad árbol cruz granja difícilmente comienzo fuerza historia sierra lejos mar drenaje izquierdo tarde funcionamiento no mientras prensa cierre noche verdadero vida pocos norte abierto parézcase junto después blanco niños comience conseguido caminata ejemplo facilidad papel grupo siempre música ésos ambos marca a menudo letra hasta milla río coche pies cuidado segundo lugar libro lleve tomó ciencia coma sitio amigo comenzó idea pescados montaña parada una vez que base oiga caballo corte seguro reloj color cara madera principal bastantes llano";

ClassMethod removeAllAccents(ByRef b As %String, ByRef k As %Integer)
{
}

/// Simple Italian stemmer.  See http://www.unine.ch/info/clef/italianStemmer.txt
ClassMethod stemWord(ByRef b As %String) As %String
{
}

}
