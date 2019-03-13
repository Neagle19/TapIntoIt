// When we press comment, add it to the LIST and increase the number of comments by 1
// maybe also turn it yellow



document.querySelectorAll(".comment-btn").forEach((cmt) => {
  cmt.addEventListener("click", (event) => {
      document.getElementById(event.currentTarget.dataset.div).classList.toggle("hidden")
  });
});
