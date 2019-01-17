clear

set more off

// This do file is the file for the year of forecasts for the E460 final project.

use "C:\Users\ssteiner4\Documents\Fall_18\Econ_460\e460_project\avg_unemp_mei.dta"

tsmktim time, start(1976m6)
tsset time
tsappend, add(12)

reg mei L(1/8).mei L(1/18).avgur
predict mei1
predict sf1, stdf
gen mei1L=mei1-1.645*sf1
gen mei1U=mei1+1.645*sf1

reg mei L(2/9).mei L(2/19).avgur
predict mei2
predict sf2, stdf
gen mei2L=mei2-1.645*sf2
gen mei2U=mei2+1.645*sf2

reg mei L(3/10).mei L(3/20).avgur
predict mei3
predict sf3, stdf
gen mei3L=mei3-1.645*sf3
gen mei3U=mei3+1.645*sf3

reg mei L(4/11).mei L(4/21).avgur
predict mei4
predict sf4, stdf
gen mei4L=mei4-1.645*sf4
gen mei4U=mei4+1.645*sf4

reg mei L(5/12).mei L(5/22).avgur
predict mei5
predict sf5, stdf
gen mei5L=mei5-1.645*sf5
gen mei5U=mei5+1.645*sf5

reg mei L(6/13).mei L(6/23).avgur
predict mei6
predict sf6, stdf
gen mei6L=mei6-1.645*sf6
gen mei6U=mei6+1.645*sf6

reg mei L(7/14).mei L(7/24).avgur
predict mei7
predict sf7, stdf
gen mei7L=mei7-1.645*sf7
gen mei7U=mei7+1.645*sf7

reg mei L(8/15).mei L(8/25).avgur
predict mei8
predict sf8, stdf
gen mei8L=mei8-1.645*sf8
gen mei8U=mei8+1.645*sf8

reg mei L(9/16).mei L(9/26).avgur
predict mei9
predict sf9, stdf
gen mei9L=mei1-1.645*sf9
gen mei9U=mei1+1.645*sf9

reg mei L(10/17).mei L(10/27).avgur
predict mei10
predict sf10, stdf
gen mei10L=mei2-1.645*sf10
gen mei10U=mei2+1.645*sf10

reg mei L(11/18).mei L(11/28).avgur
predict mei11
predict sf11, stdf
gen mei11L=mei11-1.645*sf11
gen mei11U=mei11+1.645*sf11

reg mei L(12/19).mei L(12/29).avgur
predict mei12
predict sf12, stdf
gen mei12L=mei12-1.645*sf12
gen mei12U=mei12+1.645*sf12

egen p=rowfirst(mei1 mei2 mei3 mei4 mei5 mei6 mei7 mei8 mei9 mei10 mei11 mei12) if time>=tm(2018m9)
egen pL=rowfirst(mei1L mei2L mei3L mei4L mei5L mei6L mei7L mei8L mei9L mei10L mei11L mei12L) if time>=tm(2018m9)
egen pU=rowfirst(mei1U mei2U mei3U mei4U mei5U mei6U mei7U mei8U mei9U mei10U mei11U mei12U) if time>=tm(2018m9)

tsline mei p pL pU if time>=tm(2009m1), lpattern (solid dash longdash shortdash)





