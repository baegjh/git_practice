import FeatureBlock from "@/components/FeatureBlock";
import styles from "@/styles/content.module.css";

export default function Id2Page() {
  return (
    <section className={styles.content}>
      <FeatureBlock
        title="주요기능"
        desc="이미지 도면을 인식하여 설계정보의 디지털화 및 Intelligent P&ID로 변환"
        images={["/img/id2_img_0.png", "/img/id2_img_1.png", "/img/id2_img_2.png"]}
        bullets={[
          "AI 등의 4차산업 기술을 적용한 도면 정보 인식 및 추출",
          "설계정보와의 연계를 통한 도면 디지탈화",
          "다양한 인식결과 Validation 및 보정 Utility",
          {
            label: "다양한 Reporting 기능",
            lines: ["Line list, Equipment list, Instrument list, Valve list, Note list, BOM등"],
          },
          "Hexagon SP P&ID 및 AVEVA P&ID 등의 Intelligent P&ID 로의 자동 전환",
          {
            label: "Tag 자동 추출 기능",
            lines: ["Line No.", "Equipment No.", "Valve No.", "Instrument No."],
          },
        ]}
      />
    </section>
  );
}
