// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"


function initMap() {
    const KC = { lat: 39.1201, lng: -94.5798 };
    const infoWindow = new google.maps.InfoWindow();
    const map = new google.maps.Map(document.getElementById("map"), {
        zoom: 4,
        center: KC,
    });
    window.map = map
    window.infoWindow = infoWindow
}

function addMarkers(schools){

    schools.map((school) => {
        let marker = new google.maps.Marker({
            position: { lat: school["location.lat"], lng: school["location.lon"] },
            title: school["school.name"],
            map: map,
        });
        marker.addListener("click", () => {
            infoWindow.close();
            infoWindow.setContent(marker.getTitle());
            infoWindow.open(marker.getMap(), marker);
        });
    })
}


window.addMarkers = addMarkers
window.initMap = initMap;
