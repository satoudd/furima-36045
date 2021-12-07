window.addEventListener('load', () => {
  const priceInput = document.getElementById("item-price");
  priceInput.addEventListener("input", () => {
    const inputValue = priceInput.value;
    const addTaxDom = document.getElementById("add-tax-price");
    const honmask = document.getElementById("profit")
    var tax = inputValue*0.1;
    var price = inputValue-tax;
    addTaxDom.innerHTML = tax;
    honmask.innerHTML = price;
})
})