"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import type { NavChild } from "@/lib/nav";
import styles from "./SectionTabs.module.css";

export default function SectionTabs({
  items,
  label,
}: {
  items: NavChild[];
  label: string;
}) {
  const pathname = usePathname();

  return (
    <div className={styles.wrapper}>
      <nav className={styles.tabs} role="group" aria-label={label}>
        {items.map((tab) => (
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
