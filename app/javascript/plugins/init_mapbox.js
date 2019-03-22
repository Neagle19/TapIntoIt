/*import mapboxgl from 'mapbox-gl'; */
const initMapbox = () => {
  const mapElement = document.getElementById('map');
  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10',
      center: [50.846689, 4.353452],
      zoom: 10
    });
    const markers = JSON.parse(mapElement.dataset.markers);

    markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow)
   new mapboxgl.Marker()
    .setLngLat([marker.lng, marker.lat])
    .setPopup(popup)
    .addTo(map);

  });


  }

};

export { initMapbox };

