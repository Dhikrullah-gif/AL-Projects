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
    
    var
        myInt: Integer;
}


    