pageextension 50101 "Social Media" extends "Customer Card"
{
    layout
    {
        addfirst(General) 
        {
            field(Facebook; Rec.Facebook)
            {
                ApplicationArea = All;
            }
            field(Instagram; Rec.Instagram)
            {
                ApplicationArea = All;
            }
            field(Twitter; Rec.Twitter)
            {
                ApplicationArea = All;
            }
            field(LinkedIn; Rec.LinkedIn)
            {
                ApplicationArea = All;
            }
        }
       
    }
    
    actions
    {
        // Add changes to page actions here
    }
    trigger OnOpenPage()
    begin
        Message('On open page (Before modify), the address is: %1', Rec.Address);
    end;
    trigger OnModifyRecord(): Boolean
    begin
        Message('On Modify, the address is %1', Rec.Address);
        Message('On Modify, the previous address is %1', xRec.Address);
    end;
    var
        myInt: Integer;

}


    