import Link from "next/link";
import styles from "./page.module.css";
import contentStyles from "@/styles/content.module.css";

const items: { title: string; note?: string }[] = [
  {
    title:
      "국가과제수주(5년:참여기업) 제조업 경쟁력 향상을 위해 방산 항공용 언어모델 구축 및 표준부품설계 속도가 2배 빠른 한국형 설계 자동화 모델 기술 개발 - 2025",
  },
  {
    title:
      "국가과제수주(5년:주관기업) 디지털전환 기술 기반 플랜트 건설 사업관리 기술 개발(AWP) - 2025",
  },
  { title: "삼성 E&A 2D 3D 정합성 확인 시스템 개발(Web) - 2025" },
  { title: "삼성 E&A 실시간 P&ID 협업을 위한 엔지니어 업무 플랫폼 개발(Web P&ID) - 2025" },
  { title: "현대엔지니어링 Loading Inform 시스템 확대 개발 - 2024" },
  { title: "OTEKO Ammonia EP Proposal Auto Routing - 2024" },
  { title: "도시유전 : 제주 RGO 프로젝트 Auto Routing - 2024" },
  { title: "PWC GS칼텍스 설비정보 모수 데이터 추출 용역 - 2024" },
  { title: "현대엔지니어링 Piperack 설계 자동화를 위한 Inform. 추출 프로그램 개발 - 2023" },
  { title: "삼성전자 : digital twin을 위한 일반도면(2D)의 지능형 도면 전환 - 2023" },
  { title: "DL E&C S3D 기계 모델링 자동화 시스템 개발 - 2022" },
  { title: "삼성엔지니어링 소방 P&ID 자동화(SP P&ID) 시스템 개발 - 2022" },
  { title: "삼성엔지니어링 S3D Block Pattern Routing Module 개발 - 2022" },
  { title: "국가과제 수주(3년:참여기업) 상용 3D CAD 연계 국산 호환 소프트웨어 개발 - 2022" },
  {
    title:
      "국가과제 수주(3년:주관기업) 탄소저감모델 연계 배관-케이블 경로설계 최적화 기술개발 - 2022",
  },
  {
    title: "삼성엔지니어링 Auto Dimension of UPV 시스템 개발 - 2022",
    note: "(Universal Plant Viewer)",
  },
  {
    title: "삼성엔지니어링 E3D 기반 UDD Inform 자동화 개발 - 2022",
    note: "(Utility Distribute Diagram)",
  },
  { title: "Piping Auto Routing 시스템 개발 - 2022" },
  { title: "국가과제 수주(3년:참여기업) 엔지니어링 SW 컨설팅 및 클라우드 활용지원 - 2021" },
  { title: "DL E&C S3D 토목 비정형 Foundation 자동 모델링 - 2021" },
  { title: "DL E&C S3D Compress 장치 모델링 자동화 시스템 - 2021" },
  { title: "삼성엔지니어링 SP P&ID Auto Correction 시스템 개발 - 2021" },
  { title: "DL E&C ITB 설계 문서 Data 전산화 시스템 개발 - 2021" },
  { title: "DL E&C E&I 3D Cable Modeling 시스템 개발 - 2021" },
  { title: "삼성엔지니어링 S3D Cable Design Automation 시스템 개발 - 2021" },
  { title: "삼성엔지니어링 S3D Direct WeldMap 시스템 개발 - 2020" },
  {
    title: "삼성엔지니어링 S3D 기반 UDD Inform 자동화 개발 - 2020",
    note: "(Utility Distribute Diagram)",
  },
  { title: "DL E&C S3D 토목 정형 Foundation 자동 모델링 - 2020" },
  {
    title: "삼성엔지니어링 공정 설계 자동화 플랫폼 개발 - 2020",
    note: "(Process Automation Platform)",
  },
  {
    title: "CommentUS for Naviswors & SPR 개발 / 판매 - 2020",
    note: "(3D Model Review Comment Tool)",
  },
  { title: "삼성엔지니어링 Hydraulic Calculation 시스템 개발 - 2019" },
  { title: "서울산업진흥원 AI 기술 사업화 과제 - 2019" },
  { title: "삼성엔지니어링 SP P&ID Auto Check 프로그램 개발 - 2019" },
  {
    title: "ID2(Image Drawing to Intelligent Drawing) 개발/판매 - 2019",
    note: "Image, PDF 로 된 P&ID 도면 인식 후 Intelligent Drawing으로 자동 변환 프로그램",
  },
  {
    title: "삼성엔지니어링 SP P&ID 용 공사용 도면 제작 프로그램 개발 (System, Test PKG Marking) - 2018",
  },
  { title: "MARKUS Renewal (Markup 협업 Tool) 개발/판매 - 2018" },
  { title: "국가과제 수주(3년:주관기업) 기본설계 및 FEED 자동화 업무지원 시스템 개발 - 2017" },
  {
    title: "3D CATA DB 구축(SP3D, PDS, PDMS), APP 모꼬지 개발/운영 - 2016",
    note: "None Standard: 기 수행 프로젝트 기계/장치/발전 형상 DB 관리 시스템 · Standard: Discipline 별 Detail 형상 구축",
  },
  { title: "공사용 도면 제작프로그램 개발 (ISO, System PKG Marking) - 2015" },
  { title: "Engineering DB 개발 (HMB / Equipment List / Line List / Inst.list) - 2013" },
  { title: "Project Portal 개발 및 용역 (VPCS, EDCS, CCS 및 기타 모듈) - 2012" },
  { title: "Smart Plant P&ID Utility 개발(Advanced) - 2012" },
  { title: "Design Review Utility 개발 (Clash/Equip.nozzle check/search 등) - 2011" },
  { title: "공사용 도면(ISO Welding map/Hydro PKG) 용역 시작 - 2010" },
  { title: "Dummy AutoCAD to Intelligent P&ID 변환 용역(대우조선/현대중공업) - 2009" },
  { title: "현대중공업 설치 도면 및 Ladder/Stair Utility 개발 용역 - 2008" },
  { title: "9SQ(주) 도면 자동화 프로그램(PlantWAVE) 공동개발(PDS/PDMS) - 2006" },
  { title: "PDMS 배관/장치/토목 분야 Modeling Utility 개발 - 2005" },
  { title: "배관 ISO 도면 관리시스템 개발(IDCS) PDS / PDMS - 2003" },
  { title: "도프텍(주) 설립, 대림산업 3D CAD 및 설계 IT 개발 용역 수행 - 2000" },
];

export default function HistoryPage() {
  return (
    <section className={contentStyles.content}>
      <div className={styles.timeline}>
        {items.map((item, i) => (
          <div className={styles.item} key={i}>
            <p className={styles.itemTitle}>{item.title}</p>
            {item.note && <p className={styles.itemNote}>{item.note}</p>}
          </div>
        ))}
      </div>

      <div className={styles.cta}>
        <p className={styles.ctaTitle}>보다 많은 수행 내역이 궁금하세요?</p>
        <p className={styles.ctaDesc}>
          고객사의 요청에 의해 숨겨진 도프텍의 멋진 업무 수행내역과 프로젝트
          개발 내용이 빠져있습니다.
          <br />
          보다 자세한 정보가 필요하다면 연락하세요!
        </p>
        <Link href="/company/location" className={styles.ctaButton}>
          CONTACT US
        </Link>
      </div>
    </section>
  );
}
