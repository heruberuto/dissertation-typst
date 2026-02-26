#import "template.typ": dissertation

#show: dissertation.with(
  title: "NLP Methods for Automated Fact-Checking",
  title-czech: "Metody NLP pro automatickou ověřování faktů",
  author: "Ing. Herbert Ullrich",
  supervisor: "Ing. Jan Drchal, Ph.D.",
  department: "Department of Computer Science",
  year: "2026",

  abstract-en: [
    // TODO: add English abstract
  ],

  abstract-cs: [
    // TODO: add Czech abstract
  ],
)

// ── Chapters ─────────────────────────────────────────────────────────────

#include "chapters/1_introduction.typ"

// TODO: add further chapters as they are written
// #include "chapters/2_sota.typ"
// #include "chapters/3_current_contributions.typ"
// #include "chapters/4_dissertation_plan.typ"
// #include "chapters/5_averitec.typ"
// #include "chapters/6_fever.typ"
// #include "chapters/7_averimatec.typ"
// #include "chapters/8_conclusion.typ"

// ── Bibliography ──────────────────────────────────────────────────────────

#bibliography("dissertation.bib", style: "apa")
