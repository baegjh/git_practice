"use client";

import Link from "next/link";
import { Swiper, SwiperSlide } from "swiper/react";
import { Autoplay, EffectFade } from "swiper/modules";
import "swiper/css";
import "swiper/css/effect-fade";
import styles from "./Hero.module.css";

const backgrounds = [
  "/img/swiper_img_0.jpg",
  "/img/swiper_img_1.jpg",
  "/img/swiper_img_2.jpg",
];

export default function Hero() {
  return (
    <div className={styles.hero}>
      <Swiper
        modules={[Autoplay, EffectFade]}
        effect="fade"
        speed={1200}
        autoplay={{ delay: 4500, disableOnInteraction: false }}
        loop
        className={styles.swiper}
      >
        {backgrounds.map((bg) => (
          <SwiperSlide key={bg}>
            <div className={styles.slide} style={{ backgroundImage: `url(${bg})` }} />
          </SwiperSlide>
        ))}
      </Swiper>

      <div className={styles.overlay} />

      <div className={styles.content}>
        <span className={styles.eyebrow}>PLANT &amp; ENGINEERING IT</span>
        <h1 className={styles.headline}>
          플랜트 엔지니어링을 위한
          <br />
          AI 자동화 솔루션
        </h1>
        <p className={styles.desc}>
          도면 인식부터 자동 라우팅, 3D 모델링까지 — 도프텍이 만듭니다.
        </p>
        <div className={styles.ctas}>
          <Link href="/solution/aplus" className={styles.primaryCta}>
            솔루션 살펴보기
          </Link>
          <Link href="/company/location" className={styles.secondaryCta}>
            문의하기
          </Link>
        </div>
      </div>
    </div>
  );
}
