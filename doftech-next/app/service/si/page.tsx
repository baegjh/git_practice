import Link from "next/link";
import FeatureBlock from "@/components/FeatureBlock";
import contentStyles from "@/styles/content.module.css";
import styles from "./page.module.css";

const jumps = [
  { id: "sec_cars", title: "CARS", desc: "Cable 자동배치 솔루션" },
  {
    id: "sec_elas",
    title: "Equipment Layout Automation System",
    desc: "기기 자동배치 솔루션",
  },
  {
    id: "sec_stmas",
    title: "S3D Static Modeling Automation System",
    desc: "S3D Equipment Modeling 자동화",
  },
  {
    id: "sec_romas",
    title: "Rotating Equipment Modeling Automation System",
    desc: "S3D Parametric Modeling 자동화",
  },
  { id: "sec_sppid", title: "SPPID Auto Check", desc: "SP P&ID 자동 품질관리 시스템" },
  {
    id: "sec_eq",
    title: "S3D 비정형 EQ. Foundation 자동 모델링 개발",
    desc: "비정형 구조물 S3D 자동 Modeling 시스템",
  },
  { id: "sec_edb", title: "EDB", desc: "엑셀 데이터 DB화 및 타 시스템 연동" },
  { id: "sec_issueR", title: "ISSUE–R", desc: "ISO Drawing Revision 관리 시스템" },
  { id: "sec_eload", title: "E-LOAD", desc: "Electrical Load 관련 Data 통합 관리" },
  { id: "sec_psjg", title: "PSJG", desc: "플랜트 현장 종합 관리 시스템" },
];

