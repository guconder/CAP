namespace RiskManagement;

using { BusinessPartnerA2X } from '../srv/external/BusinessPartnerA2X.cds';

entity Risk
{
    key ID : UUID;
    Title : String(100);
    Descr : String(100);
    Prio : String(5);
    Impact : Integer;
    Cirticality : Integer;
    mitigation : Association to one Mitigations;
    a_BusinessPartner : Association to one BusinessPartnerA2X.A_BusinessPartner;
}

entity Mitigations
{
    key ID : UUID;
    createdBy : String(100);
    CreatedAt : String(100);
    Description : String(100);
    owner : String(100);
    timeline : String(100);
    risks : Association to many Risk on risks.mitigation = $self;
}
