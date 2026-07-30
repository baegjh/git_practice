import styles from "./page.module.css";
import contentStyles from "@/styles/content.module.css";

const stats = [
  { value: "400%", label: "ROI (Forrester TEI 기준)" },
  { value: "$21.56M", label: "3년 순현재가치(NPV)" },
  { value: "<14개월", label: "투자 회수 기간" },
];

const process = [
  {
    step: "1단계",
    title: "해방 (Liberate)",
    desc: "90개 이상의 내장 추출기(Extractors)로 PI System, OPC-UA, SAP 등 이기종 소스에서 실시간 데이터 수집",
  },
  {
    step: "2단계",
    title: "맥락화 (Contextualize)",
    desc: "머신러닝 기반 연결, AI-OCR, 인간 전문가 검증을 통한 산업용 지식 그래프 구축",
  },
  {
    step: "3단계",
    title: "활성화 (Activate)",
    desc: "개방형 API·SDK 제공 및 Microsoft Fabric, Rockwell 등 파트너 생태계와의 통합",
  },
];

const tools = [
  {
    title: "Industrial Canvas",
    desc: "도면, 시계열 데이터, 3D 모델을 하나의 대시보드에 모아 다부서 팀이 실시간으로 협업하는 시각적 캔버스",
  },
  {
    title: "Infield",
    desc: "현장 작업자를 위한 모바일 허브. 태블릿으로 도면·점검 절차서·실시간 센서 데이터를 확인하고 이상 징후 보고",
  },
  {
    title: "Maintain",
    desc: "과거 고장 이력과 동적 디지털 트윈을 결합해 예지 정비 및 작업 패키징 스케줄링을 간소화",
  },
  {
    title: "Charts",
    desc: "코딩 없이 수십만 개의 센서 데이터를 시각화하고 트렌드 분석·이상 탐지를 수행하는 시계열 분석 도구",
  },
];

const agents = [
  {
    name: "RCA (근본 원인 분석) 에이전트",
    desc: "ISO 14224 표준 기반으로 설비 고장을 조사하고 원인 맵을 자동 생성",
    impact: "시간 90% 단축",
  },
  {
    name: "작업 패키지 생성 에이전트",
    desc: "P&ID, 매뉴얼, 정비 이력을 자동 수집해 유지보수 작업 패키지 작성",
    impact: "단 4번의 클릭",
  },
  {
    name: "운영 요약 에이전트",
    desc: "교대조 인수인계를 위한 맞춤형 요약 보고서를 자동 생성",
    impact: "시간 50% 단축",
  },
];

const industries = [
  {
    title: "Upstream/Downstream O&G",
    desc: "해양 플랜트, 정유소의 생산 최적화 및 유지보수 효율화",
    example: "사례: Celanese, Aker BP",
  },
  {
    title: "연속 공정 제조",
    desc: "화학·제약·펄프 및 종이 산업의 배치(Batch) 모니터링과 품질 예측 최적화",
    example: "사례: Moelven",
  },
  {
    title: "전력 발전 및 신재생",
    desc: "수력·풍력 터빈·전력망의 자산 건강 모니터링 및 환경적 영향 관리",
    example: "사례: Skagerak Kraft",
  },
];

const comparison = [
  {
    name: "Cognite",
    note: "데이터 모델링 영역 완벽, 가장 빠른 산업용 AI 스케일업",
    ratings: ["full", "full", "full", "full"],
    highlight: true,
  },
  {
    name: "AVEVA (PI System)",
    note: "전통적 Historian 강자이나 타 시스템 통합의 어려움, UI 노후화",
    ratings: ["half", "empty", "empty", "half"],
  },
  {
    name: "C3 AI",
    note: "범용 Enterprise AI에 강하나, OT 현장 적용 및 구축에 긴 시간 소요",
    ratings: ["half", "half", "empty", "full"],
  },
  {
    name: "Siemens (MindSphere)",
    note: "자사 하드웨어 통합성은 뛰어나나 모바일/현장 확장성 제한",
    ratings: ["empty", "half", "half", "half"],
  },
];

const roiBreakdown = [
  { label: "현장 인력 효율성 개선", value: "+$10.5M" },
  { label: "생산 최적화를 통한 점진적 이익 증대", value: "+$10.7M" },
  { label: "계획되지 않은 다운타임 감소", value: "+$14.5M" },
];

