import Image from "next/image";
import styles from "./page.module.css";

const files = [
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

export default function PortfolioPage() {
  return (
    <section className={styles.content}>
      <div className={styles.grid}>
        {files.map((src) => (
          <div className={styles.logo} key={src}>
            <Image src={src} alt="" fill style={{ objectFit: "contain" }} sizes="25vw" />
          </div>
        ))}
      </div>
    </section>
  );
}
