---
title: "TPMS+UHF Interference"
description: "Encountering weird TPMS issues"
summary: |
  Recently was challenged with random TPMS system messages on my vehicle
  which sent me on a scavenger hunt of sorts. Mentioning it on local
  repeaters it seemed like something others may have encountered but had
  not tracked down the cause.
date: 2022-12-17T18:57:01-05:00
featured_image: '/images/20221011_124433x1024.png'
tags: ["tpms","uhf","interference"]
---

## Introduction

So I have only fairly recently entered into the ham radio community. 
As such, just starting out my first endeavor was my mobile rig in my
vehicle, a 2021 Hyundai Palisade. I opted for a 
[Yaesu FTM-400XDR][FTM-400XDR] with the [Comet CA-2x4SRNMO][CA-2x4SRNMO]
dual-band antenna which I mounted on the passenger side of the engine hood
using a [Diamond K412SNMO][K412SNMO] trunk-lip mount.

I have been operating my vehicle with this configuration for a couple months
now since I purchased the radio and antenna without any issues. During a
recent club fox hunt I had opened the sunroof and had it jump the track
when closing it so the vehicle spent a week in the shop while they replaced
the sunroof track. Since I got the vehicle back I have been experiencing 
random TPMS system message alerts popping up and the tire pressure on all
four tires is not registering. Not knowing what was going on and tire
pressure being a part of the safety system of the vehicle I took it into
the service center to have it checked out.

## Initial findings

So the initial findings from the service center was they could not find any
diagnostic codes in the system to show a problem and driving around they were
unable to reproduce the alerts. The technicians best guess was given the 
antenna placement and proximity of the TPMS receiver module behind the front
passenger tire wheel well that there was some interference and that turning
off the radio when this happened should clear the alert and confirm this. The
suggestion then was to move the antenna to the driver side away from the TPMS
module to remove the interference.

Given the random nature of these alerts it has been hard to try and actually
troubleshoot. Finally this evening the TPMS alert reared its head again while
my wife and I were driving back home. I had the radio on and had been 
monitoring one of the local UHF band repeaters but was not transmitting. So 
following the suggestion from the service tech, I turned the radio off so I
was neither receiving or transmitting. The alert did not clear immediately
as they had theorized.

## Digging into things

So obviously I was initially suspicious of the service technicians finding
and thought it a bit dubious given I had been operating the vehicle for a
couple months without this problem that only started after it had been in
the service department. I am not a mechanic, but I do understand the TPMS
sensors inside the tires have a way to transmit to the onboard system of
the vehicle in order to give you the pressure and provide alerts. It also
obviously is not wired given the wheels are always spinning. When the alert
happened again, and turning the radio off did not result in the expressed
probable result I became a bit more suspicious as to if that was legimately
the culprit or a service tech trying to blow smoke up my posterior and point
the blame on something installed after-market.

I started doing a bit more of a deeper investigation on the TPMS on my
vehicle and that is where the interesting details began to take shape. They
did seem to point at some potential validity to the service techs theory
that my antenna was the source. I found that the TPMS sensors apparently
communicate on either the 315 MHz or 433 MHz bands depending on region. I
found this odd as 433 MHz is in the middle of the 70cm UHF amateur band but
given that I had been monitoring a 70cm UHF band repeater on 443 MHz it did
seem possible. Looking a bit further it seemed like pre-2018 vehicles had 
the sensor frequency on 315 MHz but the newer models all appeared to be using
433 MHz from what I could tell. This also could be different between vehicle
vendors, but this is is all according to the OEM parts for Hyundai.

## Action plan

So with this seeming to indicate interference between my mobile rig antenna
and TPMS sensors I have taken the next logical step and moved the antenna to
the driver side of the hood. After a quick radio check with NO4TNL, I was
able to confirm my signal was still solid and had not been affected by the
move.

 Now all I can do is give it some time and see if the moving of the antenna
 stops the TPMS system messages from popping up, but given how random they
 have been that may not exactly be quantifiable or definative. Only time will
 tell at this point.


[FTM-400XDR]: https://www.hamradio.com/detail.cfm?pid=H0-014544 "Yaesu FTM-400XDR Dual Band transceiver"
[CA-2x4SRNMO]: https://www.hamradio.com/detail.cfm?pid=H0-011146 "Comet CA-2x4SRNMO mobile antenna"
[K412SNMO]: https://www.hamradio.com/detail.cfm?pid=H0-006521 "Diamon K412SNMO NMO mount"