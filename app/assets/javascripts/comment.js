// When we press comment, add it to the LIST and increase the number of comments by 1
// maybe also turn it yellow

//clone last child and change its data?

document.querySelectorAll(".comment-btn").forEach((cmt) => {
  cmt.addEventListener("click", (event) => {
    var idPost = event.explicitOriginalTarget.attributes.name.value;
    var cloned = document.getElementById(`iterated-comments-${idPost}`);
    console.log(cloned)
    //   document.getElementById("iterated-comments-${idPost}").appendChild(cloned)

  });
});


// .lastChild.cloneNode(true)
