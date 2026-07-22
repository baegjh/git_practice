import FeatureBlock from "@/components/FeatureBlock";
import styles from "@/styles/content.module.css";

export default function FeedPage() {
  return (
    <section className={styles.content}>
      <FeatureBlock
        title="주요기능"
        desc="클라우드 기반 기본설계 및 FEED 업무 자동화 지원 시스템"
        images={["/img/feed_img_0.png"]}
        bullets={[
          {
            label: "주요 FEED 업무(공정) 지원 Module",
            lines: [
              "Image P&ID 도면 인식 → 데이터화",
              "SP P&ID, AVEVA P&ID 로 Conversion",
              "Hydraulic Calculation, H&MB 관리",
              "Datasheet, List 류 Interface (Export)",
              "Revision History Tracking",
            ],
          },
          {
            label: "Auto Routing Module (FEED 수준)",
            lines: [
              "설계 적용: 배관 상세 설계 (FEED 수준)",
              "3D Model, 자재 산출",
              "VR/MR 적용 예정",
              "EPC 수준으로 Upgrade 예정",
            ],
          },
          {
            label: "Cost Estimation Module (Class 3 기준)",
            lines: ["Engineering Economic 분석"],
          },
        ]}
      />
    </section>
  );
}
