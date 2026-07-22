import Image from "next/image";
import styles from "./SectionVisual.module.css";

export default function SectionVisual({ src }: { src: string }) {
  return (
    <div className={styles.visual}>
      <Image src={src} alt="" fill style={{ objectFit: "cover" }} priority />
    </div>
  );
}
