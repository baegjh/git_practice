import SectionTabs from "@/components/SectionTabs";
import SectionVisual from "@/components/SectionVisual";
import { rdTabs } from "@/lib/nav";

export default function RdLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <>
      <SectionVisual src="/img/visual_img_2.png" />
      <SectionTabs items={rdTabs} label="R&D 메뉴" />
      {children}
    </>
  );
}
