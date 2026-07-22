import styles from "@/styles/content.module.css";

const benefitCount = 12;

export default function BenefitPage() {
  return (
    <section className={styles.content}>
      <p className={styles.note}>
        교육·복리후생 안내 이미지는 원본 사이트에서 가져오지 않았습니다.
        실제 이미지로 교체해 주세요.
      </p>
      <div className={styles.placeholderGrid}>
        {Array.from({ length: benefitCount }, (_, i) => (
          <div className={styles.placeholderTile} key={i}>
            BENEFIT {String(i + 1).padStart(2, "0")}
          </div>
        ))}
      </div>
    </section>
  );
}
