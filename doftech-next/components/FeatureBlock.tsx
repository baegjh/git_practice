import type { ReactNode } from "react";
import styles from "./FeatureBlock.module.css";

export type FeatureBullet =
  | ReactNode
  | { label: ReactNode; lines: ReactNode[] };

function isLabeled(
  bullet: FeatureBullet,
): bullet is { label: ReactNode; lines: ReactNode[] } {
  return (
    typeof bullet === "object" &&
    bullet !== null &&
    !Array.isArray(bullet) &&
    "label" in bullet &&
    "lines" in bullet
  );
}

export default function FeatureBlock({
  id,
  title,
  desc,
  bullets,
  imageLabel = "이미지 준비중",
  hideImage = false,
}: {
  id?: string;
  title?: string;
  desc?: ReactNode;
  bullets: FeatureBullet[];
  imageLabel?: string;
  hideImage?: boolean;
}) {
  return (
    <div
      className={`${styles.block} ${hideImage ? styles.single : ""}`}
      id={id}
    >
      {!hideImage && <div className={styles.image}>{imageLabel}</div>}
      <div>
        {title && (
          <div className={styles.titleWrapper}>
            <p className={styles.title}>{title}</p>
            {desc && <p className={styles.desc}>{desc}</p>}
          </div>
        )}
        <ul className={styles.bullets}>
          {bullets.map((bullet, i) =>
            isLabeled(bullet) ? (
              <li key={i}>
                <b>{bullet.label}</b>
                {bullet.lines.map((line, j) => (
                  <p key={j}>{line}</p>
                ))}
              </li>
            ) : (
              <li key={i}>{bullet}</li>
            ),
          )}
        </ul>
      </div>
    </div>
  );
}
