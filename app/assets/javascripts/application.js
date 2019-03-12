//= require rails-ujs
//= require_tree .

document.querySelectorAll(".comments").forEach((cmt) => {
  cmt.addEventListener("click", (event) => {
      document.getElementById(event.currentTarget.dataset.div).classList.toggle("hidden")
  });
});


