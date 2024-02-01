---
title: "After Action: ARRL Field Day 2023"
date:  2023-06-30T08:36:56-04:00
draft: false
description: 
noindex: false
featured: true
pinned: false
# comments: false
series:
#  - 
categories:
  - Projects
  - Events
  - After Action
tags:
  - ARRL
  - Field Day
  - Raspberry Pi
  - N3FJP
  - Logging
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

We had our first field test of our new logging solution while having a great
time during the ARRL Field Day June 24th and 25th.

<!--more-->

This was my first [ARRL] Field Day and I greatly enjoyed working with the guys from
the [Solivita Radio Cloud][SRC]. I also had the option to work it with the
[Orlando Amateur Radio Club][OARC] who was teaming up again this year with the
[Lake Monroe Amateur Radio Society][LMARS], but thought working with the smaller 
club I would get more radio time.

As I had [previously]({{< ref "/arrl-field-day-2023" >}}) talked about our Field Day
preparations, we had a new logging solution that had been untested in the field that
we were very hopeful for and were very pleased with the results. During our monthly
meeting last night it was commented, going forward that is the way to go. We did have
one hiccup during the night that required us to reboot the Raspberry Pi 4B running the
logging software but the system was redundant enough that we didn't lose any contacts
while doing so. The other Raspberry Pi 4B running DNS, DHCP and NTP worked without any
issues through the entire activity.

We had six laptops setup so I did have to deploy both the 8-port and 5-port switches
with a cross-connnect between them. The choice to go wired versus wireless was
probably a good choice with all the RF going on. One possible addition that was
suggested was to add ferrite beads to the network cables to help ensure there's no RF
being passed through it causing issues, though that didn't appear to be an issue.

We worked 10, 15, 20, 40 and 80m bands on all modes as a 3A class designation. Our
choice of class has been another topic we've discussed after and going forward we will
probably be running more stations. We had the stations available and at times had 
operators standing by waiting for someone to take a break so we will probably run 4A
or even 5A going forward. We look at prioritizing having fun and less concerned on how
well we scored against other clubs as long as we do better than we did previously.

For myself I ended up with almost a third of the total contacts, and around 80% of all
our digital contacts, working the digital modes with my [Yaesu FT-991A][FT991A] rig.
Overall, we had 688 contacts made over all three modes and five bands.

| Band  | CW  | Phone | Dig | Total | %   |
|-------|-----|-------|-----|-------|-----|
| 80    | 1   | 3     | 0   | 4     | 1   |
| 40    | 95  | 60    | 29  | 184   | 27  |
| 20    | 36  | 67    | 188 | 291   | 42  |
| 15    | 14  | 124   | 45  | 183   | 27  |
| 10    | 0   | 26    | 0   | 26    | 4   |
|       |     |       |     |       |     |
| Total | 146 | 280   | 262 | 688   | 100 |

We had nine operators, including myself, and everyone got time to make contacts. We
were able to operator on full bands for most of the 20 hours we were active as we had
two Amateur Extras, six General and one Technician operators. The two extra 
licensed operators only left for a period during the overnight hours as we worked
through the night.

| Operator | Total | %  |
|----------|-------|----|
| KQ4AFY   | 210   | 31 |
| N3GB     | 156   | 23 |
| W9MET    | 149   | 22 |
| KI8JV    | 63    | 9  |
| N2TTR    | 43    | 6  |
| KB4ZBB   | 32    | 5  |
| WB8ZNL   | 17    | 2  |
| KO4CCB   | 9     | 1  |
| WA4LLL   | 9     | 1  |

Some of my memorable contacts would be [JI2IXA] on FT8 from Japan, and [JA9LX] from Japan, [VK4AFU] from Australia on FT4
over 20m. These were my furthest DX contacts that I personally made during the event. As a group we had DX contacts from
Spain, Chile, France, England, Belgium and Italy. We only failed to make contacts in three sections from the United States
and four sections from Canada.

All in all, we were quite pleased with the outcome. The club managed to make more contacts than last year and our new logging
experiment was a big success. As with previous Field Day operations, the club ran all radios off generator power and we only
had to scramble once to refill the generator after it ran out of fuel, we performed a scheduled stop to refuel later in the
early morning hours next time.

[SRC]: https://solivitaradioclub.weebly.com/ "Solivita Radio Club"
[ARRL]: https://www.arrl.org/ "American Radio Relay League"
[OARC]: https://oarc.org/ "Orlando Amateur Radio Club"
[LMARS]: https://www.lmars.org/ "Lake Monroe Amateur Radio Socity"
[FT991A]: https://www.yaesu.com/indexVS.cfm?cmd=DisplayProducts&ProdCatID=102&encProdID=490C4A71118AD0F4E825E89D821B73BB "Yaesu FT-991A All-Band MultiMode Portable Transceiver"
[JI2IXA]: https://www.qrz.com/db/JI2IXA
[JA9LX]: https://www.qrz.com/db/JA9LX
[VK4AFU]: https://www.qrz.com/db/VK4AFU