export default function SiPage() {
  return (
    <section className={contentStyles.content}>
      <div className={styles.jumpGrid}>
        {jumps.map((j) => (
          <Link key={j.id} href={`#${j.id}`} className={styles.jumpItem}>
            <span className={styles.jumpTitle}>{j.title}</span>
            <span className={styles.jumpDesc}>{j.desc}</span>
          </Link>
        ))}
      </div>

      <FeatureBlock
        id="sec_cars"
        title="CARS"
        desc="Cable 자동배치 솔루션"
        bullets={[
          {
            label: "S3D Data & Cable Schedule Import",
            lines: [
              "형상 정보 (Equipment, Structure 등)",
              "Tray routing 정보 (Cable Tray / Cableway 등)",
              "정형화된 Cable Schedule Import (전기/계장)",
              "Cable Schedule Revision 데이터 관리",
            ],
          },
          {
            label: "Cable Tray Auto Connection & Cable Auto Routing",
            lines: [
              "상세 조건 별 Cable Tray Auto Connection 구현",
              "최단 거리 최적화 Logic 구현",
              "Routing 시 특정 Tray 경유 필수 / 회피 기능",
            ],
          },
          {
            label: "Tray Fill Ratio Check",
            lines: ["개별 Tray 별 Fill Ratio Check & Report 하여 Cable 3D Modeling 최적화"],
          },
          {
            label: "Report & Output",
            lines: [
              "Cable Length 를 산출하여 Cable Schedule Update 및 Report 생성 (Excel Export)",
              "완료된 Cable을 S3D 에 자동 Modeling",
            ],
          },
        ]}
      />

      <FeatureBlock
        id="sec_elas"
        title="Equipment Layout Automation System"
        desc="기기 자동배치 솔루션"
        bullets={[
          {
            label: "기기배치에 필요한 데이터 입력 및 편의 기능 제공",
            lines: [
              "Process Data (PFD) Input 및 From / To 데이터 생성",
              "AutoCAD Data Input (On/Off PlotPlan)",
              "Constraint 정보 입력 (Battery Limit, Special Spacing등)",
            ],
          },
          {
            label: "GD 데이터를 활용한 Design Data 자동 생성",
            lines: ["GD (Generative Design)평가 분포도", "Export to 2D Review"],
          },
          {
            label: "Case별 2D, 3D Review 기능",
            lines: ["기기별 Information 확인", "기기 XY이동 및 Elevation 변경"],
          },
          { label: "Revision 및 Symbol 관리 기능", lines: ["이전 버전 Case와 비교"] },
          {
            label: "AR 연계 기능",
            lines: ["Export to AR, DWG", "AR 비교 Table 제공"],
          },
        ]}
      />

      <FeatureBlock
        id="sec_stmas"
        title="S3D Static Modeling Automation System"
        desc="Compress data를 연계하여 S3D Equipment Modeling 자동화"
        bullets={[
          {
            label: "GUI",
            lines: [
              "시스템을 통해 생성된 3D Model Data Loading",
              "Position 지정",
              "System Hierarchy 지정",
              "Attachment Item (Lifting Lug, Trunnion, …)",
              "User가 설정한 Unit으로 변환 (Pressure, Temperature, Weight, Distance, …)",
            ],
          },
          {
            label: "환경 설정",
            lines: ["Import Compress xml", "시스템 Catalog Symbol 구축"],
          },
          {
            label: "Report",
            lines: ["data를 통한 S3D Modeling 자동 생성", "간섭 체크 및 물량 산출 가능"],
          },
        ]}
      />

      <FeatureBlock
        id="sec_romas"
        title="Rotating Equipment Modeling Automation System"
        desc="기기 정보를 관리하고 S3D에서 이를 활용한 Parametric Modeling 자동화"
        bullets={[
          { label: "S3D Equipment Catalog 표준화", lines: [] },
          {
            label: "Excel Import/ Export 기능",
            lines: ["대량의 Model Dimension (Parameter)값을 일괄 입력/Update 기능 제공"],
          },
          {
            label: "Load Equipment 기능",
            lines: ["ECS Equip. List DB와 연계하여 정확한 기기 List와 모델링 status를 관리"],
          },
          {
            label: "Search reference Data",
            lines: [
              "시스템 전체 DB에서 기기 Type별 Design spec을 검색하여 유사 기기를 조회하고, 현 Project에 모델링 재사용",
            ],
          },
          {
            label: "Dimension Preview",
            lines: [
              "정확한 Parameter값을 입력하고, 확인하기 위한 Preview 기능 제공",
              "Type 별로 Hierarchy를 구성하여 검색 용이",
            ],
          },
          {
            label: "History of Equipment Data 기능",
            lines: ["현재 ECS의 데이터의 이전 값을 비교하여 Update 내용을 확인 또는 재사용"],
          },
          {
            label: "Create/ Update",
            lines: ["기입한 Dimension 값을 이용한 Modeling Automation 구현"],
          },
        ]}
      />

      <FeatureBlock
        id="sec_sppid"
        title="SPPID Auto Check"
        desc="HEXAGON SP P&ID 자동 품질관리 시스템 (오류 감소 및 잘못된 프로세스 엔지니어링 설계 감지)"
        bullets={[
          { label: "환경 설정", lines: ["SPPID 연계하여 장치 및 파이프 속성 설정"] },
          {
            label: "P&ID 설계 규칙 또는 매뉴얼별 P&ID Dwg 자동 확인",
            lines: [
              "30개 이상의 다양한 검사 규칙 (장비, 계기 등)",
              "ex. 라인 넘버(사이즈-유체코드-넘버링-재질-보온재 등) 데이터 정합성 검사",
              "ex. 계기 타입 별 코드(FT = Flow Transmitter 등) 데이터 정합성 검사",
              "사용 가능한 규칙 사용자 지정(사용자 정의 규칙)",
              "시스템 또는 파일로 Q/C 결과 보고",
            ],
          },
          { label: "P&ID Viewer", lines: ["PDF 파일로 검증 결과 확인"] },
          {
            label: "리포트",
            lines: ["이전 버전 Case와 비교", "선택한 규칙, 도면 별로 PDF 파일 생성"],
          },
          { label: "비용 절감", lines: ["Q/C에 SP P&ID 라이센스 불필요"] },
        ]}
      />

      <FeatureBlock
        id="sec_eq"
        title="S3D 비정형 EQ. Foundation 자동 모델링"
        desc="복잡한 형상의 비정형 구조물 자동 3D Modeling 시스템"
        bullets={[
          "복잡한 형상의 비정형 구조물들을 S3D에서 한 번에 자동으로 3D Modeling",
          {
            label: "주요 구조물",
            lines: ["Footing", "Pedestal", "Wall", "Opening", "Beam", "Slab", "Pile", "Excavation"],
          },
        ]}
      />

      <FeatureBlock
        id="sec_edb"
        title="EDB (Engineering Database)"
        desc="엑셀 시트로 관리 되던 데이터를 데이터베이스화 하여 다른 시스템 연동을 통한 업무 능률 향상"
        bullets={[
          "실시간 데이터 공유 및 부서별 독립 저장",
          "고객사 문서시스템과의 연동 및 history 조회",
          "EDB 축적 데이터 검색을 통한 효율적인 입찰 및 Project 수행",
          "정확한 설계 Data 구축 (각 시스템과의 Item tag validation 및 Data publish)",
          "공정 업무 전산화 (H&B list, Equipment list, line list 등 연계)",
          "3D Model 및 P&ID 연동",
        ]}
      />

      <FeatureBlock
        id="sec_issueR"
        title="ISSUE–R"
        desc="ISO Drawing의 Revision 발생 시 최소 M/H 로 Revision을 처리하여 관리하는 시스템"
        bullets={[
          "도면 수정 사항 자동 파악",
          "자동 Marking으로 작업 시간 절감",
          "도면 시점 별로 수정사항 비교",
          "CAD 지식이 없어도 작업 가능",
          "수정 사항에 대한 표기 누락 방지",
          "수정 사항 정보 제공 (Report)",
        ]}
      />

      <FeatureBlock
        id="sec_eload"
        title="E-LOAD"
        desc="Electrical Load 관련 Data 통합 관리로 산출물의 자동화 구현을 통한 M/H 절감 및 산출물 정확도 향상"
        bullets={[
          {
            label: "LOAD Summary 계산",
            lines: ["Load Summary Excel Import", "Assign Load Bus", "Virtual Load Summary"],
          },
          {
            label: "Cable Schedule 계산",
            lines: ["Cable Schedule Import", "Cable BOM Summary"],
          },
          {
            label: "Drum Schedule 계산",
            lines: ["Drum Naming Rule Setting", "Drum Schedule Creation"],
          },
        ]}
      />

      <FeatureBlock
        id="sec_psjg"
        title="PSJG (Piping Spool Joint Generator System)"
        desc="플랜트 현장의 공사물량/작업 관리 및 품질/안전/자원을 관리하는 시스템"
        bullets={[
          {
            label: "Joint Control 기능",
            lines: ["반복작업에 대한 단축키 기능", "Joint 현황 실시간 Monitoring 확인"],
          },
          {
            label: "Spool Control 기능",
            lines: ["Joint 현황 실시간 Monitoring 확인"],
          },
          {
            label: "Revision 기능",
            lines: ["변경된 정보 구 버전 비교가능 · 자동연결"],
          },
        ]}
      />
    </section>
  );
}
