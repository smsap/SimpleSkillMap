namespace smsap.ssm;

using {smsap.ssm.SkillCategory} from '../types';
using {
    cuid,
    managed
} from '@sap/cds/common';

@assert.unique : {skill_name : [skill_name]}
entity Skills : cuid, managed {
    skill_name     : String(50);
    skill_category : SkillCategory;
}
