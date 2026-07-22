import FeatureBlock from "@/components/FeatureBlock";
import styles from "@/styles/content.module.css";

export default function MarkusPage() {
  return (
    <section className={styles.content}>
      <FeatureBlock
        title="주요기능"
        desc="이미지 comment를 기본으로 검토자 별 Comment Overlay, Rev.별 비교 조회, Auto CAD로의 저장 등의 기능 제공"
        images={["/img/markus_img_0.png"]}
        bullets={[
          {
            label: "사용자 편의성",
            lines: [
              "Color에 의한 User별 Comment 구분",
              "이전 문서와 비교가능 (달라진 부분 클라우드 마크)",
              "즐겨찾기 기능 (thumb nail, comment, Page)",
              "자주 사용하는 Symbol 등록 관리",
              "검토자별 Comment Navigation 및 Comment Status 관리 기능",
            ],
          },
          {
            label: "Auto CAD와의 연계성",
            lines: ["Comment 사항을 Auto CAD 파일에 저장"],
          },
          {
            label: "의사소통 및 Check 사항 관리",
            lines: [
              "검토자간 Communication을 위한 메신저 기능(M-talk)",
              "검토자의 중요 점검 사항을 기록하고 진행 사항을 관리하는 Comment Manager 기능",
            ],
          },
        ]}
      />
    </section>
  );
}
