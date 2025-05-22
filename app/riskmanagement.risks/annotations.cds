using RiskManagementService as service from '../../srv/service';
annotate service.Risk with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Title',
                Value : Title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Descr',
                Value : Descr,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Prio',
                Value : Prio,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Impact',
                Value : Impact,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Cirticality',
                Value : Cirticality,
            },
            {
                $Type : 'UI.DataField',
                Label : 'a_BusinessPartner_BusinessPartner',
                Value : a_BusinessPartner_BusinessPartner,
            },
            {
                $Type : 'UI.DataField',
                Value : mitigation_ID,
                Label : 'mitigation_ID',
            },
            {
                $Type : 'UI.DataField',
                Value : a_BusinessPartner.BusinessPartnerFullName,
                Label : 'BusinessPartnerFullName',
            },
            {
                $Type : 'UI.DataField',
                Value : a_BusinessPartner.BusinessPartnerIsBlocked,
                Label : 'BusinessPartnerIsBlocked',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Title',
            Value : Title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Descr',
            Value : Descr,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Prio',
            Value : Prio,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Impact',
            Value : Impact,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Cirticality',
            Value : Cirticality,
        },
        {
            $Type : 'UI.DataField',
            Value : a_BusinessPartner_BusinessPartner,
            Label : 'a_BusinessPartner_BusinessPartner',
        },
    ],
);

annotate service.Risk with {
    mitigation @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Mitigations',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : mitigation_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'createdBy',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'CreatedAt',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Description',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'owner',
            },
        ],
    }
};

annotate service.Risk with {
    a_BusinessPartner @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'A_BusinessPartner',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : a_BusinessPartner_BusinessPartner,
                ValueListProperty : 'BusinessPartner',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Customer',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Supplier',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'BusinessPartnerCategory',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'BusinessPartnerFullName',
            },
        ],
    }
};

