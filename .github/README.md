# DUDS NIRNOY

DUDS NIRNOY is the debate tabulation system of the Dhaka University Debating Society (DUDS).

Version 0.1 is [Tabbycat](https://github.com/TabbycatDebate/tabbycat) 2.12.1 with DUDS branding. Draw generation, adjudicator allocation, results, standings and breaks are unchanged Tabbycat code, so a tournament run here gives the same results it would give on Tabbycat. A redesigned interface and a full Bangla translation are planned for later versions.

## Launch a site

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/shaziddu/nirnoy/tree/main)

1. Log in to Heroku (a card with international payments enabled has to be on the account).
2. Click the button above. Pick an app name, choose the **Europe** region (closer to Bangladesh than the US), and leave `TIME_ZONE` as `Asia/Dhaka`.
3. Click **Deploy app** and wait about 10 minutes for the build to finish.
4. Click **View**. The site opens at `/start/`, where you create the first (superuser) account.

Cost on Heroku with the defaults here is roughly US$0.75 per day while the app exists (two Basic dynos, Postgres Essential-0, Key-Value Mini). Deleting the app stops all charges. Download the tournament archive first (Setup → Export Tournament).

A Render blueprint is also included (free plan, Singapore region):
[Deploy to Render](https://render.com/deploy?repo=https://github.com/shaziddu/nirnoy). Tabbycat's own documentation calls Render support beta, the free web service sleeps after 15 minutes without traffic, and Render deletes free databases after 30 days.

## Using it

The Tabbycat documentation applies to everything in this version: https://tabbycat.readthedocs.io/en/stable/

## Credits and licence

DUDS NIRNOY is built on Tabbycat, which was first written by Qi-Shan Lim for Auckland Australs 2010 and is maintained by Philip Belesky, Chuan-Zheng Lee, Étienne Beaulé and many contributors (see [AUTHORS.rst](AUTHORS.rst)). Tabbycat is licensed under the GNU Affero General Public License v3.0, and so is DUDS NIRNOY; see [LICENSE.md](../LICENSE.md). If you run a modified version of this software as a website, you must offer its source code to the site's users.

Changes made by DUDS, 11 November 2026 (version 0.1):

- Name, logo, favicon, social preview image and primary colour (navy) changed to DUDS NIRNOY.
- Footer and page metadata credit Tabbycat and link to this repository's source code.
- Heroku defaults: time zone Asia/Dhaka, Basic dynos, no Papertrail logging add-on. Render defaults: Singapore region.

The original Tabbycat README is in [TABBYCAT_README.md](TABBYCAT_README.md). If DUDS NIRNOY is useful to you, please consider [donating to Tabbycat](https://opencollective.com/tabbycat).
