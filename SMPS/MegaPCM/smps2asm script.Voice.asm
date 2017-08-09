?dat {
	=endian "big"
}

?header {
	~£_Patches
	^ .of
}

?patch {
	=num 0
	=b1 0
	=b2 0
	=b3 0
	=b4 0
	* (.an-.pc)/25 {
		%; Patch {$2!\num\}\r\n\t; {$2!.db}\r\n\t; {$2!.db}, {$2!.db}, {$2!.db}, {$2!.db},\t{$2!.db}, {$2!.db}, {$2!.db}, {$2!.db}\r\n\t; {$2!.db}, {$2!.db}, {$2!.db}, {$2!.db},\t{$2!.db}, {$2!.db}, {$2!.db}, {$2!.db}\r\n\t; {$2!.db}, {$2!.db}, {$2!.db}, {$2!.db},\t{$2!.db}, {$2!.db}, {$2!.db}, {$2!.db}
		>b 25
		! > spAlgorithm: .nb&0x7;
		! > spFeedback: (.db&0x38)>>3;
		=b1 .db
		=b3 .db
		=b2 .db
		=b4 .db
		! > spDetune: (\b1\&0xF0)>>4, (\b2\&0xF0)>>4, (\b3\&0xF0)>>4, (\b4\&0xF0)>>4;
		! > spMultiple: \b1\&0xF, \b2\&0xF, \b3\&0xF, \b4\&0xF;
		=b1 .db
		=b3 .db
		=b2 .db
		=b4 .db
		! > spRateScale: (\b1\&0xC0)>>6, (\b2\&0xC0)>>6, (\b3\&0xC0)>>6, (\b4\&0xC0)>>6;
		! > spAttackRt: \b1\&0x1F, \b2\&0x1F, \b3\&0x1F, \b4\&0x1F;
		=b1 .db
		=b3 .db
		=b2 .db
		=b4 .db
		! > spAmpMod: (\b1\&0x80)>>7, (\b2\&0x80)>>7, (\b3\&0x80)>>7, (\b4\&0x80)>>7;
		! > spDecayRt: \b1\&0x1F, \b2\&0x1F, \b3\&0x1F, \b4\&0x1F;
		=b1 .db
		=b3 .db
		=b2 .db
		=b4 .db
		! > spSustainRt: \b1\, \b2\, \b3\, \b4\;
		=b1 .db
		=b3 .db
		=b2 .db
		=b4 .db
		! > spSustainLv: (\b1\&0xF0)>>4, (\b2\&0xF0)>>4, (\b3\&0xF0)>>4, (\b4\&0xF0)>>4;
		! > spReleaseRt: \b1\&0xF, \b2\&0xF, \b3\&0xF, \b4\&0xF;
		=b1 .db
		=b3 .db
		=b2 .db
		! > spTotalLv: \b1\&0x7F, \b2\&0x7F, \b3\&0x7F, .db&0x7F;
		=num \num\+1
	}
}
