import { Controller } from "@hotwired/stimulus";
import Swiper from 'swiper';
import 'swiper/swiper-bundle.min.css';

// Conectar Swiper con Stimulus
export default class extends Controller {
  connect() {
    console.log("Swiper is initializing...");

    new Swiper('.swiper-container', {
      slidesPerView: 1,          // Puedes ajustar esto para mostrar más slides a la vez
      spaceBetween: 30,          // Espacio entre las tarjetas
      loop: true,                // Desplazamiento infinito
      grabCursor: true,          // Muestra un cursor "de agarre"
      speed: 600,                // Velocidad de la transición (600ms)
      pagination: {              // Agrega paginación (puntos de navegación)
        el: '.swiper-pagination',
        clickable: true,
      },
      navigation: {              // Agrega botones de navegación
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
    });
  }
}
