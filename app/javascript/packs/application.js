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
   }
initMapbox();
