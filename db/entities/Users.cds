namespace smsap.ssm;

using {
    cuid,
    managed
} from '@sap/cds/common';

@assert.unique : {user_id : [user_name]}
entity Users : cuid, managed {
    user_name  : String(200) @mandatory;
    email_id   : String(100) @mandatory;
    paraphrase : String(100) @mandatory;
    bio        : String(1000);
    other_info : String(1000);
}
