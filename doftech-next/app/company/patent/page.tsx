import Image from "next/image";
import contentStyles from "@/styles/content.module.css";
import styles from "./page.module.css";

const patents = [
  {
    image: "/img/patent_img_01.png",
    title: "인공지능 기반 플랜트 도면 내 심볼 자동인식 방법 및 장치",
    footer: "2020.04.20 | 출원/등록 번호 10-2104605",
  },
  {
    image: "/img/patent_img_02.png",
    title: "데이터베이스에 저장된 설계정보를 이용한 지능형 PID 도면의 자동 작성 방법",
    footer: "2020.08.11 | 출원/등록 번호 10-2145178",
  },
  {
    image: "/img/patent_img_03.png",
    title: "이미지화된 PID 도면에서 설계정보를 자동으로 인식하여 분류하는 방법",
    footer: "2020.11.05 | 출원/등록 번호 10-2177550",
  },
  {
    image: "/img/patent_img_04.png",
    title: "플랜트 최적 설계를 위한 배관의 자동 라우팅 방법",
    footer: "2022.04.08 | 출원/등록 번호 10-2386084",
  },
  {
    image: "/img/patent_img_05.png",
    title: "딥러닝 기반 플랜트 공정 설계 이상진단 자동화 장치 및 방법",
    footer: "2022.04.15 | 출원/등록 번호 10-2388788",
  },
  {
    image: "/img/patent_img_06.png",
    title:
      "Method of authmatically recognizing and classifying design information in imaged PID drawing and method of automatically creating intelligent PID drawing using design information stored in database",
    footer: "2023.09.12, 미국 | 출원/등록 번호 16696953",
  },
];

export default function PatentPage() {
  return (
    <section className={contentStyles.content}>
      <div className={styles.grid}>
        {patents.map((p) => (
          <div className={styles.card} key={p.footer}>
            <div className={styles.image}>
              <Image src={p.image} alt="" fill style={{ objectFit: "cover" }} sizes="33vw" />
            </div>
            <div className={styles.title}>{p.title}</div>
            <div className={styles.footer}>{p.footer}</div>
          </div>
        ))}
      </div>
    </section>
  );
}
