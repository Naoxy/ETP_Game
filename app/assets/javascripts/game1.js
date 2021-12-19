
document.addEventListener("DOMContentLoaded", function () {
  // alert("assets/javascripts/game1.js")
  // console.log("DOM Loaded !")
  function message(mes) {
    document.getElementById("message").textContent = mes
    document.querySelectorAll('.word').forEach(el => el.classList.add("bg-danger"))
    document.getElementById("child_name").classList.add('bg-success')
  }

  document.getElementById("child_name").addEventListener("click", () => {
    message("GAGNÉ");
    let smiles = document.querySelectorAll(".unactivated");
    if (smiles.length > 0) {
      smiles[smiles.length - 1].classList.toggle("unactivated")
      document.getElementById("score").textContent = 4-smiles.length
    }
    else console.log("CONGRATULATION!");
    
  })
  document.querySelectorAll('.word').forEach(el => el.addEventListener("click", () => message("PERDU")))
  // document.getElementById("child_name").classList.add('bg-success')
  // document.getElementById("btn1").addEventListener("click", () => message("PERDU"))
  // document.getElementById("btn3").addEventListener("click", () => message("PERDU"))

  document.onfullscreenchange =
  function () {
  if (document.fullscreenElement ==null) {
    document.getElementById("toggle-div").classList.remove('invisible')
    console.log("screen CHANGED")
    // localStorage.setItem("fullscreen", "false");
  }}

  // if (document.fullscreenElement == null) {
  //   localStorage.setItem("fullscreen", "false");
  // }
  // console.log("document.fullscreenElement : " + document.fullscreenElement )

  
function fullScreen() {

  document.documentElement.requestFullscreen();
  document.getElementById("toggle-div").classList.add('invisible')
  // localStorage.setItem("fullscreen", "true");
}
  document.getElementById("fullScreen").addEventListener("click", () => fullScreen())

  if (localStorage.getItem("fullscreen") == "true") { fullScreen() }
  // console.log("localStorage fullscreen : " + localStorage.getItem("fullscreen"))
})
console.log("reload!")
