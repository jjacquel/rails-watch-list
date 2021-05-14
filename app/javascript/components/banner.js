import Typed from "typed.js";

const loadDynamicBannerText = () => {
  new Typed("#banner-typed-text", {
    strings: [
      "Superhero",
      "Cartoon",
      "Drama",
      "Comedy",
      "Thriller",
      "Experimental",
    ],
    typeSpeed: 50,
    loop: true,
  });
};

export { loadDynamicBannerText };
