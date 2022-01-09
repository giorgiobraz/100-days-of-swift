import UIKit

// *********************** 1. Variáveis ***********************
/* A linguagem Swift é fortemente tipada. Quer dizer que  cada variável deve ser de um tipo específico. */
var str = "Hello, playground"

// ***************** 2. Strings e inteiros ********************
/* Tipos de variáveis no Swift:
 - str
 - int
 
 > NOTA: A casa dos milhares deve ser separada por underscors "_". Por exemplo, `var population = 8_000_000`. */

// ************** 3. Strings em múltiplas linhas **************
 /* É possível atribuir textos com quebras de linha no editor com três aspas. Como isso: */
var MyPhrase = """
Estou aprendendo a
programar em Swift
nos próximos 100 dias!
"""

var MyPhrase2 = """
Estou aprendendo a \
programar em Swift \
nos próximos 100 dias!
"""
/* Além disso, é possível exibir isso no console usando "\" no final de cada linha no editor de código.

 IMPORTANTE: Nunca quebre linhas ao exibir mensagens de erro. Isso dificultará a busca deles por outros programadores. */
 
 // ****************** 4. Doubles e Booleanos ******************
/* Double: "double precision floating point number".
   Para verificar o tipo de uma variável, utilize a função _type(of: <VariableName>)_.
   O Swift, por segurança, não permite uma operação entre tipos diferentes, mesmo int e double. */

var pi = 3.14159
//print(type(of: pi))
var number1 = 5.2

var sum = pi + number1
print("A soma1 é igual a: ",sum)

// ****************** 5. Interpolação de Strings ******************
print("O valor de pi é: \(pi) e o de number1 é: \(number1)")

/* Mais sobre interpolação de strings com Swift em:
 https://www.hackingwithswift.com/articles/178/super-powered-string-interpolation-in-swift-5-0 */

// ************************ 6. Constantes *************************
/* Para constantes, usamos LET em vez de VAR */
let e = 2.71828

// *************** 7. Declaração explícita de tipo ****************
let str2 = "Hey, You!"
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
var taylorRocks: Bool = true
taylorRocks = false

/* Por que e quando usar:
   1. Swift não pode saber qual tipo usar
   2. Você precisa usar um tipo diferente por padrão
   3. Você ainda não vai atribuir um valor
 
   OBS: var str3 = "" ou var str3: String
 */

var n: Int = 13
n = n + 8
print("O tipo de \(n) é: \n", type(of: n))

// ****************** 8. Tipos simples: Sumário *******************
/*
   1. Use VAR para variáveis e LET para constantes
   2. Duas aspas para strings simples ou três para quebras de linha
   3. Int, Double ou Bool
   4. Interpolaçnao de strings
   5. Declaração explícita de tipo (pode ser uma questão de estilo em alguns casos
*/
