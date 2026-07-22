import styles from "@/styles/content.module.css";

const taskCount = 4;

export default function TaskPage() {
  return (
    <section className={styles.content}>
      <p className={styles.note}>
        직무소개 이미지는 원본 사이트에서 가져오지 않았습니다. 실제 이미지로
        교체해 주세요.
      </p>
      <div className={styles.placeholderGrid}>
        {Array.from({ length: taskCount }, (_, i) => (
          <div className={styles.placeholderTile} key={i}>
            TASK {String(i + 1).padStart(2, "0")}
          </div>
        ))}
      </div>
    </section>
  );
}
