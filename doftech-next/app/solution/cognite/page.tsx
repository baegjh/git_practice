import styles from "./page.module.css";
import contentStyles from "@/styles/content.module.css";

const products = [
  {
    title: "Cognite Data Fusion (CDF)",
    desc: "산업 현장의 센서·시계열 데이터, 3D 모델, P&ID·도면, 문서, 자산 정보를 하나의 데이터 모델(산업 지식 그래프)로 통합·맥락화하는 산업용 DataOps 플랫폼",
  },
  {
    title: "Cognite Atlas AI",
    desc: "CDF 위에서 동작하는 생성형 AI 코파일럿으로, 현장 엔지니어가 자연어로 설비·운전 데이터를 질의하고 인사이트를 얻을 수 있도록 지원",
  },
];

const features = [
  "OT(운영기술)와 IT 시스템 간 데이터 사일로를 해소하고 하나의 통합 데이터 레이어로 연결",
  "시계열·3D·문서·이미지 등 이종 데이터를 자산(Asset) 단위로 맥락화하여 산업 지식 그래프 구축",
  "디지털 트윈, 예지보전(Predictive Maintenance), 이상 감지 등 산업 AI/ML 애플리케이션의 데이터 기반 제공",
  "클라우드 네이티브 아키텍처로 대규모 산업 데이터를 확장 가능하게 처리",
  "로우코드 애플리케이션·API를 통해 현업 엔지니어가 직접 데이터 기반 앱을 구성할 수 있도록 지원",
];

const industries = ["오일 & 가스", "에너지·전력", "제조", "화학·공정산업", "신재생에너지"];

export default function CognitePage() {
  return (
    <section className={contentStyles.content}>
      <span className={styles.badge}>외부 솔루션 소개 · 참고자료</span>
      <div className={styles.titleRow}>
        <h1 className={styles.title}>Cognite</h1>
        <span className={styles.subtitle}>Industrial DataOps Platform</span>
      </div>

      <p className={styles.notice}>
        본 페이지는 도프텍의 자체 솔루션이 아니라, 산업용 데이터 플랫폼 기업인
        Cognite AS(노르웨이)에 대한 참고 정보입니다. 이 세션에서는 네트워크
        정책상 cognite.com에 실시간으로 접속할 수 없어, 일반적으로 알려진
        정보를 바탕으로 작성했습니다. 최신·정확한 내용은{" "}
        <a href="https://www.cognite.com" target="_blank" rel="noopener noreferrer">
          공식 사이트(cognite.com)
        </a>
        를 확인해 주세요.
      </p>

      <div className={styles.block}>
        <h2 className={styles.blockTitle}>개요</h2>
        <p className={styles.paragraph}>
          Cognite는 2016년 노르웨이에서 설립된 산업용 소프트웨어 기업으로,
          오일·가스·에너지·제조 등 중공업·플랜트 산업의 데이터를 통합하고
          맥락화하는 &lsquo;산업 DataOps&rsquo; 플랫폼을 제공합니다. 현장의
          센서·시계열 데이터부터 3D 모델, P&amp;ID 도면, 운전 문서까지 흩어져
          있는 산업 데이터를 하나의 데이터 모델로 연결해, 디지털 트윈과 산업
          AI 애플리케이션의 기반을 만드는 것을 목표로 합니다.
        </p>
      </div>

      <div className={styles.block}>
        <h2 className={styles.blockTitle}>핵심 제품</h2>
        <div className={styles.cardGrid}>
          {products.map((p) => (
            <div className={styles.card} key={p.title}>
              <p className={styles.cardTitle}>{p.title}</p>
              <p className={styles.cardDesc}>{p.desc}</p>
            </div>
          ))}
        </div>
      </div>

      <div className={styles.block}>
        <h2 className={styles.blockTitle}>주요 기능 및 가치</h2>
        <ul className={styles.bullets}>
          {features.map((f) => (
            <li key={f}>{f}</li>
          ))}
        </ul>
      </div>

      <div className={styles.block}>
        <h2 className={styles.blockTitle}>대상 산업</h2>
        <div className={styles.industryRow}>
          {industries.map((i) => (
            <span className={styles.industryTag} key={i}>
              {i}
            </span>
          ))}
        </div>
      </div>

      <div className={styles.block}>
        <h2 className={styles.blockTitle}>도프텍과의 연관성</h2>
        <p className={styles.relevance}>
          도프텍은 P&amp;ID 도면 인식(ID2), 3D 자동 모델링(APLUS), 3D 모델
          리뷰(CommentUS) 등 플랜트·엔지니어링 IT 영역의 자동화 솔루션을
          보유하고 있습니다. Cognite Data Fusion과 같은 산업 데이터 플랫폼은
          이러한 개별 솔루션들이 생성·처리하는 도면·3D·시계열 데이터를 통합
          연결하는 상위 레이어로 기능할 수 있어, 향후 연동 또는 비교 검토
          대상으로 참고할 만한 플랫폼입니다.
        </p>
      </div>
    </section>
  );
}
