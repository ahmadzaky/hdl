#!/bin/sh

echo "^ Carrier ^ Add on Board ^"
find ./ -maxdepth 2 -path ./common -prune -o -type d -print | 
	awk -F'/' '{if (NF == 3) {print "| " $NF " | " $2 " | [[repo>hdl/tree/master/projects/"  $2 "]] |" }}' | \
	sed -e 's|/\.||' | grep -v " common " | grep -v " doc " | sort | \
	sed -e 's/zed/\[\[xilinx>products\/boards-and-kits\/1-8dyf-11.html|zed\]\]/' \
	    -e 's/zc702/\[\[xilinx>zc702\]\]/' \
	    -e 's/zc706/\[\[xilinx>zc706\]\]/' \
	    -e 's/vc707/\[\[xilinx>vc707\]\]/' \
	    -e 's/kc705/\[\[xilinx>kc705\]\]/' \
	    -e 's/kcu105/\[\[xilinx>kcu105\]\]/' \
	    -e 's/zcu102/\[\[xilinx>zcu102\]\]/' \
	    -e 's/vck190/\[\[xilinx>vck190\]\]/' \
	    -e 's/vcu118/\[\[xilinx>vcu118\]\]/' \
	    -e 's/adrv2crr_fmc /\[\[adi>adrv2crr-fmc|adrv2crr_fmc\]\] /' \
	    -e 's/adrv2crr_fmcomms8/\[\[adi>adrv2crr-fmc|adrv2crr_fmc\]\] + \[\[adi>eval-ad-fmcomms8-ebz|fmcomms8\]\]/' \
	    -e 's/ccbob_cmos/\[\[adi>ADRV1CRR-BOB|ccbob_cmos\]\]/' \
	    -e 's/ccbob_lvds/\[\[adi>ADRV1CRR-BOB|ccbob_lvds\]\]/' \
	    -e 's/ccfmc_lvds/\[\[adi>ADRV1CRR-FMC|ccfmc_lvds\]\]/' \
	    -e 's/ccpackrf_lvds/\[\[adi>cn0412|ccpackrf_lvds\]\]/' \
	    -e 's$a10gx$\[\[https://www.intel.com/content/www/us/en/programmable/products/boards_and_kits/dev-kits/altera/kit-a10-gx-fpga.html|a10gx\]\]$' \
	    -e 's$a10soc$\[\[https://www.intel.com/content/www/us/en/programmable/products/boards_and_kits/dev-kits/altera/arria-10-soc-development-kit.html|a10soc\]\]$' \
	    -e 's$s10soc$\[\[https://www.intel.com/content/www/us/en/programmable/products/boards_and_kits/dev-kits/altera/stratix-10-soc-development-kit.html|s10soc\]\]$' \
	    -e 's$c5soc$\[\[https://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&CategoryNo=167&No=819|c5soc\]\]$' \
	    -e 's$coraz7s$\[\[https://digilent.com/shop/cora-z7-zynq-7000-single-core-and-dual-core-options-for-arm-fpga-soc-development/|coraz7s\]\]$' \
	    -e 's$de10nano$\[\[https://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&CategoryNo=167&No=1046|de10nano\]\]$'


