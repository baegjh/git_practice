import Image from "next/image";
import styles from "./Footer.module.css";

export default function Footer() {
  return (
    <footer className={styles.footer}>
      <div className={styles.inner}>
        <div className={styles.logo}>
          <Image src="/img/footer_logo.png" alt="DOFTECH" width={120} height={28} />
        </div>
        <address className={styles.address}>
          본사 : 서울특별시 중구 통일로 86, 바비엥3주상복합, 401호
          <br />
          마곡 사무소 : 서울특별시 강서구 마곡중앙로 111, 롯데캐슬 르웨스트
          102동 223호
        </address>
        <div className={styles.contact}>
          <span>대표전화 : 02) 6354-9985</span>
          <span>Fax : 02) 6733-1060</span>
          <span>sales@doftech.co.kr</span>
          <a href="/terms">개인정보취급방침</a>
        </div>
        <p className={styles.copy}>
          Copyrights ⓒ DOFTECH. All Rights Reserved.
        </p>
      </div>
    </footer>
  );
}
