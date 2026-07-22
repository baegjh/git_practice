import SectionTabs from "@/components/SectionTabs";
import SectionVisual from "@/components/SectionVisual";
import { serviceTabs } from "@/lib/nav";

export default function ServiceLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <>
      <SectionVisual src="/img/visual_img_1.png" />
      <SectionTabs items={serviceTabs} label="SERVICE 메뉴" />
      {children}
    </>
  );
}
