"use client";

import { useEffect, useRef, useState } from "react";
import Image from "next/image";
import styles from "./TrustBar.module.css";

const stats = [
  { value: 6, unit: "건", label: "보유 특허" },
  { value: 77, unit: "개", label: "누적 수행 프로젝트" },
  { value: 26, unit: "년", label: "플랜트 IT 업력 (2000년 설립)" },
];

const logoFiles = [
  "16",
  "00",
  "01",
  "02",
  "03",
  "04",
  "05",
  "06",
  "07",
  "08",
  "09",
  "10",
  "11",
  "12",
  "13",
  "14",
  "17",
].map((n) => `/img/portfolio_img_${n}_ko.png`);

function useCountUp(target: number, active: boolean) {
  const [value, setValue] = useState(0);

  useEffect(() => {
    if (!active) return;
    const duration = 900;
    const start = performance.now();

    function tick(now: number) {
      const progress = Math.min((now - start) / duration, 1);
      const eased = 1 - Math.pow(1 - progress, 3);
      setValue(Math.round(target * eased));
      if (progress < 1) requestAnimationFrame(tick);
    }

    const frame = requestAnimationFrame(tick);
    return () => cancelAnimationFrame(frame);
  }, [active, target]);

  return value;
}

function Stat({ value, unit, label }: { value: number; unit: string; label: string }) {
  const ref = useRef<HTMLDivElement>(null);
  const [active, setActive] = useState(false);

  useEffect(() => {
    const el = ref.current;
    if (!el) return;
    const observer = new IntersectionObserver(
      ([entry]) => {
        if (entry.isIntersecting) {
          setActive(true);
          observer.disconnect();
        }
      },
      { threshold: 0.4 },
    );
    observer.observe(el);
    return () => observer.disconnect();
  }, []);

  const count = useCountUp(value, active);

  return (
    <div className={styles.stat} ref={ref}>
      <span className={styles.statNumber}>
        {count}
        <span className={styles.statUnit}>{unit}</span>
      </span>
      <p className={styles.statLabel}>{label}</p>
    </div>
  );
}

export default function TrustBar() {
  return (
    <div className={styles.wrapper}>
      <div className={styles.inner}>
        <div className={styles.stats}>
          {stats.map((s) => (
            <Stat key={s.label} {...s} />
          ))}
        </div>
        <div className={styles.logoRow}>
          {logoFiles.map((src) => (
            <div className={styles.logo} key={src}>
              <Image src={src} alt="" fill style={{ objectFit: "contain", padding: 8 }} sizes="120px" />
            </div>
          ))}
        </div>
      </div>
    </div>
  );
}
