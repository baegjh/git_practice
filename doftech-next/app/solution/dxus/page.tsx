import FeatureBlock from "@/components/FeatureBlock";
import styles from "@/styles/content.module.css";

export default function DxusPage() {
  return (
    <section className={styles.content}>
      <FeatureBlock
        title="주요기능"
        desc="Document Digital Transformation Tool"
        images={["/img/dxus_img_0.png"]}
        bullets={[
          {
            label: "AI 기반 데이터 추출",
            lines: [
              "선택한 파일과 매칭되는 Template 추천, 시스템 자동 선택 기능",
              "맵핑 데이터에 따라 데이터 추출",
              "이전 데이터 삭제 유무 선택 기능",
            ],
          },
          {
            label: "테이블 추출",
            lines: [
              "개별 Property, Value를 별도의 선택 없이 한번에 추출",
              "테이블 방향 선택 > 영역 설정 > 추출",
            ],
          },
          {
            label: "다양한 File 형태 지원",
            lines: [
              "Input 파일의 형식에 따른 추출 Template 생성 기능",
              "PDF(Converted, Scanned), AutoCAD, Excel",
              "Property, Value, Unit 영역 맵핑 기능",
              "Data 유형별(Property, Value, Unit)로 별도 색 부여 기능",
            ],
          },
          {
            label: "추출 Data Validation",
            lines: [
              "추출된 데이터의 위치 확인 및 데이터 비교 및 수정",
              "Image와 추출된 Text 확인후 Text 변경",
              "추출된 속성 Table에서 Value값 구분",
            ],
          },
        ]}
      />
    </section>
  );
}
