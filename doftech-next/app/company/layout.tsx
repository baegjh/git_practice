import SectionTabs from "@/components/SectionTabs";
import SectionVisual from "@/components/SectionVisual";
import { companyTabs } from "@/lib/nav";

export default function CompanyLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <>
      <SectionVisual src="/img/visual_img_4.png" />
      <SectionTabs items={companyTabs} label="회사소개 메뉴" />
      {children}
    </>
  );
}
