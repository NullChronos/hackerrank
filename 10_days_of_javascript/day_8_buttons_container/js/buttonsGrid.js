const ids = [1, 2, 3, 6, 9, 8, 7, 4]
let clockwise = [1, 2, 3, 6, 9, 8, 7, 4]

function rotate () {
  clockwise.unshift(clockwise.pop());
  for (let i = 0; i <= 7; i++) {
    document.getElementById("btn" + ids[i]).innerHTML = clockwise[i]
  }
}
