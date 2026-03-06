let player = null;
let currentVolume = 50;

window.addEventListener("message", function(e) {
    const data = e.data;

    if (data.action === "open") {
        document.getElementById("menu").style.display = "block";
        document.getElementById("volume").value = currentVolume;
    }
});

function play() {
    console.log("Play pressed");
}

function stop() {
    console.log("Stop pressed");
}

function closeMenu() {
    document.getElementById("menu").style.display = "none";
    fetch(`https://${GetParentResourceName()}/close`, { method: "POST" });
}

document.getElementById("volume").addEventListener("input", function() {
    currentVolume = parseInt(this.value);
});

document.addEventListener("keydown", function(e) {
    if (e.key === "Escape") {
        closeMenu();
    }
});