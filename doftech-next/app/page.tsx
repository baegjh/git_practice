import Image from "next/image";
import Link from "next/link";
import Hero from "@/components/Hero";
import styles from "./page.module.css";

const banners = [
  {
    href: "/solution/aplus",
    title: "AI SOLUTION PACKAGE",
    desc: "Engineering IT 관련 AI Solution Package",
    image: "/img/default_banner_0.png",
  },
  {
    href: "/service/si",
    title: "SERVICE",
    desc: "SI Service, Plant & Engineering IT",
    image: "/img/default_banner_1.png",
  },
  {
    href: "/rd/feed",
    title: "R&D",
    desc: "R&D Technology",
    image: "/img/default_banner_2.png",
  },
];

export default function Home() {
  return (
    <>
      <Hero />
      <section className={styles.content}>
        <h2 className="blind">도프텍 주요 메뉴</h2>
        <div className={styles.grid}>
          {banners.map((banner) => (
            <Link href={banner.href} key={banner.title} className={styles.card}>
              <div className={styles.cardImage}>
                <Image
                  src={banner.image}
                  alt=""
                  fill
                  style={{ objectFit: "cover" }}
                  sizes="(max-width: 900px) 100vw, 33vw"
                />
              </div>
              <div className={styles.cardText}>
                <span className={styles.cardTitle}>{banner.title}</span>
                <span className={styles.cardDesc}>{banner.desc}</span>
              </div>
            </Link>
          ))}
        </div>
      </section>
    </>
  );
}
