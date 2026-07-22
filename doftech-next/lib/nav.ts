export type NavChild = {
  title: string;
  href: string;
};

export type NavItem = {
  title: string;
  href: string;
  children: NavChild[];
};

export const navItems: NavItem[] = [
  {
    title: "SOLUTION",
    href: "/solution/aplus",
    children: [
      { title: "APLUS", href: "/solution/aplus" },
      { title: "ID2", href: "/solution/id2" },
      { title: "MARKUS", href: "/solution/markus" },
      { title: "DXUS", href: "/solution/dxus" },
      { title: "CommentUS", href: "/solution/commentus" },
      { title: "ISSUE-I", href: "/solution/issue-i" },
    ],
  },
  {
    title: "SERVICE",
    href: "/service/si",
    children: [
      { title: "SI", href: "/service/si" },
      { title: "Plant IT", href: "/service/engineering" },
    ],
  },
  {
    title: "R&D",
    href: "/rd/feed",
    children: [
      { title: "SmartFEED", href: "/rd/feed" },
      { title: "AI 기반 도면 인식", href: "/rd/ai" },
    ],
  },
  {
    title: "CAREERS",
    href: "/careers/policy",
    children: [
      { title: "인사제도", href: "/careers/policy" },
      { title: "교육·복리후생", href: "/careers/benefit" },
      { title: "직무소개", href: "/careers/task" },
    ],
  },
  {
    title: "COMPANY",
    href: "/company/ceo",
    children: [
      { title: "CEO 인사말", href: "/company/ceo" },
      { title: "연혁", href: "/company/history" },
      { title: "특허", href: "/company/patent" },
      { title: "고객사", href: "/company/portfolio" },
      { title: "조직도", href: "/company/organization" },
      { title: "오시는 길", href: "/company/location" },
    ],
  },
];

export const solutionTabs = navItems.find((i) => i.title === "SOLUTION")!.children;
export const serviceTabs = navItems.find((i) => i.title === "SERVICE")!.children;
export const rdTabs = navItems.find((i) => i.title === "R&D")!.children;
export const careersTabs = navItems.find((i) => i.title === "CAREERS")!.children;
export const companyTabs = navItems.find((i) => i.title === "COMPANY")!.children;
