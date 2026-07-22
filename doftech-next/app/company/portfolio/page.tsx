import styles from "./page.module.css";

const clientCount = 17;

export default function PortfolioPage() {
  return (
    <section className={styles.content}>
      <p className={styles.note}>
        고객사 로고 이미지는 원본 사이트에서 가져오지 않았습니다. 실제
        로고 파일로 교체해 주세요.
      </p>
      <div className={styles.grid}>
        {Array.from({ length: clientCount }, (_, i) => (
          <div className={styles.logo} key={i}>
            CLIENT {String(i + 1).padStart(2, "0")}
          </div>
        ))}
      </div>
    </section>
  );
}
