//
//  app.js
//  ArdentOakLanding
//
//  Created by Tensae on 30/04/2026.
//

const AGE_GATE_KEY = "ardent-oak-age-verified";

const stockists = [
    {name: 'Black Pine Bottle House - London', lat: 51.5074,lng: -0.1278},
    {name: 'Oak & Ether Fine Spirits - Edinburgh', lat: 55.9533, lng: -3.1883},
    {name: 'The Glass Ledger - Bristol', lat: 51.4545, lng: -2.5879}
];

function hideAgeGate() {
    const gate = document.getElementById('age-gate');
    if (!gate) return;
    gate.classList.add('is-hidden');
    document.body.classList.remove('gate-open');
    
}

function setupAgeGate() {
    const gate = document.getElementById('age-gate');
    const enterButton = document.getElementById('age-yes')
    const leaveLink = document.getElementById('age-no');
    if(!gate || !enterButton || !leaveLink) return;

    if(window.localStorage.getItem(AGE_GATE_KEY) === "true") {
        hideAgeGate();
        return;
    }

    document.body.classList.add('gate-open');

    enterButton.addEventListener('click', () => {
        window.localStorage.setItem(AGE_GATE_KEY, "true");
        hideAgeGate();
    });
}

function setupTastingNotes() {
    const notes = Array.from(document.querySelectorAll('.tasting-note'));
    if(notes.length === 0) return;

    notes.forEach((note, index) => {
        note.addEventListener("click", () => {
            notes.forEach(n => n.classList.remove("is-active"));
            note.classList.add("is-active");
        });

        if(index === 0) {
            note.classList.add("is-active");
        }
    });
}

function setupMap() {

    const mapContainer = document.getElementById("map");
    if(!mapContainer || typeof L === "undefined") return;

    const map = L.map("map", {scrollWheelZoom: false}).setView([53.48, -2.4], 6);
    L.tileLayer("https://tile.openstreetmap.org/{z}/{x}/{y}.png", {
        maxZoom: 18,
        attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);

    stockists.forEach(stockist => {
        L.marker([stockist.lat, stockist.lng])
        .addTo(map)
        .bindPopup(`<strong>${stockist.name}</strong>`)
    });
}

window.addEventListener("DOMContentLoaded", () => {
    setupAgeGate();
    setupTastingNotes();
    setupMap();
});