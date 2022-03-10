namespace smsap.ssm;

type SkillCategory : String(50) enum {
    // Soft skills or core skills
    SELF_MANAGEMENT                    = 'Self Management';
    COMMUNICATION                      = 'Communication';
    TEAM_AND_COLLABORATION             = 'Team and Collaboration';
    METHEDOLOGY                        = 'Methedology';
    CUSTOMER_FOCUS                     = 'Customer Focus';
    LEADERSHIP_PRINCIPLE               = 'Leadership Principle';
    // Technical
    ARCHITECTURE                       = 'Architecture';
    CLOUD_NATIVE_DEVELOPMENT           = 'Cloud-native Development';
    SOFTWARE_DEVELOPMENT_METHODOLOGIES = 'Software Development Methodologies';
    OPERATIONS                         = 'Operations';
    DATA_MANAGEMENT                    = 'Data Management';
    SECURITY                           = 'Security';
    NETWORK_PROTOCOL_AND_SERVICES      = 'Internet/Network Protocols and Services';
    USER_EXPERIENCE                    = 'User Experience';
}
