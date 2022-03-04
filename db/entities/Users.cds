namespace smsap.ssm;

using {
    cuid,
    managed
} from '@sap/cds/common';

@assert.unique : {user_name : [user_name]}
entity Users : cuid, managed {
    user_name : String(200)@mandatory;
}
