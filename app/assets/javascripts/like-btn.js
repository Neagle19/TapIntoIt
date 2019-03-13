document.querySelectorAll(".likes").forEach((cmt) => {
  console.log('firstpart');
  cmt.addEventListener("mousedown", (event) => {
    console.log('secondpart');
    var btn = document.getElementById("likes-hidden-" + event.currentTarget.dataset.div);
    count = document.getElementById("likes-count-" + event.currentTarget.dataset.div);
    if (btn.classList.contains("liked")) {
      console.log('thirdpart');
      var number = count.innerHTML;
      number--;
      count.innerHTML = number;
    } else {
      console.log('thirdpart');
      var number = count.innerHTML;
      number++;
      count.innerHTML = number;
    };
    btn.classList.toggle("liked");
    console.log('fourthpart');
  });
});
