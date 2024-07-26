const base_settings = {
  type: "loop",
  autoplay: true,
  arrows: false,
};

new Splide("#splide_dashboard", { ...base_settings, perPage: 1 }).mount();

new Splide("#splide_news", {
  ...base_settings,
  perPage: 3,
  breakpoints: {
    768: {
      perPage: 1,
    },
    1024: {
      perPage: 2,
    },
  },
}).mount();
