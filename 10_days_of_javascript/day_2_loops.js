/*
 * Complete the vowelsAndConsonants function.
 * Print your output using 'console.log()'.
 */
const vowels = ['a', 'e', 'i', 'o', 'u']
let inputVowels = []
let inputConsonants = []

function vowelsAndConsonants(s) {
  for (var i = 0; i < s.length; i++) {
    let letter = s.charAt(i)
    if (vowels.includes(letter)) {
      inputVowels.push(letter)
    } else {
      inputConsonants.push(letter)
    }
  }

  inputVowels.forEach(element => console.log(element))
  inputConsonants.forEach(element => console.log(element)) 
}
