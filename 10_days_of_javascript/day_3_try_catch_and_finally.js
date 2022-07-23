/*
 * Complete the reverseString function
 * Use console.log() to print to stdout.
 */
function reverseString(s) {
  let output;

  try {
    output = s.split('').reverse().join('')
  } catch (e) {
    output = s
    console.log(e.message)
  } finally {
    console.log(output)
  }
}
