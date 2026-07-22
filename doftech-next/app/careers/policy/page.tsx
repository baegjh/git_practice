import contentStyles from "@/styles/content.module.css";
import styles from "./page.module.css";

const values = [
  {
    title: "Innovation",
    sub: "열정적인 도전으로 혁신을 주도 하는 인재",
    desc: "다양한 시각과 열정으로 새로운 영역을 향한 도전!",
  },
  {
    title: "Teamwork",
    sub: "다양성에 대한 존중 및 소통에 기여하는 인재",
    desc: "서로를 존중하고 신뢰하며 협업을 통한 시너지 창출",
  },
  {
    title: "Social Responsibility",
    sub: "주인의식을 갖고 사회적 책임을 다하는 인재",
    desc: "자신의 일에 대한 자부심과 가치창출에 대한 행동",
  },
];

const steps = ["입사지원", "서류전형", "1차 면접", "2차 면접", "입사"];

export default function CareersPolicyPage() {
  return (
    <section className={contentStyles.content}>
      <div className={styles.values}>
        {values.map((v) => (
          <div className={styles.valueCard} key={v.title}>
            <p className={styles.valueTitle}>{v.title}</p>
            <p className={styles.valueSub}>{v.sub}</p>
            <p className={styles.valueDesc}>{v.desc}</p>
          </div>
        ))}
      </div>

      <p className={styles.processTitle}>인재 채용 프로세스</p>
      <div className={styles.process}>
        {steps.map((step) => (
          <div className={styles.step} key={step}>
            {step}
          </div>
        ))}
      </div>
    </section>
  );
}
