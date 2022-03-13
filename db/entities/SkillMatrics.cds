namespace smsap.ssm;

using {
    smsap.ssm.Users,
    smsap.ssm.Skills
} from '.';

using {smsap.ssm.SkillLevel} from '../types';

using {
    cuid,
    managed
} from '@sap/cds/common';

entity SkillMatrics : cuid, managed {
    user        : Association to one Users @mandatory;
    user_skills : Composition of many {
                      key ID          : UUID;
                          skill       : Association to one Skills @mandatory;
                          skill_level : SkillLevel                @mandatory;
                          comments    : String(1000) default null;
                  }
}
