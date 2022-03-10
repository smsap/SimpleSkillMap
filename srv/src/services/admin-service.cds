using {smsap.ssm as ssm} from '../..';

@path : '/ssm/'
service AdminServices {
    entity SkillMatrics as projection on ssm.SkillMatrics;
    entity Users        as projection on ssm.Users;
    entity Skills       as projection on ssm.Skills;
}
