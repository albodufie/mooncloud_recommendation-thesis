all: build open clean tarr
.PHONY: all clean tarr

latex_summary_input := summary.tex
latex_summary_output := summary.pdf

latex_summary_pdfa := summary.pdfa

latex_thesis_input := thesis.tex
latex_thesis_output := thesis.pdf

latex_pres_input = presentation.tex
latex_pres_output = presentation.pdf

latex ?= pdflatex
# bibtex ?= bibtex
biber ?= biber
gs ?= gs

# img_directory = img
thesis_chapter_directory := chapter
img_directory := images

#  thesis_files := $(thesis_chapter_directory)/index.tex
thesis_files := $(thesis_chapter_directory)/00_prefaction.tex
thesis_files += $(thesis_chapter_directory)/00_thanks.tex
thesis_files += $(thesis_chapter_directory)/01_introduction.tex
thesis_files += $(thesis_chapter_directory)/02_technologies.tex
thesis_files += $(thesis_chapter_directory)/03_recommendationSystems.tex
thesis_files += $(thesis_chapter_directory)/04_solution.tex
thesis_files += $(thesis_chapter_directory)/05_usecase.tex
thesis_files += $(thesis_chapter_directory)/06_conclusion.tex

bib_file = bibliography.bib
bib_file_input = thesis.bcf

files := $(thesis_files)

files += thesis.tex # thesis.pdf
files += $(bib_file)
# need to exclude thesis.pdf because it is a circular dependency,
# $(deps) is used as a dependency for thesis.pdf

img_files := $(img_directory)/api_rest.png
img_files += $(img_directory)/CF_Hybrid_test.png
img_files += $(img_directory)/Django_doc.png
img_files += $(img_directory)/Docker_Config_Container.png
img_files += $(img_directory)/IB_CF_Evaluation_test.png
img_files += $(img_directory)/IB_CF_ex.png
img_files += $(img_directory)/IB_CF_Target_test.png
img_files += $(img_directory)/logo.jpg
img_files += $(img_directory)/MC_Rec_NSM_container_noV.png
img_files += $(img_directory)/MC_Rec_NSM_container.png
img_files += $(img_directory)/MC_Rec_NSM_container(R).png
img_files += $(img_directory)/MC_Rec_NSM_Tree.png
img_files += $(img_directory)/MCRS_adminpage_evaluationEX_add.png
img_files += $(img_directory)/MCRS_adminpage_evaluationEX.png
img_files += $(img_directory)/MCRS_adminpage.png
img_files += $(img_directory)/MCRS_homepage.png
img_files += $(img_directory)/MCRS_taxdetails.png
img_files += $(img_directory)/MCRS_taxindex.png
img_files += $(img_directory)/MCRS_taxnodedetails.png
img_files += $(img_directory)/MoonCloudRecommendation_ER.png
img_files += $(img_directory)/recommender_systems.png
img_files += $(img_directory)/Security_Compliance_Evaluation.png
img_files += $(img_directory)/UB_CF_ex.png
img_files += $(img_directory)/UB_CF_test.png
img_files += $(img_directory)/UML_MoonCloud_HowToDo.png


summary_files := $(latex_summary_input)


presentation_files :=  $(latex_pres_input)
presentation_files += slides.tex


# aux_files := *.aux

# deps := $(files)
all_deps := $(files) $(img_files)

# tar_deps := $(all_deps)
# tar_deps += $(summary_files)

#tar_dest  := /media/nicola/Drive/BackupTar/thesis3.tar.bz2
#gdrive_dest_dir := /home/nicola/GDrive
#gdrive_dest_file := /home/nicola/GDrive/backs-tar/thesis3.tar.bz2

tar_exclude := .git

$(latex_thesis_output): $(all_deps) Makefile
	$(latex) -file-line-error --shell-escape $(latex_thesis_input)
	$(biber) $(bib_file_input)
	$(latex) -file-line-error --shell-escape $(latex_thesis_input)
	$(latex) -file-line-error --shell-escape $(latex_thesis_input)
	# latexmk -latexoption=-file-line-error -latexoption=--shell-escape \
	#	--pdf $(latex_thesis_input)

$(latex_summary_output): $(summary_files)
	$(latex) -file-line-error $(latex_summary_input)
	$(latex) -file-line-error $(latex_summary_input)

$(latex_summary_pdfa): $(latex_summary_output)
	$(gs) -dCompatibilityLevel=1.4 \
			-dPDFA -dBATCH -dNOPAUSE \
			-dNOOUTERSAVE -sPDFACompatibilityPolicy=2 \
			-sProcessColorModel=DeviceCMYK \
			-sDEVICE=pdfwrite \
			-sOutputFile=$(latex_summary_pdfa) \
			$(latex_summary_output)

$(latex_pres_output): $(presentation_files)
	$(latex) --file-line-error $(latex_pres_input)
	$(latex) --file-line-error $(latex_pres_input)

#$(tar_dest): $(tar_deps)
#	tar --exclude=$(tar_exclude) -cjf $(tar_dest) $(PWD)
#	test -d $(gdrive_dest_dir) && cp $(tar_dest) $(gdrive_dest_file)
#	test -d $(gdrive_dest_dir) && ls -l $(gdrive_dest_file)

build: $(latex_thesis_output)
build: $(latex_summary_output)
build: $(latex_pres_output)

summary: $(latex_summary_output) open-summary clean tarr

open:
	gvfs-open $(latex_thesis_output) 2> /dev/null &

open-summary:
	gvfs-open $(latex_summary_output) 2> /dev/null &

open-presentation:
	gvfs-open $(latex_pres_output) 2> /dev/null &

#tarr: $(tar_dest)


clean:
	rm -f *.aux
	rm -f *.log
	rm -f *.toc
	rm -f *.out
	rm -f *.nav
	rm -f *.idx
	rm -f *.pyg
	rm -f *.bbl
	rm -f *.blg
	rm -f *.lof
	rm -f *.bcf
	
	rm -f *.ilg
	rm -f *.ind
	rm -f *.fdb_latexmk
	rm -f thesis.synctex.gz
