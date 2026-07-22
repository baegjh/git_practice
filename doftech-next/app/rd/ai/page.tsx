import FeatureBlock from "@/components/FeatureBlock";
import styles from "@/styles/content.module.css";

export default function AiPage() {
  return (
    <section className={styles.content}>
      <FeatureBlock
        title="연구 방향"
        desc="인공지능을 이용한 형상 · 비형상 설계정보 인식 기술 개발"
        images={["/img/ai_img_0.png"]}
        bullets={[
          "설계 형상 정보 인식을 위한 기계 학습",
          "Auto CAD와의 연계성",
          "최적의 인식율 알고리즘 발굴",
          "Legend에 의한 형상 인식 학습",
          "다양한 해상도의 도면 인식 결과 보정 기술",
          "오인식 결과에 대한 보정 학습",
          "데이터 분석 툴 구현 및 분석 툴을 활용한 학습 데이터 생성",
          "AI 전용 학습 관리 및 학습 모델 배포 관리",
        ]}
      />
    </section>
  );
}
