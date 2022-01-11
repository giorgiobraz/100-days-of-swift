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
 
 // ****************** 4. Doubles e Booleanos ******************
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
 */

// **************************** Arrays ****************************
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
beatles[0]

// Com Type annotations
var cities: [String] = ["London", "Paris", "New York"]

// ***************************** Sets *****************************
/*
 1. Não são ordenáveis
 2. Não contém valores duplicados
 3. Não contém um índice
 */
let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "blue"]) // porém, não retorna um erro
// Para buscar dados de forma mais rápida se sem tantas iterações, como se uma palavra existe em um dicionário, os sets são extremamente recomendados.

// ***************************** Tuplas ***************************
/*
 1. Armazenar vários valores em um único
 2. São imutáveis (sem add ou remove) e seus tipos também.
 3. Acessar valores pode ser feito por número ou nome
 */
var name = (first: "Taylor", last: "Swift") // Também pode ser constante (LET)
name.0
name.first = "Young"
//print(name.0)

// NOTA: É possível alterar o valor, mas não seu tipo. Isso resultará num erro.

// Arrays vs sets vs tuples, como saber qual escolher?
//https://www.hackingwithswift.com/quick-start/understanding-swift/when-should-you-use-an-array-a-set-or-a-tuple-in-swift

// ************************** Dicionários *************************
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

// Valores padrão do dicionário
var favoriteIceCreamn = ["Charlotte", default: "Unknown"]

// Outro exemplo válido
let books = ["Austen": "Pride and Prejudice"]
let dickens = books["Dickens", default: "Unknown"]

// Ou
let albums = ["Prince": "Purple Rain"]
var beatles2 = albums["Beatles"]

// ******************** Criando coleções vazias ********************
// https://www.hackingwithswift.com/sixty/2/7/creating-empty-collections

// ***************************** Enums ******************************
// Permite nos escolher um nome apropriado/adequado/legal para um valor.

let result = "failure"
let result2 = "failed"
let result3 = "fail"

// Indicam sucesso ou falha, por exemplo:
enum Result {
    case success
    case failure
}
// Exemplo de uso para esse caso:
let result4 = Result.failure

// Outro caso de uso interessante:
// Direction -> north, south, east, and west
// Usamos assim -> Direction.north

// -----------------------------------------------------------------
// Seus valores associados
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")

// Outro exemplo
enum Weather {
    case sunny
    case windy(speed: Int)
    case rainy(chance: Int, amount: Int)
}

// Valores brutos para Enum
enum Planet: Int {
    case mercury = 1 // Ao remover a atribuição, mercury começará em 0.
    case venus
    case earth
    case mars
}
