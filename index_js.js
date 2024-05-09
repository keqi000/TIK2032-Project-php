// hamburger start
const NavbarNav = document.querySelector(".navbar-nav");
const hamburger = document.querySelector("#menu");

// ketika diklik
hamburger.onclick = (e) => {
  NavbarNav.classList.toggle("active");
  e.preventDefault();
};

// klik diluar untuk menghilangkan elemen
document.addEventListener("click", function (e) {
  if (!hamburger.contains(e.target) && !NavbarNav.contains(e.target)) {
    NavbarNav.classList.remove("active");
  }
});
// hamburger end

// slide foto start
const $nextButtons = document.querySelectorAll(".next");
const $prevButtons = document.querySelectorAll(".prev");
const $slide = document.querySelector(".slide");

$nextButtons.forEach(($next) => {
  $next.addEventListener("click", function (e) {
    e.stopPropagation(); // Stop the event from propagating to the document
    const items = document.querySelectorAll(".item");
    $slide.appendChild(items[0]);
  });
});

$prevButtons.forEach(($prev) => {
  $prev.addEventListener("click", function (e) {
    e.stopPropagation(); // Stop the event from propagating to the document
    const items = document.querySelectorAll(".item");
    $slide.prepend(items[items.length - 1]);
  });
});
// slide foto end

// alert untuk kontak

document.addEventListener("DOMContentLoaded", function () {
  // Menangani event submit pada formulir
  document
    .getElementById("myForm")
    .addEventListener("submit", function (event) {
      event.preventDefault(); // Mencegah pengiriman formulir secara default
      alert("Kontak anda sudah terkirim!");
    });
});

// alert untuk kontak end
