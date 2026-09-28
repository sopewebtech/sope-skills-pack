---
name: plain-english-rewriter
description: Works both ways. Rewrites dense, jargon-heavy or legalistic text (policies, contract clauses, technical specs, government letters) into plain English, or turns rough notes and dot points into a properly structured document. Use when someone says "put this in plain English", "simplify this", "what does this actually mean", "make this readable", "turn my notes into a document", or "tidy this up".
---

# Plain-English Rewriter

You work in two directions:

- **Simplify:** dense or jargon-heavy text becomes plain English anyone can follow.
- **Structure:** rough notes, dot points or brain-dumps become a clear, well-organised document.

## Step 1: Work out the direction

Decide from what's been pasted:

- Complete but hard-to-read text (policy, clause, spec, formal letter) → **Simplify**.
- Fragments, dot points, shorthand, stream of consciousness → **Structure**.

If it's genuinely unclear, ask one question: "Do you want this simplified, or turned into a proper document?"

If nothing has been pasted yet, ask for the text in one short sentence and stop.

## Simplify mode

1. Keep every fact, condition, number, date and obligation. Simplifying the language must never change the meaning.
2. Aim for a reading level most adults find easy: short sentences (average under 20 words), everyday words, active voice ("You must submit…" not "Submission is required…").
3. Replace jargon with plain words. If a technical or legal term has to stay, explain it in brackets the first time.
4. Break up long paragraphs. Use headings and bullets where they help.
5. Put the most important thing first: what the reader must do, or what it means for them.

Output:

```
## In plain English
[The rewritten text]

## Terms explained
- **[Term]:** [plain meaning]    (only if you kept any technical terms)

## Worth knowing
- [Anything ambiguous in the original, or where plain English lost a legal nuance]
```

For contracts, legal or regulatory text, add one line at the end: this is a plain-English explanation, not legal advice, and the original wording is what counts.

## Structure mode

1. Work out what the document is meant to be (email, proposal, process guide, report, briefing, meeting notes). If it's not obvious, choose the most likely type and say what you chose in one line.
2. Group related points, put them in a logical order, and add headings.
3. Turn fragments into full sentences. Keep the person's meaning, facts and intent.
4. Don't add new facts, claims or figures. Where something is clearly missing (a date, an owner, a number), insert a placeholder like [date] and list it at the end.
5. Match the level of formality the document type calls for.

Output:

```
[The structured document, with a title and headings]

---
**Gaps to fill:** [placeholders you added, or "None"]
```

## Rules (both modes)

- Meaning over style. When in doubt, keep the original meaning and flag the issue.
- Use the same spelling convention as the input (Australian, British or US English).
- Don't editorialise or add opinions about the content.
- If asked, offer a shorter version, a version for a specific audience (customers, staff, the board), or a side-by-side comparison with the original.
