# Advancing Cognitive Screening: Automated Web-Based MMSE
This repository contains the materials for the Master's thesis "Advancing Cognitive Screening: Automated Web-Based
MMSE". The thesis was supervised by Mohamad Gharib.

## Abstract
Assessing cognition is crucial for diagnosing and tracking cognitive impairments and neurodegenerative disorders [1].
The Mini-Mental State Examination (MMSE) is a widely used cognitive screening tool [2]. However, its limitations can
affect its effectiveness and accessibility [3]. This thesis focuses on developing a web-based MMSE that incorporates
automated scoring, validation, machine learning, and natural language processing to enhance its functionality and
accuracy [4].

The primary objective of this research is to develop a novel web-based MMSE system and compare it to the traditional
pen-and-paper version to investigate how emerging technologies can improve cognitive assessment [5]. The aim is to
address the challenges associated with traditional MMSE administration and streamline the cognitive assessment
process [6].

The thesis contributes a novel web-based MMSE system with automated scoring and validation capabilities. It also
evaluates the usability of the web-based MMSE and compares its performance to the traditional version [7]. The
contributions have the potential to impact clinical practice and research in cognitive assessment, benefiting healthcare
professionals, patients, and their families [8].

## Repository Structure
The repository is organized as follows:

- `theory`: LaTeX source files for the thesis document
- `web-mmse`: source code for the web-based MMSE application
- `presentations`: additional materials used for presentations

## Getting Started
To run the web-based MMSE application:

1. Clone the repository: `git clone https://github.com/ktenman/master-thesis-ut.git`
2. Go to the web-mmse directory: `cd master-thesis-ut/web-mmse`
3. Install the dependencies: `mvn install && npm install`
4. Start all containers: `sh start-all-containers.sh`
5. Start the application: `mvn spring-boot:run and npm start`
6. Open your web browser and go to: http://localhost:9000

## License
This project is licensed under the MIT License. See the LICENSE file for details.

## Acknowledgments
The support and guidance provided by the Faculty of Science and Technology, Institute of Computer Science, and the
Computer Science Curriculum at the University of Tartu are acknowledged.

Special thanks are extended to Eduardo Brito for allowing the use of his master thesis Git repository as a reference and
inspiration for this project.

## Tools Used
The tools that facilitated the writing and development of this thesis should also be appreciated. Claude AI, Grammarly,
SonarLint, LaTeX, and GitHub Copilot were instrumental in the process. However, numerous other tools, extensions, and
development environments also contributed to the efficiency of the work, with or without the involvement of AI. Appendix
III provides a comprehensive overview of the writing process, detailing the tools employed in the creation of this
thesis.

## References

[1] Petersen, R. C. (2011). Mild cognitive impairment. New England Journal of Medicine, 364(23), 2227-2234.

[2] Folstein, M. F., Folstein, S. E., & McHugh, P. R. (1975). "Mini-mental state": A practical method for grading the
cognitive state of patients for the clinician. Journal of Psychiatric Research, 12(3), 189-198.

[3] Tombaugh, T. N., & McIntyre, N. J. (1992). The mini‐mental state examination: A comprehensive review. Journal of the
American Geriatrics Society, 40(9), 922-935.

[4] Wild, K., Howieson, D., Webbe, F., Seelye, A., & Kaye, J. (2008). Status of computerized cognitive testing in aging:
A systematic review. Alzheimer's & Dementia, 4(6), 428-437.

[5] Bauer, R. M., Iverson, G. L., Cernich, A. N., Binder, L. M., Ruff, R. M., & Naugle, R. I. (2012). Computerized
neuropsychological assessment devices: Joint position paper of the American Academy of Clinical Neuropsychology and the
National Academy of Neuropsychology. Archives of Clinical Neuropsychology, 27(3), 362-373.

[6] Zygouris, S., & Tsolaki, M. (2015). Computerized cognitive testing for older adults: A review. American Journal of
Alzheimer's Disease & Other Dementias®, 30(1), 13-28.

[7] Kaye, J., Mattek, N., Dodge, H. H., Campbell, I., Hayes, T., Austin, D., ... & Pavel, M. (2014). Unobtrusive
measurement of daily computer use to detect mild cognitive impairment. Alzheimer's & Dementia, 10(1), 10-17.

[8] Weuve, J., Barnes, L. L., Mendes de Leon, C. F., Rajan, K. B., Beck, T., Aggarwal, N. T., ... & Evans, D. A. (2018).
Cognitive aging in black and white Americans: Cognition, cognitive decline, and incidence of Alzheimer disease dementia.
Epidemiology, 29(1), 151-159.
