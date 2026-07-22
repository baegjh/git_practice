import SectionTabs from "@/components/SectionTabs";
import SectionVisual from "@/components/SectionVisual";
import { careersTabs } from "@/lib/nav";

export default function CareersLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <>
      <SectionVisual src="/img/visual_img_3.png" />
      <SectionTabs items={careersTabs} label="CAREERS 메뉴" />
      {children}
    </>
  );
}
