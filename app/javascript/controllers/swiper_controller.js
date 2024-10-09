import { Controller } from "@hotwired/stimulus"
import Swiper from 'swiper/bundle';
import 'swiper/swiper-bundle.min.css';

// Connects to data-controller="swiper"
export default class extends Controller {
  connect() {
    this.swiper = new Swiper(this.element, {
      slidesPerView: 1,
      spaceBetween: 10,
      loop: true,
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },

      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
      breakpoints: {
        640: {
          slidesPerView: 2,
          spaceBetween: 20,
        },
        768: {
          slidesPerView: 4,
          spaceBetween: 25,
        },
        1024: {
          slidesPerView: 5,
          spaceBetween: 30,
        },
      },
    });
  }

  disconnect() {
    this.swiper.destroy();
  }
}
