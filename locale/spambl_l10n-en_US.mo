��    �      �  �   �	      �  @  �    *  E   ;  D   �  �   �  A   �  7   �  9     9   M  %   �  5   �  ?   �  A   #  A   e  '   �  "   �  5   �  5   (  @   ^  W   �     �       {     "   �  �   �  �  }  �       �              &   /   #   V   #   z      �   !   �   #   �      �   "   �   %   !!  !   G!     i!     �!     �!     �!     �!  #   �!  "   �!  K   ""  l  n"     �(  
   �(     )     )  E   *)  8   p)     �)     �)  !   �)     �)  .   *  @   <*     }*     �*     �*     �*  3   �*  
   
+     +     +  "   4+     W+     j+     �+     �+     �+     �+     �+  3   �+     $,     8,     M,     _,     s,  1   �,     �,     �,     �,  /   �,  "   -     9-     Q-     Z-     c-     q-     �-  &   �-     �-     �-  &   �-     
.  #   .  &   7.     ^.     y.     �.     �.  	   �.      �.     �.  "   /     $/  #   C/     g/    p/  �  y2  �  Z:  �   <  �   �<  `  }=  �  �A    �C  �  �D  }   �G  	  H    !J  w   )M  �   �M  �  RN     RP     WP     pP     �P  	   �P  #   �P     �P      �P      Q     Q     /Q  �   =Q  �  ;R     �S     �S  "    T     #T  !   5T  	   WT     aT     �T     �T  	   �T  �  �T  @  %V    fY  E   wZ  D   �Z  �   [  A   �[  7   \  9   O\  9   �\  %   �\  5   �\  ?   ]  A   _]  A   �]  '   �]  "   ^  5   .^  5   d^  @   �^  W   �^     3_     H_  {   Z_  "   �_  �   �_  �  �`  �  Cf     &i     =i     Ti  &   ki  #   �i  #   �i     �i  !   �i  #   j     1j  "   :j  %   ]j  !   �j     �j     �j     �j     �j     k  #   k  "   ;k  K   ^k  l  �k     r  
   2r     =r     Pr  E   fr  8   �r     �r     �r  !   s     .s  .   Is  @   xs     �s     �s     �s     t  3   t  
   Ft     Qt     Zt  "   pt     �t     �t     �t     �t     �t     u     u  3   ,u     `u     tu     �u     �u     �u  1   �u     �u     �u     v  /   "v  "   Rv     uv     �v     �v     �v     �v     �v  &   �v     �v     w  &   w     Fw  #   Ow  &   sw     �w     �w     �w     �w  	   x      x     ,x  "   =x     `x  #   x     �x    �x  �  �{  �  ��  �   T�  �   �  `  ��  �  �    �  �  !�  }   Ր    S�    W�  w   _�  �   ז  �  ��     ��     ��     ��     ��  	   Ι  #   ؙ     ��      �     6�     N�     e�  �   s�  �  q�     �     �  "   6�     Y�  !   k�  	   ��     ��     ��     ��  	   Ɲ     8   �   h       L   �   �   [   1   M       r      N   A   E      =   X   ?   *   c   /   ,       o   �                          |   �   �       u   '   B       l   J   >      b   T   �          $       .       �   y      v       f   	   �       j   ~                            �   ^   i   s   W   x   g       Y       G      Q   \   �   {   I      t   (          F   p           ;   3           k   7   "   O              C   P             #       !       �       �   D   -       +                    �   S       
                      �   d   }              �      _   R      �   @   V   m   �   &              �      0          �                      6   :           �   4   9       w              n   K           q   e   H   �   %   a       Z   �   2       )   z          U       �      `   ]   �   5   <    "Data records TTL" sets an expiration time for
			records in the database. The records should not be kept
			permanently, or even for very long, because the IP
			address might not belong to the spammer, but rather
			a conscientious ISP (also a victim of abuse by the spammer)
			that must be able to reuse the IP address. DNS
			blacklist operators might use a low TTL (Time To Live) in
			the records of relevant lists for this reason. The default
			value is one day (86400 seconds). If you do not want
			any of the presets, the text field accepts a value
			in seconds, where zero (0) or less will disable the
			TTL.
			When an address is being checked, the database lookup
			requests only records that have last been seen
			within the TTL time; also, when database maintenance is
			performed, expired records are removed. "Log blacklisted IP addresses" selects logging
			of blacklist hits with the remote IP address. This
			is only informative, and will add unneeded lines
			in the error log. New plugin users might like to
			enable this temporarily to see the effect the plugin
			has had. %1$s allowed address %2$s, found in user whitelist (lookup time %3$f) %1$s denied address %2$s, found in user blacklist (lookup time %3$f) %1$s denied for address %2$s, first seen %3$s, last seen %4$s, previously seen %5$u time; (db time %6$f) %1$s denied for address %2$s, first seen %3$s, last seen %4$s, previously seen %5$u times; (db time %6$f) %1$s denied for address %2$s, list at "%3$s", result %4$s in %5$f %d address in the past day %d addresses in the past day %d address in the past hour %d addresses in the past hour %d address in the past week %d addresses in the past week %d address listed %d addresses listed %d hit in all records total of %d hits in all records %d new address in the past day %d new addresses in the past day %d new address in the past hour %d new addresses in the past hour %d new address in the past week %d new addresses in the past week %d non-hit address %d non-hit addresses %d tor exit node %d tor exit nodes %d user blacklist address %d user blacklist addresses %d user whitelist address %d user whitelist addresses %u setting updated successfully %u settings updated successfully (There is %u record in the database table) (There are %u records in the database table) << Move address left << Move line left <br><p>
				DNS blacklist spam checking by the
				<a href="%s" target="_blank"><em>Spam BLIP</em></a>
				plugin.
				</p> <em>Spam BLIP</em> Plugin Settings <p><strong>%s</strong></p><p>
			More information can be found on the
			<a href="%s" target="_blank">web page</a>.
			Please submit feedback or questions as comments
			on that page.
			</p> <p>Although the default settings
			will work well, consider enabling these:
			<ul>
			<li>"%1$s" -- enable this for most broad coverage against
			spam; but, leave this disabled if you <em>know</em> that
			you want to accept user registrations for some
			purposes even if the address might be blacklisted</li>
			<li>"%2$s" -- because The Onion Router is a very
			important protection for <em>real</em> people, even if
			spammers abuse it and cause associated addresses
			to be blacklisted</li>
			<li>"%3$s" -- if you have access to the error log
			of your site server, this will give you a view
			of what the plugin has been doing</li>
			<li>"%4$s" -- a small bit of CPU time and network
			traffic will be saved when an IP address is
			identified as a spammer (but in the case of a false
			positive, this will seem rude)</li>
			</ul>
			<p>
			Those options default to false/disabled (which is
			why your attention is called to them).
			</p><p>
			If you find that a welcome visitor could not comment
			because their IP address was in a blacklist, add their
			address to the "Active User Whitelist" in the
			"Advanced Options" section.
			</p><p>
			<em>Spam BLIP</em> is expected work well as a first
			line of defense against spam, and should complement
			spam filter plugins that work by analyzing comment content.
			It might not work in concert with other
			DNS blacklist plugins.
			</p> <p>The sections of this page each have an
			introduction which will, hopefully, be helpful.
			These introductions may
			be hidden or shown with a checkbox under the
			"Screen Options" tab (next to "Help") or with
			the "%1$s"
			option, which is the first option on this page.
			If "Screen Options" is absent, the verbose option
			is off: it must be on to enable that tab.
			</p><p>
			<em>Spam BLIP</em> will work well with
			the installed defaults, so it's not necessary
			to worry over the options on this page (but take
			a look at "Tips" in this help box). 
			</p><p>
			Remember, when any change is made, the new settings must
			be submitted with the "%2$s" button, near the end
			of this page, to take effect.
			</p> Active DNS Blacklists: Active User Blacklist: Active User Whitelist: Active and inactive blacklist domains: Active and inactive user blacklist: Active and inactive user whitelist: Advanced Options Bail (wp_die()) on blacklist hits Blacklist check user registrations: Caption: Check address in existing comments Check blacklist for user registration Check but do <em>not</em> reject: Check existing comment spam: Checking in saved spam Checking user registration Data records TTL: Database Options Delete database table on uninstall: Delete setup options on uninstall: Display comment and ping spam hit information, and database table row count Each "Active and inactive blacklist domains"
			entry line consists of three parts separated by a '@'
			character. Only the first part is required. The first
			part is the domain name for the DNS lookup.
			The second part is a value to compare with the return
			of a DNS lookup that succeeds; if this part is not
			present the default is "127.0.0.2". It must be in the
			form of an IP4 dotted quad address.
			The third part is a set of operations for
			comparing the DNS lookup return with the value in
			the second part. If present, the third part must
			consist of one or more fields separated by a ';'
			character, and each such field must have two parts
			separated by a ',' character. The first part of
			each field is an index into the dotted quad form,
			starting at zero (0) and preceeding from left to
			right. The second part of each field is a comparison
			operator, which may be <em>one</em> of
			"<code>==</code>" (is equal to),
			"<code>!=</code>" (not equal to),
			"<code>&lt;</code>" (numerically less than),
			"<code>&gt;</code>" (greater than),
			"<code>&lt;=</code>" (less than or equal to),
			"<code>&gt;=</code>" (greater than or equal to),
			"<code>&amp;</code>" (bitwise AND),
			"<code>!&amp;</code>" (not bitwise AND),
			or
			"<code>I</code>" (character "i", case insensitive, meaning
			"ignore": no comparison at this index). The fields may
			contain whitespace for clarity.
			The default
			for any field that is not present is "<code>==</code>",
			so if the whole third part is absent then a DNS lookup
			return is checked for complete equality with the value
			of the second part.
			 Enable the included widget Fifty (50) Five hundred (500) For more information: Found "%1$s" to be a tor exit, %2$u hits in data -- passed per option Found "%s" to be a tor exit, by DNS -- passed per option Four weeks, %s seconds General Options Go back to top (General section). Go forward to save button. Got %1$s IPv4 address "%2$s" in "REMOTE_ADDR". Got IP version 6 address "%s"; sorry, only IP4 handled currently Inactive DNS Blacklists: Inactive User Blacklist: Inactive User Whitelist: Introduction: Invalid remote address; "REMOTE_ADDR" contains "%s" Keep data: LOOPBACK Log bad IP addresses: Log bad addresses in "REMOTE_ADDR" Log blacklist hits Log blacklisted IP addresses: Maximum data records: Miscellaneous Options Move address right >> Move line right >> Not rejecting hits One (%d) setting updated Some settings (%d) updated One day, %s seconds One hour, %s seconds One hundred (100) One thousand (1000) One week, %s seconds Options controlling <em>Spam BLIP</em> functions. Options: Overview Pass (do not reject) hits Permanently delete database table (stored data) Permanently delete plugin settings Plugin Install Settings RESERVED Records: Save Settings Saving non-hits Section introductions Set "Time To Live" of database records Set a value in seconds: Set a value: Set number of database records to keep Settings Show <em>Spam BLIP</em> link:&nbsp; Show <em>Spam BLIP</em> options:&nbsp; Show verbose introductions Show verbose introductions: Six hours, %s seconds Sorry, but no, thank you. Spam BLIP Spam BLIP Configuration Settings Spam BLIP Plugin Store (and use) non-hit addresses: Store blacklist lookup results Store non-hit addresses for repeats Ten (10) The "Active and inactive blacklist domains"
			text fields can be used to edit the DNS blacklist domains
			and the interpretation of the values they return. The left
			text field is for active domains; those that will be
			checked for a comment posting address. The right text field
			is for domains considered inactive; they are stored but
			not used. Each domain entry occupies one line in the fields,
			and lines can be moved between the active and inactive
			fields with the buttons just below the fields. Of course,
			new domains can be added (along with rules for evaluating
			their return values); and domains may be deleted, although
			it might be better to leave domains in the inactive field
			unless it is certain that they are defunct or unsuitable.
			 The "Active and inactive user blacklist"
			and "Active and inactive user whitelist"
			text fields can be used to add addresses that will
			always be denied, or always allowed, respectively.
			Like the blacklist domains fields, only those in the
			left side "active" text areas are used, and addresses in
			the right side "inactive" areas are not used, but stored.
			</p><p>
			The black and white lists also accept whole subnetworks.
			This might be very useful if, for example, it seems that
			spammers are using or abusing a whole subnet, or if you
			need to allow an organization network even if some of its
			addresses appear in the DNS blacklists. Specify a subnet
			as "<code>N.N.N.N/(CIDR or N.N.N.N)</code>"
			where the network number appears
			to the left of the slash and the network mask appears
			to the right of the slash. The network mask may be given
			in CIDR notation (number of bits) or the traditional
			dotted quad form. A subnet may also be given as a range
			from minimum to maximum network address, as in
			"<code>N.N.N.N - N.N.N.N</code>". (A subnet specified
			as a range is often found in <strong>WHOIS</strong>
			output.)
			When the settings are submitted, these
			arguments are normalized so that
			"<code>N.N.N.N/CIDR/N.N.N.N</code>"
			will appear. You may specify both CIDR and dotted quad
			network masks, separated by an additional slash, if you are
			not sure which is correct, and compare the result after
			submitting the settings.
			</p><p>
			You should be thoughtful when
			specifying a subnetwork and its mask because errors will
			affect numerous addresses. Enable
			"Log blacklisted IP addresses" in the
			"Miscellaneous Options" section and then check your site
			error log to see if multiple hits seem to be coming from
			the same subnet, and check the <em>WHOIS</em> service
			to get an idea of what the network and mask should be.
			If you really understand what you are doing you may
			of course decide values on your judgement.
			 The "Blacklist check user registrations"
			option enables the blacklist checks before the
			user registration form is presented; for example, if
			your site is configured to require login or registration
			to post a comment. <strong>Note</strong> that this check
			is done for all requests of the registration form, even if
			not related to an attempt to comment. Because that
			might not be appropriate, this option is off by
			default. The "Delete setup options" option and the
			"Delete database table" option are independent;
			one may be deleted while the other is saved.
			 The "Keep data" option enables recording of
			hit data such as the connecting IP address, and the times
			the address was first seen and last seen.
			(This data is also used if included widget is
			enabled.) The "Log bad IP addresses" option enables
			log messages when
			the remote IP address provided in the CGI/1.1
			environment variable "REMOTE_ADDR" is wrong. Software
			used in a hosting arrangement can cause this, even
			while the connection ultimately works. This
			plugin checks whether the connecting address is in
			a reserved, loopback, or other special purpose
			network range. If it is, the DNS blacklist check
			is not performed, as it would be pointless, and a
			message is issued to the error log.
			For a site on the "real" Internet, there is probably
			no reason to turn this option off. In fact, if
			these log messages are seen (look for "REMOTE_ADDR"),
			the hosting administrator
			or technical contact should be notified that their
			system has a bug.
			This option should be off when developing a site on
			a private network or single machine, because in this
			case error log messages might be issued for addresses
			that are valid on the network. With this option off,
			the plugin will still check the address and skip
			the blacklist DNS lookup if the address is reserved.
			 The "Maximum data records" option limits how
			many records will be kept in the database. It is likely that
			as the data grow larger, the oldest records will no
			longer be needed. Records are judged old based on
			the time an address was last seen. Use your judgement with
			this: if you always get large amounts of spam, a larger
			value might be warranted. The number of records may grow
			larger than this setting by a small calculated amount before
			being trimmed back to the number set here The "Show verbose introductions"
			option selects whether
			verbose introductions
			should be displayed with the various settings
			sections. The long introductions, one of which 
			this paragraph is a part,
			will not be shown if the option is not
			selected. The "Store (and use) non-hit addresses"
			option will cause commenter addresses to be stored even
			if the address was not found in the spammer lists. This
			will save additional DNS lookups for repeat commenters.
			This should only be used if there is a perceptible delay
			caused by the DNS lookups, because an address might
			turn out to be associated with a spammer and subsequently
			be added to the online spam blacklists, but this option
			would allow that address to post comments until its
			record expired from the plugin's database. Also, an
			address might be dynamic and therefore an association
			with a welcome commenter would not be valid.
			The default is false. The "Use data" option enables a check in the
			stored data; if a hit is found there then the
			DNS lookup is not performed. The "Use the included widget" option controls
			whether the multi-widget included with the plugin is
			enabled. The widget will display some counts of the
			stored data, and plugin settings. You should consider
			whether you want that data on public display, but
			if you find that acceptable, the widget should give
			a convenient view of the effectiveness of the plugin.
			Of course, the widget must have been set up for use
			(under the Appearance menu, Widgets item) for this
			setting to have an effect.
			 The "Whitelist TOR exit nodes" option 
			enables a special lookup to try to determine if the
			connecting address is a TOR exit node.
			If it is found to be one (there are some
			false negatives), it is
			allowed to comment or ping. This option might be
			important if your site has content that is political,
			or in some way controversial, as visitors you would
			welcome might need to use TOR. TOR is an important
			tool for Internet anonymity, but unfortunately spammers
			have abused it, and  so some DNS blacklist operators
			include any TOR address. This option probably will let
			more spam comments be posted, but it might work well
			along with another sort of spam blocker, such as one
			that analyses comment content, as a second line of
			defense. These options configure
			the storage of blacklist lookup results in a table
			in the
			<em>WordPress</em> database. These options enable, disable or configure
			the storage of blacklist lookup results in the
			<em>WordPress</em> database, or the use of the
			stored data before DNS lookup. This section includes optional
			features for plugin install or uninstall. Currently,
			the only options are whether to remove the plugin's
			setup options and data storage from the 
			<em>WordPress</em> database when the plugin is deleted.
			There is probably no reason to leave the these data in
			place if you intend to delete the plugin permanently.
			If you intend to delete and then reinstall the plugin,
			possibly for a new version or update, then keeping the
			these data might be a good idea. Tips Twelve hours, %s seconds Two hundred (200) Two weeks, %s seconds Use data: Use stored blacklist lookup results Use the included widget: Whitelist (pass) TOR exit nodes: Whitelist TOR addresses Whitelisting TOR exits Widget title: With "Check but do <em>not</em> reject"
			enabled all checks are performed, but hits are not
			rejected (if comments are already closed, that is not
			changed). This allows useful records to be collected
			while disabling the main functionality.
			 With "Check existing comment spam"
			enabled connecting addresses are checked against
			comments already stored by <em>WordPress</em> and
			marked as spam. If a match is found with a comment
			that is not too old (according to the TTL setting,
			see "Data records TTL" below),
			the connection
			is considered a spammer, and the address is added
			to the hit database.
			The default is true. bad TTL option: "%s" bad blacklist domain set: "%s" bad key in option validation: "%s" bad maximum: "%s" bad user %1$s address set: "%2$s" blacklist cannot allocate BL check object comments pings whitelist Project-Id-Version: Spam_BLIP 1.0.8.1
Report-Msgid-Bugs-To: edhynan@gmail.com
POT-Creation-Date: 2019-05-16 11:08-0400
PO-Revision-Date: 2019-05-16 11:08 EDT
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
Language: en_US
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=INTEGER; plural=EXPRESSION;
 "Data records TTL" sets an expiration time for
			records in the database. The records should not be kept
			permanently, or even for very long, because the IP
			address might not belong to the spammer, but rather
			a conscientious ISP (also a victim of abuse by the spammer)
			that must be able to reuse the IP address. DNS
			blacklist operators might use a low TTL (Time To Live) in
			the records of relevant lists for this reason. The default
			value is one day (86400 seconds). If you do not want
			any of the presets, the text field accepts a value
			in seconds, where zero (0) or less will disable the
			TTL.
			When an address is being checked, the database lookup
			requests only records that have last been seen
			within the TTL time; also, when database maintenance is
			performed, expired records are removed. "Log blacklisted IP addresses" selects logging
			of blacklist hits with the remote IP address. This
			is only informative, and will add unneeded lines
			in the error log. New plugin users might like to
			enable this temporarily to see the effect the plugin
			has had. %1$s allowed address %2$s, found in user whitelist (lookup time %3$f) %1$s denied address %2$s, found in user blacklist (lookup time %3$f) %1$s denied for address %2$s, first seen %3$s, last seen %4$s, previously seen %5$u time; (db time %6$f) %1$s denied for address %2$s, first seen %3$s, last seen %4$s, previously seen %5$u times; (db time %6$f) %1$s denied for address %2$s, list at "%3$s", result %4$s in %5$f %d address in the past day %d addresses in the past day %d address in the past hour %d addresses in the past hour %d address in the past week %d addresses in the past week %d address listed %d addresses listed %d hit in all records total of %d hits in all records %d new address in the past day %d new addresses in the past day %d new address in the past hour %d new addresses in the past hour %d new address in the past week %d new addresses in the past week %d non-hit address %d non-hit addresses %d tor exit node %d tor exit nodes %d user blacklist address %d user blacklist addresses %d user whitelist address %d user whitelist addresses %u setting updated successfully %u settings updated successfully (There is %u record in the database table) (There are %u records in the database table) << Move address left << Move line left <br><p>
				DNS blacklist spam checking by the
				<a href="%s" target="_blank"><em>Spam BLIP</em></a>
				plugin.
				</p> <em>Spam BLIP</em> Plugin Settings <p><strong>%s</strong></p><p>
			More information can be found on the
			<a href="%s" target="_blank">web page</a>.
			Please submit feedback or questions as comments
			on that page.
			</p> <p>Although the default settings
			will work well, consider enabling these:
			<ul>
			<li>"%1$s" -- enable this for most broad coverage against
			spam; but, leave this disabled if you <em>know</em> that
			you want to accept user registrations for some
			purposes even if the address might be blacklisted</li>
			<li>"%2$s" -- because The Onion Router is a very
			important protection for <em>real</em> people, even if
			spammers abuse it and cause associated addresses
			to be blacklisted</li>
			<li>"%3$s" -- if you have access to the error log
			of your site server, this will give you a view
			of what the plugin has been doing</li>
			<li>"%4$s" -- a small bit of CPU time and network
			traffic will be saved when an IP address is
			identified as a spammer (but in the case of a false
			positive, this will seem rude)</li>
			</ul>
			<p>
			Those options default to false/disabled (which is
			why your attention is called to them).
			</p><p>
			If you find that a welcome visitor could not comment
			because their IP address was in a blacklist, add their
			address to the "Active User Whitelist" in the
			"Advanced Options" section.
			</p><p>
			<em>Spam BLIP</em> is expected work well as a first
			line of defense against spam, and should complement
			spam filter plugins that work by analyzing comment content.
			It might not work in concert with other
			DNS blacklist plugins.
			</p> <p>The sections of this page each have an
			introduction which will, hopefully, be helpful.
			These introductions may
			be hidden or shown with a checkbox under the
			"Screen Options" tab (next to "Help") or with
			the "%1$s"
			option, which is the first option on this page.
			If "Screen Options" is absent, the verbose option
			is off: it must be on to enable that tab.
			</p><p>
			<em>Spam BLIP</em> will work well with
			the installed defaults, so it's not necessary
			to worry over the options on this page (but take
			a look at "Tips" in this help box). 
			</p><p>
			Remember, when any change is made, the new settings must
			be submitted with the "%2$s" button, near the end
			of this page, to take effect.
			</p> Active DNS Blacklists: Active User Blacklist: Active User Whitelist: Active and inactive blacklist domains: Active and inactive user blacklist: Active and inactive user whitelist: Advanced Options Bail (wp_die()) on blacklist hits Blacklist check user registrations: Caption: Check address in existing comments Check blacklist for user registration Check but do <em>not</em> reject: Check existing comment spam: Checking in saved spam Checking user registration Data records TTL: Database Options Delete database table on uninstall: Delete setup options on uninstall: Display comment and ping spam hit information, and database table row count Each "Active and inactive blacklist domains"
			entry line consists of three parts separated by a '@'
			character. Only the first part is required. The first
			part is the domain name for the DNS lookup.
			The second part is a value to compare with the return
			of a DNS lookup that succeeds; if this part is not
			present the default is "127.0.0.2". It must be in the
			form of an IP4 dotted quad address.
			The third part is a set of operations for
			comparing the DNS lookup return with the value in
			the second part. If present, the third part must
			consist of one or more fields separated by a ';'
			character, and each such field must have two parts
			separated by a ',' character. The first part of
			each field is an index into the dotted quad form,
			starting at zero (0) and preceeding from left to
			right. The second part of each field is a comparison
			operator, which may be <em>one</em> of
			"<code>==</code>" (is equal to),
			"<code>!=</code>" (not equal to),
			"<code>&lt;</code>" (numerically less than),
			"<code>&gt;</code>" (greater than),
			"<code>&lt;=</code>" (less than or equal to),
			"<code>&gt;=</code>" (greater than or equal to),
			"<code>&amp;</code>" (bitwise AND),
			"<code>!&amp;</code>" (not bitwise AND),
			or
			"<code>I</code>" (character "i", case insensitive, meaning
			"ignore": no comparison at this index). The fields may
			contain whitespace for clarity.
			The default
			for any field that is not present is "<code>==</code>",
			so if the whole third part is absent then a DNS lookup
			return is checked for complete equality with the value
			of the second part.
			 Enable the included widget Fifty (50) Five hundred (500) For more information: Found "%1$s" to be a tor exit, %2$u hits in data -- passed per option Found "%s" to be a tor exit, by DNS -- passed per option Four weeks, %s seconds General Options Go back to top (General section). Go forward to save button. Got %1$s IPv4 address "%2$s" in "REMOTE_ADDR". Got IP version 6 address "%s"; sorry, only IP4 handled currently Inactive DNS Blacklists: Inactive User Blacklist: Inactive User Whitelist: Introduction: Invalid remote address; "REMOTE_ADDR" contains "%s" Keep data: LOOPBACK Log bad IP addresses: Log bad addresses in "REMOTE_ADDR" Log blacklist hits Log blacklisted IP addresses: Maximum data records: Miscellaneous Options Move address right >> Move line right >> Not rejecting hits One (%d) setting updated Some settings (%d) updated One day, %s seconds One hour, %s seconds One hundred (100) One thousand (1000) One week, %s seconds Options controlling <em>Spam BLIP</em> functions. Options: Overview Pass (do not reject) hits Permanently delete database table (stored data) Permanently delete plugin settings Plugin Install Settings RESERVED Records: Save Settings Saving non-hits Section introductions Set "Time To Live" of database records Set a value in seconds: Set a value: Set number of database records to keep Settings Show <em>Spam BLIP</em> link:&nbsp; Show <em>Spam BLIP</em> options:&nbsp; Show verbose introductions Show verbose introductions: Six hours, %s seconds Sorry, but no, thank you. Spam BLIP Spam BLIP Configuration Settings Spam BLIP Plugin Store (and use) non-hit addresses: Store blacklist lookup results Store non-hit addresses for repeats Ten (10) The "Active and inactive blacklist domains"
			text fields can be used to edit the DNS blacklist domains
			and the interpretation of the values they return. The left
			text field is for active domains; those that will be
			checked for a comment posting address. The right text field
			is for domains considered inactive; they are stored but
			not used. Each domain entry occupies one line in the fields,
			and lines can be moved between the active and inactive
			fields with the buttons just below the fields. Of course,
			new domains can be added (along with rules for evaluating
			their return values); and domains may be deleted, although
			it might be better to leave domains in the inactive field
			unless it is certain that they are defunct or unsuitable.
			 The "Active and inactive user blacklist"
			and "Active and inactive user whitelist"
			text fields can be used to add addresses that will
			always be denied, or always allowed, respectively.
			Like the blacklist domains fields, only those in the
			left side "active" text areas are used, and addresses in
			the right side "inactive" areas are not used, but stored.
			</p><p>
			The black and white lists also accept whole subnetworks.
			This might be very useful if, for example, it seems that
			spammers are using or abusing a whole subnet, or if you
			need to allow an organization network even if some of its
			addresses appear in the DNS blacklists. Specify a subnet
			as "<code>N.N.N.N/(CIDR or N.N.N.N)</code>"
			where the network number appears
			to the left of the slash and the network mask appears
			to the right of the slash. The network mask may be given
			in CIDR notation (number of bits) or the traditional
			dotted quad form. A subnet may also be given as a range
			from minimum to maximum network address, as in
			"<code>N.N.N.N - N.N.N.N</code>". (A subnet specified
			as a range is often found in <strong>WHOIS</strong>
			output.)
			When the settings are submitted, these
			arguments are normalized so that
			"<code>N.N.N.N/CIDR/N.N.N.N</code>"
			will appear. You may specify both CIDR and dotted quad
			network masks, separated by an additional slash, if you are
			not sure which is correct, and compare the result after
			submitting the settings.
			</p><p>
			You should be thoughtful when
			specifying a subnetwork and its mask because errors will
			affect numerous addresses. Enable
			"Log blacklisted IP addresses" in the
			"Miscellaneous Options" section and then check your site
			error log to see if multiple hits seem to be coming from
			the same subnet, and check the <em>WHOIS</em> service
			to get an idea of what the network and mask should be.
			If you really understand what you are doing you may
			of course decide values on your judgement.
			 The "Blacklist check user registrations"
			option enables the blacklist checks before the
			user registration form is presented; for example, if
			your site is configured to require login or registration
			to post a comment. <strong>Note</strong> that this check
			is done for all requests of the registration form, even if
			not related to an attempt to comment. Because that
			might not be appropriate, this option is off by
			default. The "Delete setup options" option and the
			"Delete database table" option are independent;
			one may be deleted while the other is saved.
			 The "Keep data" option enables recording of
			hit data such as the connecting IP address, and the times
			the address was first seen and last seen.
			(This data is also used if included widget is
			enabled.) The "Log bad IP addresses" option enables
			log messages when
			the remote IP address provided in the CGI/1.1
			environment variable "REMOTE_ADDR" is wrong. Software
			used in a hosting arrangement can cause this, even
			while the connection ultimately works. This
			plugin checks whether the connecting address is in
			a reserved, loopback, or other special purpose
			network range. If it is, the DNS blacklist check
			is not performed, as it would be pointless, and a
			message is issued to the error log.
			For a site on the "real" Internet, there is probably
			no reason to turn this option off. In fact, if
			these log messages are seen (look for "REMOTE_ADDR"),
			the hosting administrator
			or technical contact should be notified that their
			system has a bug.
			This option should be off when developing a site on
			a private network or single machine, because in this
			case error log messages might be issued for addresses
			that are valid on the network. With this option off,
			the plugin will still check the address and skip
			the blacklist DNS lookup if the address is reserved.
			 The "Maximum data records" option limits how
			many records will be kept in the database. It is likely that
			as the data grow larger, the oldest records will no
			longer be needed. Records are judged old based on
			the time an address was last seen. Use your judgement with
			this: if you always get large amounts of spam, a larger
			value might be warranted. The number of records may grow
			larger than this setting by a small calculated amount before
			being trimmed back to the number set here The "Show verbose introductions"
			option selects whether
			verbose introductions
			should be displayed with the various settings
			sections. The long introductions, one of which 
			this paragraph is a part,
			will not be shown if the option is not
			selected. The "Store (and use) non-hit addresses"
			option will cause commenter addresses to be stored even
			if the address was not found in the spammer lists. This
			will save additional DNS lookups for repeat commenters.
			This should only be used if there is a perceptible delay
			caused by the DNS lookups, because an address might
			turn out to be associated with a spammer and subsequently
			be added to the online spam blacklists, but this option
			would allow that address to post comments until its
			record expired from the plugin's database. Also, an
			address might be dynamic and therefore an association
			with a welcome commenter would not be valid.
			The default is false. The "Use data" option enables a check in the
			stored data; if a hit is found there then the
			DNS lookup is not performed. The "Use the included widget" option controls
			whether the widget included with the plugin is
			enabled. The widget will display some counts of the
			stored data, and plugin settings. You should consider
			whether you want that data on public display, but
			if you find that acceptable, the widget should give
			a convenient view of the effectiveness of the plugin.
			Of course, the widget must have been set up for use
			(under the Appearance menu, Widgets item) for this
			setting to have an effect.
			 The "Whitelist TOR exit nodes" option 
			enables a special lookup to try to determine if the
			connecting address is a TOR exit node.
			If it is found to be one (there are some
			false negatives), it is
			allowed to comment or ping. This option might be
			important if your site has content that is political,
			or in some way controversial, as visitors you would
			welcome might need to use TOR. TOR is an important
			tool for Internet anonymity, but unfortunately spammers
			have abused it, and  so some DNS blacklist operators
			include any TOR address. This option probably will let
			more spam comments be posted, but it might work well
			along with another sort of spam blocker, such as one
			that analyses comment content, as a second line of
			defense. These options configure
			the storage of blacklist lookup results in a table
			in the
			<em>WordPress</em> database. These options enable, disable or configure
			the storage of blacklist lookup results in the
			<em>WordPress</em> database, or the use of the
			stored data before DNS lookup. This section includes optional
			features for plugin install or uninstall. Currently,
			the only options are whether to remove the plugin's
			setup options and data storage from the 
			<em>WordPress</em> database when the plugin is deleted.
			There is probably no reason to leave the these data in
			place if you intend to delete the plugin permanently.
			If you intend to delete and then reinstall the plugin,
			possibly for a new version or update, then keeping the
			these data might be a good idea. Tips Twelve hours, %s seconds Two hundred (200) Two weeks, %s seconds Use data: Use stored blacklist lookup results Use the included widget: Whitelist (pass) TOR exit nodes: Whitelist TOR addresses Whitelisting TOR exits Widget title: With "Check but do <em>not</em> reject"
			enabled all checks are performed, but hits are not
			rejected (if comments are already closed, that is not
			changed). This allows useful records to be collected
			while disabling the main functionality.
			 With "Check existing comment spam"
			enabled connecting addresses are checked against
			comments already stored by <em>WordPress</em> and
			marked as spam. If a match is found with a comment
			that is not too old (according to the TTL setting,
			see "Data records TTL" below),
			the connection
			is considered a spammer, and the address is added
			to the hit database.
			The default is true. bad TTL option: "%s" bad blacklist domain set: "%s" bad key in option validation: "%s" bad maximum: "%s" bad user %1$s address set: "%2$s" blacklist cannot allocate BL check object comments pings whitelist 