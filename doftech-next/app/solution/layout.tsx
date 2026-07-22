import SectionTabs from "@/components/SectionTabs";
import SectionVisual from "@/components/SectionVisual";
import { solutionTabs } from "@/lib/nav";

export default function SolutionLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <>
      <SectionVisual src="/img/visual_img_0.png" />
      <SectionTabs items={solutionTabs} label="SOLUTION 메뉴" />
      {children}
    </>
  );
}
