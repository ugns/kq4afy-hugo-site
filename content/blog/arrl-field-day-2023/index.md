---
title: "ARRL Field Day 2023"
date: 2023-06-01T23:58:46-04:00
draft: false
description: 
noindex: false
featured: true
pinned: true
# comments: false
series:
#  - 
categories:
  - Events
  - Projects
tags:
  - ARRL
  - Field Day
  - Raspberry Pi
  - N3FJP
  - Logging
  - Wine
  - Linux
  - Windows 11
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

As we enter the month of June, preparations are underway for ARRL
Field Day later this month June 24th and 25th.

<!--more-->

For this [ARRL] Field Day I planned to work with [Solvita Radio Club][SRC].
During our April meeting we talked about the logging and changes to make
from the way we did it for Winter Field Day. Previously the group had attempted
to use the [N3FJP] Field Day Contest Log software in a networked manner without
much luck so used multiple USB drives. Being as I have an IT background I offered
to work on the networking solution. During our May meeting I presented my results
to the club and we will be utilizing it moving forward. We plan to do a full
dress test the Thursday before Field Day with operatoring stations laptops to
ensure everything is setup and ready to go Saturday.

While the Field Day rules allow logging systems to run on main utility power
while still being considered alternative power so long as radios do not, but I
wanted a solution that could easily run off battery power if needed just the same.
This led me to look at using the Raspberry Pi platform which had low power
requirements and I also happened to have a couple of Raspberry Pi 4B boards just
laying around the shack. I also didn't want to add to the potential RF interference
so I wanted to use wired ethernet connectivity instead of WiFi even though the 4B
has built-in WiFi capability. I also knew that several of us were looking to work
digital modes and would need reliable time sync in place which worked out great as
I also had a couple [Ultimate GPS][GPS] HATs for the Raspberry Pi on hand along with
an [active GPS antenna][GPS-ANT]. I also had several small switches laying around
from my years of home networking so I just grabbed a couple I could use.

As we wanted this entire setup to run isolated, I needed to start with being able
to easily allow any station operator to include thier laptop with minimal problems
so that was the first order of business. I mixed the Ultimate GPS with the DHCP and
NTP server running on my 4GB Raspberry Pi 4B that I put in a [case][SmartPi] with a 7"
[touchscreen][Touchscreen] so it could be easily monitored in the field. For this Pi I just went
with Raspberry Pi OS on a [32GB microSD][32GBSD] card. Given the simple nature
of the setup I just used dnsmasq which provides both DHCP and DNS service for our
small network. For NTP I setup gpsd with the Ultimate GPS and then configured chronyd
to use gpsd as clock source for GPS and PPS. As the 4B had WiFi I also setup an
external NTP pool that could be peered with if tethered to a phone hotspot and then
configured the Pi to provide masqueraded network connectivity if tethered. To keep
it simpled I provided this Pi the hostname `tock` for anyone to configure their laptop
to sync with. The dnsmasq configuration then allowed any machines to be resolved by
their client hostnames.

With the networking control taken care of I next turned to the N3FJP logging. For this
we needed Windows and while there are Windows IoT images available for the Raspberry Pi
this was not going to work for the logging software. After a bit of researching I did
find how to installed Windows 11 Pro on the Pi. This took a few iterations to get right
and I quickly found that a microSD card was not enough space to properly setup on.
Lucky for me I had the 8GB Raspberry Pi 4B and a [case][Argon] that held a 512GB M.2 SSD drive
and I only needed the microSD card for the inital bootstraping. With this I installed
Windows 11 Pro on this ARM64 processor. I thought this would be a problem with the x86
installer for the N3FJP Field Day Contest Log software but was pleasantly surprised to
find it ran in emulation mode just fine. I did have to go through this process a few
times to get things working good. Initially the Pi would only see 4GB of the RAM so I
had to go into the setup and disable the 4GB limit, with the full 8GB available it then
started to perform better. I also did not use the Windows Account, which required doing
the initial out of box (OOB) setup offline so I could setup a Local Account. This was
needed so I could easily remote connect into the Pi from a laptop to manage it. Again
going with simplicity I just named this host as `RPI4-LOGGER` and this would then
become the server in the logging software network config screen.

Installation of the N3FJP was pretty simple and followed the readily available online
documentation. Once registered, I went to the `Network` menu and changed the `Network
Method` to be `TCP` instead of `File Share`. I also needed to make sure the checkbox
was selected for `Enable Status / Chat Functions`. I left the port as the default of
`1000` which works fine. For both the station and server name both were then set to
`RPI4-LOGGER`. On the station operator laptops the station name would then be their
client hostname and the server name would be set to `RPI4-LOGGER`. THe other settings
are the same for clients and server.

Using this method, all connected stations can see which modes and bands are being used
by the other connected stations. The N3FJP Field Day software also presents a notification
to warn you if you change to a band and mode that another station is already using. For
the logging server I set the band and mode to `Other` and `Digital` so that it would not
show on the display as being used.

After presenting this to the club, there were operators asking about running this on a
Linux laptop under Wine. I went back and did some testing and was able to get the software
running under Wine 8.8+ from the WineHQ Staging release. The WineHQ Stable releast of 8.0
I ran into problems with and was unable to get it working properly. I did note that while
I could potentially just run the server under Wine, the port could not use `1000` unless
I ran the software as `root` given the port was less than 1024. This is a Linux limitation
that Windows does not share in that it will only allow the administrator account to bind
to a port under 1024. This does not stop Linux from using port 1000 to connect to the
server as a client.

Now ultimately I am looking to have a 12V to USB-C power adapter in my Go Box design that would
allow me to run both of these Raspberry Pi systems off grid, I don't at this time and will be
a future enhancement. I'm also looking at being able to replace the power adapter for the small
8 port switch with an adapter that could also connect to the 12V LiFePO4 battery solution for
the Go Box. For this Field Day event I will be bringing along an APC UPS to plug the power adapters
for all three devices into and will be able to use either tha main utility power at the outdoor
location we'll be operating or the generator we will be powering our radios. I'll also report
back how everything turned out during the event as well as any issues we encountered. We're looking
to limit the issues by doing the full dress test a couple days prior to make sure all operator
stations are updated to the latest version of the logging software and able to connect to the
logging server.

[SRC]: https://solivitaradioclub.weebly.com/ "Solivita Radio Club"
[ARRL]: https://www.arrl.org/ "American Radio Relay League"
[N3FJP]: http://www.n3fjp.com/fieldday.html "ARRL Field Day Contest Log"
[GPS]: https://www.adafruit.com/product/2324 "Adafruit Ultimate GPS HAT - Mini Kit"
[GPS-ANT]: https://www.adafruit.com/product/960 "GPS Antenna - External Active Antenna"
[32GBSD]: https://a.co/d/b12YXLj "SanDisk 32GB High Endurance MicroSDHC Card"
[Argon]: https://a.co/d/eK6vYcD "Argon ONE M.2 Aluminum Case for Raspberry Pi 4"
[Touchscreen]: https://a.co/d/b12YXLj "Raspberry Pi Official 7 Inch Touch Screen"
[SmartPi]: https://a.co/d/b12YXLj "SmartPi Touch 2 - Case for the Offical Raspberry Pi 7 Inch Touchscreen"
