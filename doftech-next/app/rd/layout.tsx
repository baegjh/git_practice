import SectionTabs from "@/components/SectionTabs";
import { rdTabs } from "@/lib/nav";

export default function RdLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <>
      <SectionTabs items={rdTabs} label="R&D 메뉴" />
      {children}
    </>
  );
}
