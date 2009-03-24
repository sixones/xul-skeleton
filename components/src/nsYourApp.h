#include "nsIZenses.h"
#include "nsIGenericFactory.h"

#include "nsIModule.h"
#include "nsIFactory.h"

#include "nsIComponentManager.h"
#include "nsIComponentRegistrar.h"

#define YOURAPP_CONTRACTID "@vendor.com/YourApp;"
#define YOURAPP_CLASSNAME "YourApp"
#define YOURAPP_CID { } } // replace with valid CID

class nsYourApp : public nsIYourApp
{
	public:
		NS_DECL_ISUPPORTS
		NS_DECL_NSIYOURAPP

		nsYourApp();
		
	private:
		~nsYourApp();

	protected:
		/* additional members */
};