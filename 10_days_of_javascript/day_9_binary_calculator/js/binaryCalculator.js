let operator
const resDiv = document.getElementById("res")

function addToRes(x) {
  resDiv.innerHTML += x
}

function addOperator(op) {
  if (!operator && resDiv.innerHTML.length > 0) {
    operator = op
    addToRes(op)
  }
}

function clearRes() {
  resDiv.innerHTML = ''
  operator = null
}

function calculate () {
  if (!operator) { return }

  let result
  [operand1, operand2] = resDiv.innerHTML.split(operator)
  operand1 = parseInt(operand1, 2)
  operand2 = parseInt(operand2, 2)

  switch (operator) {
    case '+':
      result = operand1 + operand2
      break
    case '-':
      result = operand1 - operand2
      break
    case '*':
      result = operand1 * operand2
      break
    case '/':
      result = operand1 / operand2
      break
  }

  clearRes()
  resDiv.innerHTML = result.toString(2)
}
