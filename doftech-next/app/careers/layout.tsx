import SectionTabs from "@/components/SectionTabs";
import { careersTabs } from "@/lib/nav";

export default function CareersLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <>
      <SectionTabs items={careersTabs} label="CAREERS 메뉴" />
      {children}
    </>
  );
}
