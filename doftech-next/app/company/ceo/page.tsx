import styles from "./page.module.css";

export default function CeoPage() {
  return (
    <section className={styles.content}>
      <p className={styles.greeting}>
        도프텍㈜은 2000년 3월 설립 이후 급변하는 환경속에서 Plant &amp;
        Engineering IT와 SI(System Integration)의 Total Solution Provider를
        추구하며 도전정신과 신뢰를 바탕으로 성장해온 기업입니다. 4차
        산업혁명의 선두주자로 자리매김하기 위하여 최고 전문가 그룹 역량으로
        IT 업계를 리딩 하는 기업이 되겠습니다.
      </p>
      <p className={styles.signature}>대표이사</p>

      <div className={styles.cards}>
        <div className={styles.card}>
          <div className={styles.icon} />
          <div className={styles.cardText}>
            <strong>신뢰</strong>
            도프텍㈜은 설립 후 현재까지 변하지 않는 경영방침이 있습니다.
            바로 &lsquo;신뢰&rsquo;입니다. 창립 초기 어려운 상황속에서도
            고객과, 직원과의 신뢰 결과가 현재의 모습으로 성장 가능한
            원동력이었습니다. 앞으로도 신뢰를 바탕으로 고객과 직원이
            하나되는 기업이 되겠습니다.
          </div>
        </div>
        <div className={styles.card}>
          <div className={styles.icon} />
          <div className={styles.cardText}>
            <strong>사람</strong>
            도프텍㈜의 기업문화의 가장 중요한 것은 &lsquo;사람&rsquo;입니다.
            가족친화 경영문화에 기반한 가정과 일의 조화를 추구하며 스스로
            업무를 찾아서 하는 자율과 책임경영을 하고 있습니다. 시행착오를
            두려워하지 않고 일을 추진함으로 회사는 성장합니다. 자율과
            책임을 바탕으로 사람이 중심이 되어 발전하는 건강한 기업문화를
            제공합니다.
          </div>
        </div>
      </div>
    </section>
  );
}
