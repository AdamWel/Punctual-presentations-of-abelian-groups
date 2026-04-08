# Punctual Presentations of Abelian Groups

This repository contains the research, formal documentation, and LaTeX source files for the Bachelor's thesis titled **"Punctual presentations of abelian groups"**. This work was submitted by **Adam Joachim Wełnicki** to the **University of Warsaw, Faculty of Philosophy** in 2025, under the supervision of **Dr. Michał Wrocławski**.

## Project Overview
The thesis investigates the intersection of **Computable Structure Theory** and **Primitive Recursion**. The primary focus is on **Punctual Structures** (also known as fully primitive recursive structures), which are defined as structures over a finite signature where the domain is the set of natural numbers ($\omega$) and all operations and relations are primitive recursive.

## Key Research Findings
The research analyzes the "punctual robustness" of specific classes of groups—defined as whether every computable member of a class admits a punctual presentation:

* **Torsion-Free Abelian Groups:** These are proven to be **punctually robust**. The thesis shows that every computable torsion-free abelian group admits a punctual presentation.
* **Torsion Abelian Groups:** These are proven **not** to be punctually robust. The research demonstrates that not all computable torsion abelian groups admit a punctual presentation.
* **Correction of Literature:** The work provides detail-oriented proofs originally sketched in existing literature and **corrects a mistake** in previous proofs regarding the approximation of parameters for torsion groups.

## Computational Hierarchy
The thesis situates punctual structures within a hierarchy of computational models:
1.  **Automatic Structures:** A restrictive class limited to virtually abelian groups and linear-time computation.
2.  **PTIME Structures:** Polynomial-time structures which allow for more complex operations but are sensitive to domain representation.
3.  **Punctual Structures:** A middle ground that is broader than automatic structures while maintaining uniform totality and avoiding unbounded computation.

## Repository Contents
* `pracaLicencjacka.tex`: The main LaTeX thesis document.
* `bibliografia.bib`: BibTeX file containing the full bibliography for the research.
* `Punctual_presentations_of_abelian_groups.pdf`: The complete rendered thesis.

## Primary References
* **Kalimullin, I., Melnikov, A., & Ng, K. M. (2017):** *Algebraic structures computable without delay*.
* **Cenzer, D., & Remmel, J. (1992):** *Polynomial-time abelian groups*.
* **Oliver, G. P., & Thomas, R. M. (2005):** *Automatic presentations for finitely generated groups*.

---
**Keywords:** fully primitive recursive structures, punctual structures, torsion-free groups, torsion groups, punctually robust classes.
