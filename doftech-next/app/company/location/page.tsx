"use client";

import { useState } from "react";
import styles from "./page.module.css";

const offices = [
  {
    title: "본사",
    address: "서울특별시 중구 통일로 86, 바비엥3주상복합, 401호",
    tel: "02) 6354-9985",
    fax: "02) 6733-1060",
    mapSrc:
      "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3162.660825533235!2d126.96735111577465!3d37.563054079798555!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c989726b1b689%3A0x54d6230d62dfbd01!2z64-E7ZSE7YWNKOyjvCk!5e0!3m2!1sko!2skr!4v1612458140390!5m2!1sko!2skr",
  },
  {
    title: "마곡 사무소",
    address: "서울특별시 강서구 마곡중앙로 111, 롯데캐슬 르웨스트 102동 223호",
    tel: "02) 6354-9985",
    fax: "02) 6733-1060",
    mapSrc:
      "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2659.4429792032493!2d126.8216032680587!3d37.56381522936361!2m3!1f0!2f0!3f0!3m2!1s0x357c9df716f81ee3%3A0x5cf70440f593cedc!2z66eI6rOh66Gv642w7LqQ7Iqs66W07Juo7Iqk7Yq4!5e0!3m2!1sko!2skr!4v1769498062862!5m2!1sko!2skr",
  },
];

export default function LocationPage() {
  const [active, setActive] = useState(0);
  const office = offices[active];

  return (
    <section className={styles.content}>
      <iframe
        key={office.title}
        className={styles.map}
        src={office.mapSrc}
        loading="lazy"
        referrerPolicy="no-referrer-when-downgrade"
        title={office.title}
      />

      <div className={styles.tabs} role="group">
        {offices.map((o, i) => (
          <button
            key={o.title}
            type="button"
            className={`${styles.tab} ${i === active ? styles.active : ""}`}
            onClick={() => setActive(i)}
          >
            {o.title}
          </button>
        ))}
      </div>

      <div className={styles.info}>
        <address>{office.address}</address>
        <div>
          <span>Tel. {office.tel}</span>
          <span>Fax. {office.fax}</span>
        </div>
      </div>
    </section>
  );
}
