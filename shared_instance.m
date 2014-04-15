// Shared instance
// 
//
// IDECodeSnippetCompletionPrefix: shared
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 97B262D6-5F1B-45FF-8F06-CFEE7FE79467
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
+ (instancetype)shared<#name#>
{
	static <#class#> *_shared<#name#> = nil;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		_shared<#name#> = [[self alloc] <#init#>];
	});
	return _shared<#name#>;
}
