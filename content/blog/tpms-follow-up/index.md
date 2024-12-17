---
title: "Follow-up to my TPMS interference"
date: 2023-05-02T10:48:14-04:00
draft: false
description: Following up on my vehicle TPMS issue
noindex: false
featured: true
pinned: false
# comments: false
series:
  - RFI
categories:
#  - 
tags:
 - TPMS
 - UHF
 - interference
# menu:
#   main:
#     weight: 100
#     params:
#       icon:
#         vendor: bs
#         name: book
#         color: '#e24d0e'
authors:
  - jbouse
---

As I had discussed previously my Hyundai Palisade was having an issue
with TPMS interference that service center blamed on my radio. We have
an update!

<!--more-->

## Catching up

So since the issue started happening back in October 2022 after my vehicle
was in the shop for warranty work on the sunroof track, I'd been having
several issues with the electronics systems. The TPMS would randomly pop
up and not be recognizing the sensors in the rims, the blindspot cameras
would flicker or not work at all, and Android Auto would flake out and
stop responding.

The Android Auto issue I removed all other variables making sure the app
was updated on my phone along with the phone itself, and it worked fine in
every other vehicle I used Android Auto in. So I knew it was my vehicle
having an issue.

The TPMS and blindspot surround view camera issue only started after the
vehicle was in the shop, and despite the service center techs original
finding that it was my [Yaesu FTM-400XDR][FTM-400XDR] radio and
[Comet CA-2x4SRNMO][CA-2x4SRNMO] antenna causing the issue, I found the
timing a little too coincidental.

## What we know

I recently picked my vehicle back up from the service center after they
had it for the weekend to look into my complaints. I have since convinced
the service advisor that the issue isn't the radio and antenna as I had
removed them from the vehicle and still had the issues. In fact, upon
delivering the vehicle to the service center without the radio and antenna
installed the TPMS alert was active.

They did find the Android Auto was related to an ICM System update that
needed to be applied which apparently took several hours to perform. Add
this to the list of why buying a vehicle during the COVID crisis wasn't
the best idea, not that I had a choice really in the matter. Thanks for
that Bambi!

The TPMS and surround view cameras communicate with the vehicle over RF
and after they checked their corporate tech-line, found that this
interference is a known issue with a fix involving the application of
faraday tape.

## Where are we now

The ICM system update was performed and Android Auto has been performing
better since I got the vehicle back. I've still had it flip out a few
times while driving, but it is far less frequent than it was previously
occuring. My vehicle is not equipped with the wireless Android Auto so
I do have to use the USB cable and constantly inserting and removing it
can cause issues so perhaps I'll look into investing in the [Motorola MA1
adapter] that has recently come out.

The service center is still waiting on delivery of the faraday tape, so
rather than keeping me in a loaner vehicle until it came in they returned
my vehicle and I'll take it back in when the tape arrives. In the
meantime, I have the [FTM-400XDR] radio and my [CA-2x4SRNMO] antenna
still out of the vehicle and just take my HT and Pi-Star hotspot with me.
As soon as I get the call from the service center that they have received
the faraday tape we will get it scheduled to take it back in to have them
finish the job, and hopefully it will have the systems all working
properly.

I've also asked the service advisor to also look into what frequency the
TPMS sensors are actually operating on as I found in my research that
they can operate on both 315 MHz and 433 MHz. Typically they use the 315
MHz frequency outside of Europe, but with the vehicle being Korean built
I found information stating it could be using 433 MHz which would be
inside the 70cm band plan here in the United States. The way TPMS works is
that when the vehicle is turned on it sends a low frequency ping on 125 KHz to wake the sensors up. The sensors then transmit their information
back to the receiver on the RF frequency, either 315 or 433 MHz. Some
sensors are configurable to use either, while others are one or the other
frequency. Give 433 MHz is inside the UHF band plan and with the number
of UHF repeaters in the area, that could definitely lead to issues and
not just from my radio.

[FTM-400XDR]: https://www.hamradio.com/detail.cfm?pid=H0-014544 "Yaesu FTM-400XDR Dual Band transceiver"
[CA-2x4SRNMO]: https://www.hamradio.com/detail.cfm?pid=H0-011146 "Comet CA-2x4SRNMO mobile antenna"
[Motorola MA1 adapter]: https://motorolasound.com/audio-products/android-auto/ma1 "Motorola MA1 wireless car adapter for Android Auto"
