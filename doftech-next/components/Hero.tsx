"use client";

import { Swiper, SwiperSlide } from "swiper/react";
import { Autoplay, EffectFade, Pagination, Navigation } from "swiper/modules";
import "swiper/css";
import "swiper/css/effect-fade";
import "swiper/css/pagination";
import "swiper/css/navigation";
import styles from "./Hero.module.css";

const slides = [
  { light: true },
  { light: false },
  { light: true },
];

export default function Hero() {
  return (
    <div className={styles.hero}>
      <Swiper
        modules={[Autoplay, EffectFade, Pagination, Navigation]}
        effect="fade"
        speed={1000}
        autoplay={{ delay: 3500, disableOnInteraction: false }}
        pagination={{ clickable: true }}
        navigation
        loop
      >
        {slides.map((slide, i) => (
          <SwiperSlide key={i}>
            <div className={`${styles.slide} ${slide.light ? styles.light : ""}`}>
              <div className={styles.sloganWrapper}>
                <span className={styles.title}>NEEDS</span>
                <span className={styles.line} />
                <p className={styles.desc}>
                  고객의 <b>NEEDS</b>에 <b>최적화</b>된
                  <br />
                  AI 기반 Solution &amp; Service를 제공합니다.
                </p>
              </div>
            </div>
          </SwiperSlide>
        ))}
      </Swiper>
    </div>
  );
}
