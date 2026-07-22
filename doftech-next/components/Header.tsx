"use client";

import { useState } from "react";
import Image from "next/image";
import Link from "next/link";
import { usePathname } from "next/navigation";
import { navItems } from "@/lib/nav";
import styles from "./Header.module.css";

export default function Header() {
  const pathname = usePathname();
  const [mobileOpen, setMobileOpen] = useState(false);
  const [openMobileGroup, setOpenMobileGroup] = useState<string | null>(null);

  return (
    <header className={styles.header}>
      <div className={styles.inner}>
        <Link href="/" className={styles.logo}>
          <Image src="/img/logo.png" alt="DOFTECH" width={140} height={32} priority />
        </Link>

        <nav className={styles.nav} aria-label="주요 메뉴">
          {navItems.map((item) => {
            const topSegment = item.href.split("/")[1];
            const active = Boolean(topSegment) && pathname.split("/")[1] === topSegment;
            return (
              <div
                key={item.title}
                className={`${styles.navItem} ${active ? styles.active : ""}`}
              >
                <Link href={item.href} className={styles.navLink}>
                  {item.title}
                </Link>
                <div className={styles.dropdown} role="group">
                  {item.children.map((child) => (
                    <Link
                      key={child.title}
                      href={child.href}
                      className={styles.dropdownLink}
                    >
                      {child.title}
                    </Link>
                  ))}
                </div>
              </div>
            );
          })}
        </nav>

        <div className={styles.right}>
          <div className={styles.langSwitch}>
            <span>ENG</span>
            <span>|</span>
            <span className={styles.on}>KOR</span>
          </div>
          <button
            type="button"
            className={styles.menuButton}
            aria-label="메뉴 열기"
            aria-expanded={mobileOpen}
            onClick={() => setMobileOpen((v) => !v)}
          >
            <span
              style={{
                transform: mobileOpen
                  ? "translateY(7px) rotate(45deg)"
                  : "none",
              }}
            />
            <span style={{ opacity: mobileOpen ? 0 : 1 }} />
            <span
              style={{
                transform: mobileOpen
                  ? "translateY(-7px) rotate(-45deg)"
                  : "none",
              }}
            />
          </button>
        </div>
      </div>

      {mobileOpen && (
        <div className={styles.mobileNav}>
          {navItems.map((item) => (
            <div key={item.title} className={styles.mobileNavItem}>
              <button
                type="button"
                className={styles.mobileNavTitle}
                onClick={() =>
                  setOpenMobileGroup((cur) =>
                    cur === item.title ? null : item.title,
                  )
                }
              >
                {item.title}
                <span>{openMobileGroup === item.title ? "-" : "+"}</span>
              </button>
              {openMobileGroup === item.title && (
                <div className={styles.mobileNavList}>
                  {item.children.map((child) => (
                    <Link
                      key={child.title}
                      href={child.href}
                      onClick={() => setMobileOpen(false)}
                    >
                      {child.title}
                    </Link>
                  ))}
                </div>
              )}
            </div>
          ))}
        </div>
      )}
    </header>
  );
}
