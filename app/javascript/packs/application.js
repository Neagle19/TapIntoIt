import "bootstrap";
import "chartkick";
/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb
import { growImage } from '../components/grow_image';
import { initMapbox } from '../plugins/init_mapbox';
import { showComments } from '../components/comments';
showComments();
  var x = document.getElementById("demo");
 if(x) {

   function getLocation() {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(showPosition);   }
      else
        {     x.innerHTML = "Geolocation is not supported by this browser.";   }
    }
      function showPosition(position) {
       document.getElementById('lat').value = position.coords.latitude;
       document.getElementById('lng').value = position.coords.longitude;
       document.getElementById('lng').parentNode.submit()
        }
   getLocation()
   };
initMapbox();



// var friends = document.querySelectorAll(".FriendConnection");
// var checkins = document.querySelectorAll(".Checkin");
// var batches = document.querySelectorAll(".Batch");
// var beers = document.querySelectorAll(".Beer");

// document.querySelectorAll(".only-friends").forEach((cmt) => {
//   cmt.addEventListener("click", (event) => {
//     console.log(friends)
//     friends.forEach(function(k){k.classList.remove("hidden")});
//     checkins.forEach(function(k){k.classList.add("hidden")});
//     batches.forEach(function(k){k.classList.add("hidden")});
//     beers.forEach(function(k){k.classList.add("hidden")});

//   });
// });

// document.querySelectorAll(".only-checkins").forEach((cmt) => {
//   cmt.addEventListener("click", (event) => {
//     console.log(friends)
//     friends.forEach(function(k){k.classList.add("hidden")});
//     checkins.forEach(function(k){k.classList.remove("hidden")});
//     batches.forEach(function(k){k.classList.add("hidden")});
//     beers.forEach(function(k){k.classList.add("hidden")});

//   });
// });

// document.querySelectorAll(".only-beers").forEach((cmt) => {
//   cmt.addEventListener("click", (event) => {
//     console.log(friends)
//     friends.forEach(function(k){k.classList.add("hidden")});
//     checkins.forEach(function(k){k.classList.add("hidden")});
//     batches.forEach(function(k){k.classList.remove("hidden")});
//     beers.forEach(function(k){k.classList.add("hidden")});

//   });
// });

// document.querySelectorAll(".only-batches").forEach((cmt) => {
//   cmt.addEventListener("click", (event) => {
//     console.log(friends)
//     friends.forEach(function(k){k.classList.add("hidden")});
//     checkins.forEach(function(k){k.classList.add("hidden")});
//     batches.forEach(function(k){k.classList.add("hidden")});
//     beers.forEach(function(k){k.classList.remove("hidden")});

//   });
// });
