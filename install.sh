#!/bin/sh

work_dir=$(pwd)
log_dir=$work_dir/install.log


pdflatex_install() {
	echo "`date --iso-8601=seconds` PDF Latex Install." >> $log_dir
	sudo apt-get update -y
	sudo apt-get upgrade -y
	sudo apt-get install --no-install-recommends texlive-full xdvik-ja dvipsk-ja gv biber -y
	sh /vagrant_data/clear.sh
	sh /vagrant_data/latex.sh
}

ros_indigo_install() {
	echo "`date --iso-8601=seconds` PDF Latex Install." >> $log_dir
	sh /vagrant_data/ros_indigo_install.sh
}

pdflatex_install
ros_indigo_install
