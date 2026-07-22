import Image from "next/image";
import FeatureBlock from "@/components/FeatureBlock";
import contentStyles from "@/styles/content.module.css";
import styles from "./page.module.css";

const diagrams = [
  "/img/engineering_img_4.png",
  "/img/engineering_img_6.png",
  "/img/engineering_img_5.png",
];

const projectCounts = [
  { label: "PDS", value: 59 },
  { label: "PDMS", value: 9 },
  { label: "S3D", value: 8 },
  { label: "PDS to S3D", value: 1 },
];
const maxCount = Math.max(...projectCounts.map((p) => p.value));

export default function EngineeringPage() {
  return (
    <section className={contentStyles.content}>
      <FeatureBlock
        title="3D SUPPORT 형상 개발 (S3D · PDMS · PDS)"
        images={["/img/engineering_img_1.png"]}
        bullets={[
          "수행 프로젝트에 대한 3D Support Data를 체계적으로 분류 관리",
          "Support 형상을 프로세스에 맞게 자체 개발 하여 품질 및 전반적인 프로젝트 완성도 향상",
          "프로그래밍 기술이 필요한 3D admin 업무의 형상 개발 지원 라이브러리 구축",
        ]}
      />

      <FeatureBlock
        title="PDS to SP3D 변환 프로젝트 수행"
        images={["/img/engineering_img_0.png"]}
        bullets={[
          "KNPC(Kuwait National Petroleum Company)에서 발주한 Project에 대하여 SP3D 변환 용역 수행",
          "Support 형상을 프로세스에 맞게 자체 개발하여 품질 및 전반적인 프로젝트 완성도 향상",
        ]}
      />

      <div className={styles.projectSection}>
        <FeatureBlock
          title="3D CAD 프로젝트 수행 내역"
          bullets={[
            "Project Setup (Server / Network / 협력사 / 현장)",
            "Coordination (설계팀 / Material팀/ 협력사 / 사업주)",
            "Material Spec, V/P 등 RDB Update",
            "Interference Check 관리",
            "Instruction 및 Training",
            "G/A 도면 관리",
            "Product Issue 관리(도면,BM)",
            "협력사 원격 지원",
            "Backup 관리",
            "기타 운영 일체",
          ]}
          hideImage
        />
        <div className={styles.chartWrapper}>
          <div className={styles.chart}>
            {projectCounts.map((p) => (
              <div className={styles.bar} key={p.label}>
                <div
                  className={styles.barFill}
                  style={{ height: `${(p.value / maxCount) * 100}%` }}
                >
                  {p.value}
                </div>
                <span className={styles.barLabel}>{p.label}</span>
              </div>
            ))}
          </div>
          <p className={styles.chartTitle}>수행 프로젝트</p>
        </div>
      </div>

      <div className={styles.diagramRow}>
        {diagrams.map((src) => (
          <div className={styles.diagramFrame} key={src}>
            <Image src={src} alt="" fill style={{ objectFit: "contain" }} sizes="33vw" />
          </div>
        ))}
      </div>
    </section>
  );
}
