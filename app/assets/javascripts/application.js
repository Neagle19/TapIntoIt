//= require rails-ujs
//= require_tree .

document.querySelectorAll(".comments").forEach((cmt) => {
  cmt.addEventListener("click", (event) => {
      document.getElementById(event.currentTarget.dataset.div).classList.toggle("hidden")
  });
});

var friends = document.querySelectorAll(".FriendConnection");
var checkins = document.querySelectorAll(".Checkin");
var batches = document.querySelectorAll(".Batch");
var beers = document.querySelectorAll(".Beer");

document.querySelectorAll(".only-friends").forEach((cmt) => {
  cmt.addEventListener("click", (event) => {
    console.log(friends)
    friends.forEach(function(k){k.classList.remove("hidden")});
    checkins.forEach(function(k){k.classList.add("hidden")});
    batches.forEach(function(k){k.classList.add("hidden")});
    beers.forEach(function(k){k.classList.add("hidden")});

  });
});

document.querySelectorAll(".only-checkins").forEach((cmt) => {
  cmt.addEventListener("click", (event) => {
    console.log(friends)
    friends.forEach(function(k){k.classList.add("hidden")});
    checkins.forEach(function(k){k.classList.remove("hidden")});
    batches.forEach(function(k){k.classList.add("hidden")});
    beers.forEach(function(k){k.classList.add("hidden")});

  });
});

document.querySelectorAll(".only-beers").forEach((cmt) => {
  cmt.addEventListener("click", (event) => {
    console.log(friends)
    friends.forEach(function(k){k.classList.add("hidden")});
    checkins.forEach(function(k){k.classList.add("hidden")});
    batches.forEach(function(k){k.classList.remove("hidden")});
    beers.forEach(function(k){k.classList.add("hidden")});

  });
});

document.querySelectorAll(".only-batches").forEach((cmt) => {
  cmt.addEventListener("click", (event) => {
    console.log(friends)
    friends.forEach(function(k){k.classList.add("hidden")});
    checkins.forEach(function(k){k.classList.add("hidden")});
    batches.forEach(function(k){k.classList.add("hidden")});
    beers.forEach(function(k){k.classList.remove("hidden")});

  });
});


