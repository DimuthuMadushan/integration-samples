import ballerina/log;
import ballerinax/oraclefusion.erp.integrations;

public function main() returns error? {
    do {
        integrations:ESSJobStatusResponse jobStatus = check erpClient->getESSJobStatus(requestId);
        log:printInfo(jobStatus.toString());
    } on fail error e {
        log:printError("Error occurred", 'error = e);
        return e;
    }
}
