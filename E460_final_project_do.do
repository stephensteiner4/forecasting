clear

set more off

/*
This is the do file for our Econ 460 final project, where we are forecasting the
value of the MEI for the month of October.
*/

use "C:\Users\ssteiner4\Documents\Fall_18\Econ_460\e460_project\avg_unemp_mei.dta"

// Run AICs to see which AR(p) model might work best

reg mei L(1/5).mei L(1/5).avgur if time>=tm(1977m6), r
estimates store ar05un05

reg mei L(1/6).mei L(1/6).avgur if time>=tm(1977m6), r
estimates store ar06un06

reg mei L(1/7).mei L(1/7).avgur if time>=tm(1977m6), r
estimates store ar07un07

reg mei L(1/8).mei L(1/8).avgur if time>=tm(1977m6), r
estimates store ar08un08

reg mei L(1/9).mei L(1/9).avgur if time>=tm(1977m6), r
estimates store ar09un09

reg mei L(1/10).mei L(1/10).avgur if time>=tm(1977m6), r
estimates store ar10un10

reg mei L(1/11).mei L(1/11).avgur if time>=tm(1977m6), r
estimates store ar11un11

reg mei L(1/12).mei L(1/12).avgur if time>=tm(1977m6), r
estimates store ar12un12

estimate stats ar05un05 ar06un06 ar07un07 ar08un08 ar09un09 ar10un10 ar11un11 ar12un12

reg mei L(1/5).mei L(1/10).avgur if time>=tm(1977m6), r
estimates store ar05un10

reg mei L(1/6).mei L(1/10).avgur if time>=tm(1977m6), r
estimates store ar06un10

reg mei L(1/7).mei L(1/10).avgur if time>=tm(1977m6), r
estimates store ar07un10

reg mei L(1/8).mei L(1/5).avgur if time>=tm(1977m6), r
estimates store ar08un10

reg mei L(1/9).mei L(1/10).avgur if time>=tm(1977m6), r
estimates store ar09un10

reg mei L(1/10).mei L(1/10).avgur if time>=tm(1977m6), r
estimates store ar10un10

reg mei L(1/11).mei L(1/10).avgur if time>=tm(1977m6), r
estimates store ar11un10

reg mei L(1/12).mei L(1/10).avgur if time>=tm(1977m6), r
estimates store ar12un10

estimate stats ar05un10 ar06un10 ar07un10 ar08un10 ar09un10 ar10un10 ar11un10 ar12un10

// Best AIC: ar08un10, -474.360

reg mei L(1/5).mei L(1/18).avgur if time>=tm(1978m1), r
estimates store ar05un18

reg mei L(1/6).mei L(1/18).avgur if time>=tm(1978m1), r
estimates store ar06un18

reg mei L(1/7).mei L(1/18).avgur if time>=tm(1978m1), r
estimates store ar07un18

reg mei L(1/8).mei L(1/18).avgur if time>=tm(1978m1), r
estimates store ar08un18

reg mei L(1/9).mei L(1/18).avgur if time>=tm(1978m1), r
estimates store ar09un18

reg mei L(1/10).mei L(1/18).avgur if time>=tm(1978m1), r
estimates store ar10un18

reg mei L(1/11).mei L(1/18).avgur if time>=tm(1978m1), r
estimates store ar11un18

reg mei L(1/12).mei L(1/18).avgur if time>=tm(1978m1), r
estimates store ar12un18

estimate stats ar05un18 ar06un18 ar07un18 ar08un18 ar09un18 ar10un18 ar11un18 ar12un18

reg mei L(1/8).mei L(1/10).avgur if time>=tm(1978m1), r
estimates store ar08un10

reg mei L(1/8).mei L(1/12).avgur if time>=tm(1978m1), r
estimates store ar08un12

reg mei L(1/8).mei L(1/13).avgur if time>=tm(1978m1), r
estimates store ar08un13

reg mei L(1/8).mei L(1/14).avgur if time>=tm(1978m1), r
estimates store ar08un14

reg mei L(1/8).mei L(1/15).avgur if time>=tm(1978m1), r
estimates store ar08un15

reg mei L(1/8).mei L(1/16).avgur if time>=tm(1978m1), r
estimates store ar08un16

reg mei L(1/8).mei L(1/17).avgur if time>=tm(1978m1), r
estimates store ar08un17

reg mei L(1/8).mei L(1/17).avgur if time>=tm(1978m1), r
estimates store ar11un18

reg mei L(1/8).mei L(1/18).avgur if time>=tm(1978m1), r
estimates store ar08un18

estimate stats ar08un10 ar08un12 ar08un13 ar08un14 ar08un15 ar08un16 ar08un17 ar08un18

reg mei L(1/9).mei L(1/18).avgur if time>=tm(1978m3), r
estimates store ar09un18

reg mei L(1/9).mei L(1/19).avgur if time>=tm(1978m3), r
estimates store ar09un19

reg mei L(1/9).mei L(1/20).avgur if time>=tm(1978m3), r
estimates store ar09un20

reg mei L(1/10).mei L(1/18).avgur if time>=tm(1978m3), r
estimates store ar10un18

reg mei L(1/10).mei L(1/19).avgur if time>=tm(1978m3), r
estimates store ar10un19

reg mei L(1/10).mei L(1/20).avgur if time>=tm(1978m3), r
estimates store ar10un20

reg mei L(1/8).mei L(1/18).avgur if time>=tm(1978m3), r
estimates store ar08un18

reg mei L(1/8).mei L(1/19).avgur if time>=tm(1978m3), r
estimates store ar08un19

reg mei L(1/8).mei L(1/20).avgur if time>=tm(1978m3), r
estimates store ar08un20

estimate stats ar09un18 ar09un19 ar09un20 ar10un18 ar10un19 ar10un20 ar08un18 ar08un19 ar08un20








