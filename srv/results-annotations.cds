using {MArks.Result as Result} from './student';
annotate Result with @( 

    UI.LineItem: [
        
        {
            $Type : 'UI.DataField',
            Value : name
        },
        {
            $Type : 'UI.DataField',
            
            Value : roll
        },
        {
            $Type : 'UI.DataField',
            Value : email
        },
        {
            $Type : 'UI.DataField',
            Value : marks
        },
        {
             $Type : 'UI.DataField',
            Value : per
        },
       
    ],
// UI.SelectionFields: [ studentid ,first_name, last_name, email_id , pan_no,dob,age],       
    UI.FieldGroup #StudentInformation : { // used to take input
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Value : roll,
            },
            {
                $Type : 'UI.DataField',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Value : marks,  // the value that is taken , it can be either as "F" or "M"
            },
            {
                $Type : 'UI.DataField',
                Value : per,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'StudentInfoFacet',
            Label : 'Student Information',
            Target : '@UI.FieldGroup#StudentInformation',
        },
    ],
);