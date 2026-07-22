import SectionTabs from "@/components/SectionTabs";
import { serviceTabs } from "@/lib/nav";

export default function ServiceLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <>
      <SectionTabs items={serviceTabs} label="SERVICE 메뉴" />
      {children}
    </>
  );
}
