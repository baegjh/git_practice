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
    href: "#",
    children: [
      { title: "APLUS", href: "#" },
      { title: "ID2", href: "#" },
      { title: "MARKUS", href: "#" },
      { title: "DXUS", href: "#" },
      { title: "CommentUS", href: "#" },
      { title: "ISSUE-I", href: "#" },
    ],
  },
  {
    title: "SERVICE",
    href: "#",
    children: [
      { title: "SI", href: "#" },
      { title: "Plant IT", href: "#" },
    ],
  },
  {
    title: "R&D",
    href: "#",
    children: [
      { title: "SmartFEED", href: "#" },
      { title: "AI 기반 도면 인식", href: "#" },
    ],
  },
  {
    title: "CAREERS",
    href: "#",
    children: [
      { title: "인사제도", href: "#" },
      { title: "교육·복리후생", href: "#" },
      { title: "직무소개", href: "#" },
    ],
  },
  {
    title: "COMPANY",
    href: "/company/ceo",
    children: [
      { title: "CEO 인사말", href: "/company/ceo" },
      { title: "연혁", href: "#" },
      { title: "특허", href: "#" },
      { title: "고객사", href: "/company/portfolio" },
      { title: "조직도", href: "#" },
      { title: "오시는 길", href: "/company/location" },
    ],
  },
];

export const companyTabs: NavChild[] = navItems.find(
  (item) => item.title === "COMPANY",
)!.children;
