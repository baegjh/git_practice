# doftech-next

Next.js (App Router) PoC rebuild of the mirrored `doftech-source/` site
(a static ASP.NET + jQuery + Swiper site). Goal: demonstrate a
component-based architecture that the rest of the site can follow, not a
pixel-perfect clone.

## Pages implemented

- `/` — home page with a Swiper hero and the three-card menu banner
- `/company/ceo` — CEO greeting + value cards
- `/company/portfolio` — client grid (placeholder tiles, see below)
- `/company/location` — office tabs with embedded Google Maps

Other nav items (SOLUTION, SERVICE, R&D, CAREERS, and most of COMPANY)
are wired into the header but not yet built — they follow the same
pattern as `app/company/*`.

## Notable choices

- No images were pulled from the original site (only HTML/CSS/JS were
  mirrored), so hero backgrounds and client logos are CSS
  gradients/placeholders. Swap in real assets before shipping anything
  public.
- Fonts fall back to system Korean fonts (`Pretendard`, `맑은 고딕`, …)
  instead of the original NanumSquare/Noto Sans CJK KR files, which
  weren't mirrored either.
- Header/mobile menu/company tabs are re-implemented in React state
  instead of the original jQuery DOM manipulation.

## Getting started

```bash
npm install
npm run dev
```

Open http://localhost:3000.
