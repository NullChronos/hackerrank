function getMaxLessThanK(n, k) {
  let result = 0

  for (let x = 1; x < n; x++) {
    for (let y = x + 1; y <= n; y++) {
      let c = x & y
      if (c < k && c > result) { result = c }
    }
  }

  return result
}
