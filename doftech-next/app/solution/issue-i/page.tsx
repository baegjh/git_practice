import FeatureBlock from "@/components/FeatureBlock";
import styles from "@/styles/content.module.css";

export default function IssueIPage() {
  return (
    <section className={styles.content}>
      <FeatureBlock
        title="주요기능"
        desc={
          <>
            배관 ISO 도면을 이슈 하기 위한 관리 프로그램 (PDS, PDMS, SP3D)
            <br />
            AutoCAD 2D, MicroStation 도면 자체로부터 BOM 산출 및 Graphic과
            BOM Consistency check
          </>
        }
        images={["/img/issuei_img_0.png"]}
        bullets={[
          "3D MODEL과 연계하여 데이터 관리",
          "BOM 파일 생성 자동화",
          {
            label: "ISO DRAWING의 Q/C 자동화",
            lines: ["설계 M/H 단축, 에러 방지"],
          },
          "LINE DATA 변경 사항에 대한 신속한 반영",
          "DRAWING INDEX 작성",
          "BATCH PLOTTING 기능 제공",
          "Utilities",
        ]}
      />
    </section>
  );
}
