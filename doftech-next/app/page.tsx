import Image from "next/image";
import Link from "next/link";
import Hero from "@/components/Hero";
import TrustBar from "@/components/TrustBar";
import Reveal from "@/components/Reveal";
import styles from "./page.module.css";

const banners = [
  {
    href: "/solution/aplus",
    title: "AI SOLUTION PACKAGE",
    desc: "Engineering IT 관련 AI Solution Package",
    image: "/img/default_banner_0.png",
  },
  {
    href: "/service/si",
    title: "SERVICE",
    desc: "SI Service, Plant & Engineering IT",
    image: "/img/default_banner_1.png",
  },
  {
    href: "/rd/feed",
    title: "R&D",
    desc: "R&D Technology",
    image: "/img/default_banner_2.png",
  },
];

const solutionProducts = [
  { href: "/solution/aplus", title: "APLUS", desc: "배관 자동 경로 배치 솔루션" },
  { href: "/solution/id2", title: "ID2", desc: "도면 인식 · Intelligent P&ID 변환" },
  { href: "/solution/markus", title: "MARKUS", desc: "3D Model Review Comment Tool" },
  { href: "/solution/dxus", title: "DXUS", desc: "Document Digital Transformation" },
  { href: "/solution/commentus", title: "CommentUS", desc: "3D Model Review Comment Tool" },
  { href: "/solution/issue-i", title: "ISSUE-I", desc: "배관 ISO 도면 관리 프로그램" },
];

const industries = [
  {
    title: "조선 · 해양",
    desc: "대우조선해양, 현대중공업 등과 도면 자동화 · 설치 도면 프로그램을 공동 수행했습니다.",
  },
  {
    title: "EPC · 플랜트",
    desc: "삼성엔지니어링, 현대엔지니어링, DL E&C 등 EPC 대형 프로젝트의 설계 자동화를 지원합니다.",
  },
  {
    title: "반도체 · 전자",
    desc: "삼성전자와 digital twin을 위한 도면 지능화 전환 프로젝트를 수행했습니다.",
  },
];

const recentProjects = [
  "삼성 E&A 실시간 P&ID 협업을 위한 엔지니어 업무 플랫폼 개발(Web P&ID) - 2025",
  "삼성 E&A 2D 3D 정합성 확인 시스템 개발(Web) - 2025",
  "국가과제수주(5년:주관기업) 디지털전환 기술 기반 플랜트 건설 사업관리 기술 개발(AWP) - 2025",
];

export default function Home() {
  return (
    <>
      <Hero />
      <TrustBar />

      <section className={styles.section}>
        <Reveal>
          <h2 className={styles.sectionTitle}>솔루션</h2>
          <p className={styles.sectionDesc}>
            Engineering IT 전 영역을 아우르는 AI 자동화 솔루션과 서비스
          </p>
        </Reveal>

        <Reveal>
          <div className={styles.grid}>
            {banners.map((banner) => (
              <Link href={banner.href} key={banner.title} className={styles.card}>
                <div className={styles.cardImage}>
                  <Image
                    src={banner.image}
                    alt=""
                    fill
                    style={{ objectFit: "cover" }}
                    sizes="(max-width: 900px) 100vw, 33vw"
                  />
                </div>
                <div className={styles.cardText}>
                  <span className={styles.cardTitle}>{banner.title}</span>
                  <span className={styles.cardDesc}>{banner.desc}</span>
                </div>
              </Link>
            ))}
          </div>
        </Reveal>

        <Reveal delay={100}>
          <div className={styles.productGrid}>
            {solutionProducts.map((p) => (
              <Link href={p.href} key={p.title} className={styles.productCard}>
                <span className={styles.productTitle}>{p.title}</span>
                <span className={styles.productDesc}>{p.desc}</span>
              </Link>
            ))}
          </div>
        </Reveal>
      </section>

      <section className={`${styles.section} ${styles.sectionAlt}`}>
        <Reveal>
          <h2 className={styles.sectionTitle}>산업 분야</h2>
          <p className={styles.sectionDesc}>도프텍이 함께해온 산업 현장</p>
        </Reveal>
        <Reveal delay={100}>
          <div className={styles.industryGrid}>
            {industries.map((ind) => (
              <div className={styles.industryCard} key={ind.title}>
                <h3 className={styles.industryTitle}>{ind.title}</h3>
                <p className={styles.industryDesc}>{ind.desc}</p>
              </div>
            ))}
          </div>
        </Reveal>
      </section>

      <section className={styles.section}>
        <Reveal>
          <h2 className={styles.sectionTitle}>최근 프로젝트</h2>
          <p className={styles.sectionDesc}>도프텍의 최신 수행 내역</p>
        </Reveal>
        <Reveal delay={100}>
          <ul className={styles.projectList}>
            {recentProjects.map((p) => (
              <li key={p} className={styles.projectItem}>
                {p}
              </li>
            ))}
          </ul>
          <Link href="/company/history" className={styles.moreLink}>
            연혁 전체 보기 →
          </Link>
        </Reveal>
      </section>

      <section className={styles.ctaSection}>
        <Reveal>
          <h2 className={styles.ctaTitle}>프로젝트를 시작할 준비가 되셨나요?</h2>
          <p className={styles.ctaDesc}>
            도프텍의 AI 솔루션과 엔지니어링 IT 서비스에 대해 문의해 주세요.
          </p>
          <Link href="/company/location" className={styles.ctaButton}>
            문의하기
          </Link>
        </Reveal>
      </section>
    </>
  );
}
