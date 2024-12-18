/// See <CLASS>%Text.Text</CLASS>
/// <p>
/// The <CLASS>%Text.Spanish</CLASS> class implements the Spanish language-specific stemming algorithm
/// and initializes the language-specific list of noise words.</p>
///
Class %Text.Spanish Extends %Text.Text [ System = 4 ]
{

Parameter DICTIONARY = 8;

Parameter SOURCELANGUAGE = "es";

Parameter NOISEWORDS100 = "de a y a en es �l usted eso el era para en sea con como el suyo ellos sea en uno tenga esto de o ten�a por caliente palabra pero qu� algunos nosotros lata fuera de otro eran todos all� cuando encima de utilice su c�mo dicho cada uno ella cu�l su tiempo si voluntad manera sobre muchos entonces ellos escriba como tan �stos ella largo haga cosa vea �l dos tiene mirada m�s d�a podr�a vaya venido n�mero sonido no la mayor�a gente mi encima sepa agua que llamada primero qui�n pueda abajo lado sido ahora hallazgo cualesquiera nuevo trabajo parte toma";

Parameter NOISEWORDS200 = "consiga lugar hecho vivo donde despu�s parte posteriora poco solamente redondo hombre a�o vino demostraci�n cada bueno yo elasticidad nuestro debajo nom nombre muy por apenas forma oraci�n grande piense opini�n ayuda bajo l�nea diferencie vuelta causa mucho medio antes movimiento la derecha muchacho viejo tambi�n iguales diga sistema tres desee aire pozo tambi�n juego peque�o extremo puesto casero le�do mano puerto grande encanto agregue iguale tierra aqu� necesidad grande alto tales siga acto porqu� pida hombres cambio fue luz bueno de necesidad casa cuadro intento nosotros otra vez animal punto madre mundo cerca estructura uno mismo tierra padre cabeza soporte poseer p�gina si";

Parameter NOISEWORDS300 = "pa�s encontrado respuesta escuela crezca estudio a�n aprenda planta cubierta alimento sol cuatro entre estado subsistencia ojo nunca �ltimo dejado pensamiento ciudad �rbol cruz granja dif�cilmente comienzo fuerza historia sierra lejos mar drenaje izquierdo tarde funcionamiento no mientras prensa cierre noche verdadero vida pocos norte abierto par�zcase junto despu�s blanco ni�os comience conseguido caminata ejemplo facilidad papel grupo siempre m�sica �sos ambos marca a menudo letra hasta milla r�o coche pies cuidado segundo lugar libro lleve tom� ciencia coma sitio amigo comenz� idea pescados monta�a parada una vez que base oiga caballo corte seguro reloj color cara madera principal bastantes llano";

ClassMethod removeAllAccents(ByRef b As %String, ByRef k As %Integer)
{
}

/// Simple Italian stemmer.  See http://www.unine.ch/info/clef/italianStemmer.txt
ClassMethod stemWord(ByRef b As %String) As %String
{
}

}
