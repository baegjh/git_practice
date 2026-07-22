import FeatureBlock from "@/components/FeatureBlock";
import styles from "@/styles/content.module.css";

export default function CommentUsPage() {
  return (
    <section className={styles.content}>
      <FeatureBlock
        title="주요기능"
        desc="3D Model Review Comment Tool"
        images={["/img/commentus_img_0.png"]}
        bullets={[
          <>
            Comment의 효율적 관리 및 부서간 반영 현황 공유 및 검색, Snapshot,
            Report 등 다양한 기능을 제공하여 업무 효율 증대 및 사용자 오류를
            최소화
          </>,
          "발주처 설계변경 요청사항 통합 관리",
          "코멘트관리 시스템화를 통해 엑셀 기반 코멘트 관리에 소요되는 M/H 낭비 최소화",
          "설계데이터의 Single Input Multiple Output 적용으로 리뷰 환경 제공",
          "유관 공종 및 작업자 업무 status cross checking등 효율적인 업무 협업 지원",
          "SPR/Navisworks 연동 및 Tag 생성",
          "Snapshot 이미지 수정",
          "Comment 변경 이력 관리",
          "프로젝트별 다양한 양식의 Report 작성 및 Comment History 확인",
          "3D Model 이미지 Capture 및 Mark-up (Comment 전/후 비교)",
          "Report 미리 보기 기능 최소화 및 Paper 소모 최소화",
        ]}
      />
    </section>
  );
}
