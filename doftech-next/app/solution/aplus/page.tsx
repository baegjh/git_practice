import FeatureBlock from "@/components/FeatureBlock";
import styles from "@/styles/content.module.css";

export default function AplusPage() {
  return (
    <section className={styles.content}>
      <FeatureBlock
        title="주요기능"
        desc="배관 자동 경로 배치 솔루션 (Auto Pipe Layout with US)"
        bullets={[
          <>
            <b>Intelligent P&ID(ID2)</b>와의 연계를 통해{" "}
            <b>Auto Routing을 위한 기본 정보 생성</b> 가능하도록 설계
          </>,
          <>
            <b>AI 기반 및 Rule 관리</b>를 통한 최적의 <b>Routing Path</b> 설정
            가능하도록 설계
          </>,
          "비용을 고려하여 최적의 라우팅을 위한 라인 우선 순위 설정",
          "Pump, Filter, Heat Exchanger에 대해 Special Pattern 적용",
          "Geometry (3D 화면)을 통해 배관 Line을 수정하는 기능 제공",
          "WBS별 배관 물량 산출",
          "Case별 물량 비교 결과 리포트 생성",
          "APLUS 3D 모델을 Autodesk Navisworks로 변환",
          "APLUS 3D 모델을 Hexagon S3D / AVEVA E3D로 변환",
          "라우팅 결과(Success, Clash, Warning, Fail)를 원본 P&ID에 Markup",
        ]}
      />
    </section>
  );
}
