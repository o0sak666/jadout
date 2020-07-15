REM jarÌ§²Ù–¼‚ÌÄŞ¯Ä‚ğÊ²Ìİ‚É’uŠ·‚µ‚½Ì«ÙÀŞ‚ğì‚Á‚Ä‚»‚Ì’†‚Éjar‚ğ‰ğ“€‚µjad‚Å•¡‡‚·‚é

setlocal enabledelayedexpansion

for %%V in ( *.jar ) do (
	@set tmp=%%V&mkdir !tmp:.=-!
	cd !tmp:.=-!
	jar xvf ../%%V
	jad -d .\jadout -8 -sjava -r **/*.class
	cd ../
)