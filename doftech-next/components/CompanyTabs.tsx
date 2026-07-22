"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import { companyTabs } from "@/lib/nav";
import styles from "./CompanyTabs.module.css";

export default function CompanyTabs() {
  const pathname = usePathname();

  return (
    <div className={styles.wrapper}>
      <nav className={styles.tabs} role="group" aria-label="회사소개 메뉴">
        {companyTabs.map((tab) => (
          <Link
            key={tab.title}
            href={tab.href}
            className={`${styles.tab} ${pathname === tab.href ? styles.active : ""}`}
          >
            {tab.title}
          </Link>
        ))}
      </nav>
    </div>
  );
}
