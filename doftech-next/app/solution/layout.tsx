import SectionTabs from "@/components/SectionTabs";
import { solutionTabs } from "@/lib/nav";

export default function SolutionLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <>
      <SectionTabs items={solutionTabs} label="SOLUTION 메뉴" />
      {children}
    </>
  );
}
