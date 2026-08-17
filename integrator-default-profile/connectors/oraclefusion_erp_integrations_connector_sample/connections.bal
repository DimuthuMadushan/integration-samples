import ballerinax/oraclefusion.erp.integrations;

final integrations:Client erpClient = check new ({auth: {tokenUrl: tokenUrl, clientId: clientId, clientSecret: clientSecret}}, serviceUrl);
