new Splide("#splide_dashboard", {
  type: "loop",
  perPage: 1,
  autoplay: true,
}).mount();

new Splide("#splide_news", {
  type: "loop",
  perPage: 3,
  autoplay: true,
  breakpoints: {
    768: {
      perPage: 1,
    },
    1024: {
      perPage: 2,
    },
  },
}).mount();
