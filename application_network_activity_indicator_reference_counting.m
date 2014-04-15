// Application Network Activity Indicator Reference Counting
// Used for applying reference counting to the network activity indicator.
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 52C23554-719D-444A-AB55-674CFA9FFC4A
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetPlatformFamily: iphoneos
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
- (void)setNetworkActivityIndicatorVisible:(BOOL)setVisible
{
    // Original version found at: http://mikeahmarani.com/69
	static NSInteger calls = 0;
	calls = (setVisible ? calls + 1 : calls - 1);
	
    [UIApplication sharedApplication].networkActivityIndicatorVisible = (calls > 0);
}

- (BOOL)networkActivityIndicatorVisible
{
	return [UIApplication sharedApplication].networkActivityIndicatorVisible;
}

- (void)enableNetworkActivityIndicator
{
	[self setNetworkActivityIndicatorVisible:YES];
}

- (void)disableNetworkActivityIndicator
{
	[self setNetworkActivityIndicatorVisible:NO];
}