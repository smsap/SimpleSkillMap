using {smsap.ssm as ssm} from '../..';

@path : '/ssm/'
service AdminServices {
    entity SkillMatrics as projection on ssm.SkillMatrics;
}
