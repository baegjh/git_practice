import styles from "@/styles/content.module.css";

export default function OrganizationPage() {
  return (
    <section className={styles.content}>
      <p className={styles.note}>
        조직도 이미지는 원본 사이트에서 가져오지 않았습니다. 실제 조직도로
        교체해 주세요.
      </p>
      <div className={styles.placeholderTile} style={{ aspectRatio: "16 / 9" }}>
        조직도
      </div>
    </section>
  );
}
