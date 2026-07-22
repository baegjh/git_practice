import Image from "next/image";
import styles from "@/styles/content.module.css";

const files = Array.from(
  { length: 12 },
  (_, i) => `/img/benefit_img_${String(i).padStart(2, "0")}.png`,
);

export default function BenefitPage() {
  return (
    <section className={styles.content}>
      <div className={styles.placeholderGrid}>
        {files.map((src) => (
          <div className={styles.imageTile} key={src}>
            <Image src={src} alt="" fill style={{ objectFit: "cover" }} sizes="25vw" />
          </div>
        ))}
      </div>
    </section>
  );
}
