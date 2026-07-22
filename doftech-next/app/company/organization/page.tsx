import Image from "next/image";
import styles from "@/styles/content.module.css";

export default function OrganizationPage() {
  return (
    <section className={styles.content}>
      <div className={styles.imageTile} style={{ aspectRatio: "16 / 9" }}>
        <Image
          src="/img/organization_new.png"
          alt="조직도"
          fill
          style={{ objectFit: "contain" }}
          sizes="100vw"
        />
      </div>
    </section>
  );
}
