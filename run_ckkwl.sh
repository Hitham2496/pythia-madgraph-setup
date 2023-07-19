#!/bin/bash
main89 ckkwl-wm.cmnd ckkwl-wm.hepmc && rivet -a ATLAS_2014_I1319490 ckkwl-wm.hepmc -H ckkwl-wm.yoda
main89 ckkwl-wp.cmnd ckkwl-wp.hepmc && rivet -a ATLAS_2014_I1319490 ckkwl-wp.hepmc -H ckkwl-wp.yoda
yodastack ckkwl-wm.yoda ckkwl-wp.yoda -o ckkwl.yoda
rivet-mkhtml ckkwl.yoda:"CKKWL W inc." ckkwl-wm.yoda:"CKKWL W-" ckkwl-wp.yoda:"CKKWL W+"  --errs -o rivet-plots-w-test/
