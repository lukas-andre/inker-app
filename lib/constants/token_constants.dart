// Token System Constants
const int tattooGenerationCost = 1; // Tokens per photo generation
const Duration tokenCacheDuration = Duration(minutes: 5);
const int defaultTokenBalance = 0; // Default balance if API fails

// API Endpoints
const String tokenBalanceEndpoint = '/tokens/balance';
const String tokenPackagesEndpoint = '/tokens/packages';
const String tokenPurchaseEndpoint = '/tokens/purchase';
const String tokenTransactionsEndpoint = '/tokens/transactions';

// Error Messages Keys (for localization)
const String insufficientTokensKey = 'insufficientTokens';
const String tokenPurchaseComingSoonKey = 'tokenPurchaseComingSoon';
const String tokenBalanceKey = 'tokenBalance';
const String tokenBalanceErrorKey = 'tokenBalanceError';