const partners = [
  {
    name: "Rockwell Automation",
    desc: "FactoryTalk DataMosaix 파트너십으로 엣지(Edge)에서 클라우드까지 이어지는 제조 OT 데이터 허브 구축",
  },
  {
    name: "Microsoft",
    desc: "IT 정형 데이터를 다루는 'Fabric'과 OT/ET 비정형 데이터에 강한 'CDF'를 결합해 산업용 데이터 패브릭 완성",
  },
  {
    name: "NVIDIA",
    desc: "가속 컴퓨팅 및 NV-Tesseract 시계열 파운데이션 모델 결합으로 초고속 실시간 이상 탐지 구현",
  },
];

const conclusion = [
  "단편적인 앱(Point Solutions) 난립을 멈추고 단일 진실 공급원(Single Source of Truth) 확보",
  "'맥락(Context)'이 결여된 범용 AI 대신, 물리적 법칙을 이해하는 산업용 하이브리드 AI 채택",
  "IT 부서만의 프로젝트가 아닌, 현장 전문가(SME)를 위한 로우코드/에이전트 기반 권한 위임",
];

function Rating({ value }: { value: string }) {
  const cls =
    value === "full"
      ? styles.ratingFull
      : value === "half"
        ? styles.ratingHalf
        : styles.ratingEmpty;
  return <span className={`${styles.rating} ${cls}`} />;
}

