#define PLIST_PATH @"/var/mobile/Library/Preferences/com.ioscheaters.TempleRunHackBut.plist"
#import <CoreFoundation/CoreFoundation.h>
#import <substrate.h>
#import <Foundation/Foundation.h>


BOOL Invinsibility;
BOOL (*old__ZNK7cPlayer15hasInvincibiltyEv)();
BOOL ida_hack2; 
BOOL $__ZNK7cPlayer15hasInvincibiltyEv()
{
	if(ida_hack2) 
	{	
		return true; 
	} 
	else 
	{	
		return old__ZNK7cPlayer15hasInvincibiltyEv(); 
	}
}
BOOL Angels;
BOOL (*old__ZNK7cPlayer13hasAngelWingsEv)();
BOOL ida_hack1; 
BOOL $__ZNK7cPlayer13hasAngelWingsEv()
{ 
	if(ida_hack1) 
	{	
		return true; 
	} 
	else 
	{	
		return old__ZNK7cPlayer13hasAngelWingsEv(); 
	}
}
INT CoinCount;
INT ida_hack3;
INT (*old__ZNK7cPlayer17getCoinCountTotalEv)();
INT $__ZNK7cPlayer17getCoinCountTotalEv()
{
	if(ida_hack3)
		return 9999;
	else
		return old__ZNK7cPlayer17getCoinCountTotalEv();
} 
INT ScoreMultiplier;
INT ida_hack4;
INT (*old__ZNK7cPlayer18getScoreMultiplierEv)(); 
INT $__ZNK7cPlayer18getScoreMultiplierEv() 
{ 
	if(ida_hack4)
		retrn 9999;
	else
		return old__ZN7cPlayer18setScoreMultiplierEi();
}
INT RunVelocity
INT ida_hack5;
INT (*old__ZNK7cPlayer17getMaxRunVelocityEv)(); 
INT $__ZNK7cPlayer17getMaxRunVelocityEv()
{
	if(ida_hack5)
		return 5;
	else
		return old__ZNK7cPlayer17getMaxRunVelocityEv();
}
 
	%hook MainAppDelegate
		- (void)applicationDidBecomeActive:(id)fp8
		{
			%orig();
			UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Hack is Working" message:@"Awsome hack was made By omegafrigh" delegate:nil cancelButtonTitle:@"Thanks" otherButtonTitles:nil];
			[alert show];
			[alert release];
			Angels = [[[NSDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.omegafrigh.templerunhackbut.plist"]valueForKey:@"kAngels"]boolValue];
			if (Angels) 
				{	
				if(ida_hack1 == false)	
				{
					ida_hack1 = true;	
				}
					MSHookFunction(((bool*)MSFindSymbol(NULL, "__ZNK7cPlayer17getCoinCountTotalEv")),(bool*)$__ZNK7cPlayer17getCoinCountTotalEv,(bool**)&old__ZNK7cPlayer17getCoinCountTotalEv); 
				}
			else if(!Angels) 
				{	
				if(ida_hack1)	
				{	
					ida_hack1 = false;	
				}
				MSHookFunction(((bool*)MSFindSymbol(NULL, "__ZNK7cPlayer13hasAngelWingsEv")),(bool*)$__ZNK7cPlayer13hasAngelWingsEv,(bool**)&old__ZNK7cPlayer13hasAngelWingsEv); 
				}
			Invinsibility = [[[NSDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.omegafrigh.templerunhackbut.plist"]valueForKey:@"kInvinsibility"]boolValue];
			if (Invinsibility) 
				{	
				if(ida_hack2 == false)	
				{
					ida_hack2 = true;	
				}
					MSHookFunction(((bool*)MSFindSymbol(NULL, "__ZNK7cPlayer15hasInvincibiltyEv")),(bool*)$__ZNK7cPlayer15hasInvincibiltyEv,(bool**)&old__ZNK7cPlayer15hasInvincibiltyEv); 
				}
			else if(!Invinsibility) 
				{	
				if(ida_hack2)	
				{	
					ida_hack2 = false;	
				}
				MSHookFunction(((bool*)MSFindSymbol(NULL, "__ZNK7cPlayer15hasInvincibiltyEv")),(bool*)$__ZNK7cPlayer15hasInvincibiltyEv,(bool**)&old__ZNK7cPlayer15hasInvincibiltyEv); 
				}
			CoinCount = [[[NSDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.omegafrigh.templerunhackbut.plist"]valueForKey:@"kCoinCount"]boolValue];
			if (CoinCount) 
				{	
				if(ida_hack3 == false)	
				{
					ida_hack3 = true;	
				}
					MSHookFunction(((bool*)MSFindSymbol(NULL, "__ZNK7cPlayer17getCoinCountTotalEv")),(bool*)$__ZNK7cPlayer17getCoinCountTotalEv,(bool**)&old__ZNK7cPlayer17getCoinCountTotalEv); 
				}
			else if(!CoinCount) 
				{	
				if(ida_hack3)	
				{	
					ida_hack3 = false;	
				}
				MSHookFunction(((bool*)MSFindSymbol(NULL, "__ZNK7cPlayer17getCoinCountTotalEv")),(bool*)$__ZNK7cPlayer17getCoinCountTotalEv,(bool**)&old__ZNK7cPlayer17getCoinCountTotalEv); 
				}
			ScoreMultiplier = [[[NSDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.omegafrigh.templerunhackbut.plist"]valueForKey:@"kScoreMultiplier"]boolValue];
			if (ScoreMultiplier) 
				{	
				if(ida_hack3 == false)	
				{
					ida_hack3 = true;	
				}
					MSHookFunction(((bool*)MSFindSymbol(NULL, "__ZNK7cPlayer18getScoreMultiplierEv")),(bool*)$__ZNK7cPlayer18getScoreMultiplierEv,(bool**)&old__ZNK7cPlayer18getScoreMultiplierEv); 
				}
			else if(!ScoreMultiplier) 
				{	
				if(ida_hack3)	
				{	
					ida_hack3 = false;	
				}
				MSHookFunction(((bool*)MSFindSymbol(NULL, "__ZNK7cPlayer18getScoreMultiplierEv")),(bool*)$__ZNK7cPlayer18getScoreMultiplierEv,(bool**)&old__ZNK7cPlayer18getScoreMultiplierEv); 
				}
			RunVelocity = [[[NSDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.omegafrigh.templerunhackbut.plist"]valueForKey:@"kRunVelocity"]boolValue];
			if (ScoreMultiplier) 
				{	
				if(ida_hack3 == false)	
				{
					ida_hack3 = true;	
				}
					MSHookFunction(((bool*)MSFindSymbol(NULL, "__ZNK7cPlayer17getMaxRunVelocityEv")),(bool*)$__ZNK7cPlayer17getMaxRunVelocityEv,(bool**)&old__ZNK7cPlayer17getMaxRunVelocityEv); 
				}
			else if(!ScoreMultiplier) 
				{	
				if(ida_hack3)	
				{	
					ida_hack3 = false;	
				}
				MSHookFunction(((bool*)MSFindSymbol(NULL, "__ZNK7cPlayer17getMaxRunVelocityEv")),(bool*)$__ZNK7cPlayer17getMaxRunVelocityEv,(bool**)&old__ZNK7cPlayer17getMaxRunVelocityEv); 
				}
		}
		%end
