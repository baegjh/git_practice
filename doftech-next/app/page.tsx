import Link from "next/link";
import Hero from "@/components/Hero";
import styles from "./page.module.css";

const banners = [
  {
    href: "#",
    title: "AI SOLUTION PACKAGE",
    desc: "Engineering IT 관련 AI Solution Package",
    gradient: "linear-gradient(135deg, #044c8b, #1c7fc9)",
  },
  {
    href: "#",
    title: "SERVICE",
    desc: "SI Service, Plant & Engineering IT",
    gradient: "linear-gradient(135deg, #333333, #666666)",
  },
  {
    href: "#",
    title: "R&D",
    desc: "R&D Technology",
    gradient: "linear-gradient(135deg, #0a3d24, #1e8a5c)",
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
              <div
                className={styles.cardImage}
                style={{ background: banner.gradient }}
              />
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
