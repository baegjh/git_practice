import CompanyTabs from "@/components/CompanyTabs";

export default function CompanyLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <>
      <CompanyTabs />
      {children}
    </>
  );
}