export default function CognitePage() {
  return (
    <section className={contentStyles.content}>
      <span className={styles.badge}>외부 솔루션 소개 · 참고자료</span>
      <div className={styles.titleRow}>
        <h1 className={styles.title}>Cognite</h1>
        <span className={styles.subtitle}>
          산업용 DataOps와 AI 기반의 자율 운영 모델
        </span>
      </div>

      <p className={styles.notice}>
        본 페이지는 도프텍의 자체 솔루션이 아니라, 산업용 데이터 플랫폼
        기업 Cognite에 대한 참고 정보입니다. 사장님께서 제공하신{" "}
        <strong>&ldquo;코그나이트(Cognite) 백서: 산업용 DataOps와 AI 기반의
        자율 운영 모델&rdquo;</strong> 문서 내용을 요약해서 정리했습니다.
        정확한 최신 내용은 공식 사이트(cognite.com)에서도 확인해 주세요.
      </p>

      <div className={styles.block}>
        <h2 className={styles.blockTitle}>개요</h2>
        <p className={styles.paragraph}>
          Cognite는 파편화된 산업 데이터를 &lsquo;지식 그래프&rsquo;로
          맥락화하여, 안전하고 확장 가능한 산업용 AI 도입을 가속화하는
          플랫폼 기업입니다. IT·OT·ET 데이터를 통합하는 &lsquo;산업용
          DataOps&rsquo; 플랫폼으로 부서 간 단절된 데이터 사일로를
          타파하며, 데이터 파운데이션(CDF)과 로우코드 AI 에이전트(Atlas
          AI)를 결합해 환각(Hallucination) 없는 안전한 AI를 현장에
          배포합니다.
        </p>
        <div className={styles.statGrid} style={{ marginTop: 24 }}>
          {stats.map((s) => (
            <div className={styles.statCard} key={s.label}>
              <p className={styles.statNumber}>{s.value}</p>
              <p className={styles.statLabel}>{s.label}</p>
            </div>
          ))}
        </div>
      </div>

      <div className={styles.block}>
        <h2 className={styles.blockTitle}>왜 필요한가 — 데이터는 많은데 맥락이 없다</h2>
        <p className={styles.paragraph}>
          자산 집약적 산업은 IT(ERP, SAP, CMMS), OT(센서, SCADA, PI
          System), ET(3D CAD, P&amp;ID, 도면) 각 영역에 방대한 데이터를
          보유하고 있지만, 서로 연결되지 않은 채 흩어져 있습니다. 단순
          저장만 하는 기존 데이터 레이크(Data Lake)는 물리적·엔지니어링적
          의미론(Semantics)을 반영하지 못해, LLM과 결합했을 때 심각한 AI
          환각과 오류를 유발합니다.
        </p>
      </div>

      <div className={styles.block}>
        <h2 className={styles.blockTitle}>
          Cognite Data Fusion (CDF) — 산업용 DataOps 플랫폼
        </h2>
        <p className={styles.paragraph}>
          CDF는 단순한 저장소가 아니라, 실행 가능한 데이터 제품을 실시간
          제공하는 동적 지식 그래프 플랫폼입니다. 데이터 사이언티스트
          전용이 아닌 현장 작업자(SME)를 위한 로우코드/노코드 도구를
          제공하며, 결정론적(Deterministic) 지식 그래프에 기반한 안전하고
          신뢰할 수 있는 하이브리드 AI를 지향합니다.
        </p>
        <div className={styles.processGrid} style={{ marginTop: 24 }}>
          {process.map((p) => (
            <div className={styles.processCard} key={p.step}>
              <span className={styles.processStep}>{p.step}</span>
              <p className={styles.processTitle}>{p.title}</p>
              <p className={styles.processDesc}>{p.desc}</p>
            </div>
          ))}
        </div>
      </div>

      <div className={styles.block}>
        <h2 className={styles.blockTitle}>산업용 지식 그래프 예시</h2>
        <p className={styles.paragraph}>
          예를 들어 &lsquo;Pump 101&rsquo;이라는 설비 하나를 중심으로,
          OT의 실시간 온도·진동 센서 데이터, ET의 P&amp;ID 배관도 및 3D
          모델(공간적 위치 정보), IT의 ERP 유지보수 이력이 하나의 노드로
          연결됩니다. 이 지식 그래프는 기계와 인간이 모두 이해할 수 있는
          &lsquo;의미론적 계층(Semantic Layer)&rsquo;을 형성해, LLM에
          산업 현장의 완벽한 물리적 맥락을 제공합니다.
        </p>
      </div>

      <div className={styles.block}>
        <h2 className={styles.blockTitle}>Industrial Tools 제품군</h2>
        <div className={styles.cardGrid}>
          {tools.map((t) => (
            <div className={styles.card} key={t.title}>
              <p className={styles.cardTitle}>{t.title}</p>
              <p className={styles.cardDesc}>{t.desc}</p>
            </div>
          ))}
        </div>
      </div>

      <div className={styles.block}>
        <h2 className={styles.blockTitle}>
          Cognite Atlas AI — 로우코드 에이전트 워크벤치
        </h2>
        <p className={styles.paragraph}>
          지식 그래프에 기반한 로우코드 에이전트 워크벤치로, 생성형 AI를
          산업 현장에 안전하게 안착시킵니다.
        </p>
        <div className={styles.agentList} style={{ marginTop: 20 }}>
          {agents.map((a) => (
            <div className={styles.agentItem} key={a.name}>
              <div>
                <p className={styles.agentName}>{a.name}</p>
                <p className={styles.agentDesc}>{a.desc}</p>
              </div>
              <span className={styles.agentImpact}>{a.impact}</span>
            </div>
          ))}
        </div>
      </div>

      <div className={styles.block}>
        <h2 className={styles.blockTitle}>적용 산업</h2>
        <div className={styles.industryCardGrid}>
          {industries.map((ind) => (
            <div className={styles.industryCard} key={ind.title}>
              <p className={styles.industryCardTitle}>{ind.title}</p>
              <p className={styles.industryCardDesc}>{ind.desc}</p>
              <p className={styles.industryCardExample}>{ind.example}</p>
            </div>
          ))}
        </div>
      </div>

      <div className={styles.block}>
        <div className={styles.highlight}>
          <h2 className={styles.blockTitle}>
            조선해양산업 특화 — 도프텍과 가장 맞닿아 있는 영역
          </h2>
          <p className={styles.paragraph}>
            백서에서는 조선해양산업을 별도로 다루는데, 수백만 장의 도면과
            3D 모델을 통합해 해양 플랜트·선박의 설계부터 시운전,
            유지보수까지 전 주기를 최적화하는 내용입니다. 도프텍의
            APLUS(배관 자동 라우팅), ID2(P&amp;ID 인식), CommentUS(3D
            모델 리뷰)와 다루는 데이터가 정확히 겹칩니다.
          </p>
          <div className={styles.highlightGrid}>
            <div className={styles.highlightCard}>
              <p className={styles.highlightCardTitle}>1. 오픈 산업용 디지털 트윈</p>
              <p className={styles.highlightCardDesc}>
                해양 구조물의 배관·P&amp;ID·센서 데이터를 3D 모델과 연동해,
                3D 모델을 탐색하듯 관련 시스템 데이터를 즉시 확인하고
                원격 모니터링
              </p>
            </div>
            <div className={styles.highlightCard}>
              <p className={styles.highlightCardTitle}>2. 스마트 유지보수 및 엣지 정비</p>
              <p className={styles.highlightCardDesc}>
                해상(Offshore) 현장 작업자에게 태블릿으로 실시간 도면과
                AI 기반 RCA를 제공해 수리 시간 단축 및 계획되지 않은
                다운타임 방지
              </p>
            </div>
            <div className={styles.highlightCard}>
              <p className={styles.highlightCardTitle}>3. 데이터 통합 기반 디지털 인수인계</p>
              <p className={styles.highlightCardDesc}>
                조선소(건조)에서 선주(운영)로 인도될 때 파편화된 문서
                대신 표준화된 CDF 지식 그래프로 데이터를 전달해 생애주기
                운영 가치 제고
              </p>
            </div>
          </div>
        </div>
      </div>

      <div className={styles.block}>
        <h2 className={styles.blockTitle}>경쟁 비교 (백서 기준)</h2>
        <div className={styles.tableWrap}>
          <table className={styles.table}>
            <thead>
              <tr>
                <th>구분</th>
                <th>데이터 맥락화</th>
                <th>이기종 시스템 호환성</th>
                <th>현장 작업자 사용성</th>
                <th>산업용 AI/Agent 확장성</th>
              </tr>
            </thead>
            <tbody>
              {comparison.map((c) => (
                <tr key={c.name} className={c.highlight ? styles.tableHighlight : ""}>
                  <td>
                    <p className={styles.tableName}>{c.name}</p>
                    <p className={styles.tableNote}>{c.note}</p>
                  </td>
                  {c.ratings.map((r, i) => (
                    <td key={i}>
                      <Rating value={r} />
                    </td>
                  ))}
                </tr>
              ))}
            </tbody>
          </table>
        </div>
        <p className={styles.tableNote} style={{ marginTop: 12 }}>
          ● 완벽 · ◐ 우수 · ○ 부족 (백서에 제시된 자체 평가 기준)
        </p>
      </div>

      <div className={styles.block}>
        <h2 className={styles.blockTitle}>검증된 ROI (Forrester TEI 연구)</h2>
        <p className={styles.paragraph}>
          Forrester Total Economic Impact(TEI) 연구 기준으로 400%의 ROI와
          14개월 미만의 투자 회수 기간이 확인됐다고 소개하고 있습니다.
        </p>
        <div className={styles.roiBreakdown} style={{ marginTop: 20 }}>
          {roiBreakdown.map((r) => (
            <div className={styles.roiRow} key={r.label}>
              <span>{r.label}</span>
              <span className={styles.roiValue}>{r.value}</span>
            </div>
          ))}
          <div className={`${styles.roiRow} ${styles.roiTotal}`}>
            <span>총 경제적 혜택</span>
            <span className={styles.roiValue}>$29.4M</span>
          </div>
        </div>
        <p className={styles.paragraph} style={{ marginTop: 16 }}>
          솔루션 배포 소요 시간을 60~80% 단축하고, 공장 간·자산 간 횡개
          전개(Scale-out) 역량을 대폭 강화한다고 설명합니다.
        </p>
      </div>

      <div className={styles.block}>
        <h2 className={styles.blockTitle}>파트너 생태계</h2>
        <div className={styles.partnerGrid}>
          {partners.map((p) => (
            <div className={styles.partnerCard} key={p.name}>
              <p className={styles.partnerName}>{p.name}</p>
              <p className={styles.partnerDesc}>{p.desc}</p>
            </div>
          ))}
        </div>
      </div>

      <div className={styles.block}>
        <h2 className={styles.blockTitle}>결론 (백서 요지)</h2>
        <div className={styles.checklist}>
          {conclusion.map((c) => (
            <div className={styles.checklistItem} key={c}>
              <span className={styles.checkMark}>✓</span>
              <span>{c}</span>
            </div>
          ))}
        </div>
      </div>

      <p className={styles.source}>
        출처: 사장님이 제공하신 &ldquo;코그나이트(Cognite) 백서: 산업용
        DataOps와 AI 기반의 자율 운영 모델&rdquo; 문서 (Cognite White
        Paper). 이 페이지는 해당 문서의 요약이며, 원문 및 최신 정보는
        Cognite 공식 채널에서 확인하시기 바랍니다.
      </p>
    </section>
  );
}
