const showComments = () => {
  document.querySelectorAll(".comments").forEach((cmt) => {
      console.log("boy");
    cmt.addEventListener("click", (event) => {
        document.getElementById(event.currentTarget.dataset.div).classList.toggle("hidden");
    });
  });
};
export { showComments };
