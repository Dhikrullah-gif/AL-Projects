pageextension 50103 "setfilterandrange" extends "Item List"
{
    actions
    {
        addfirst("processing")
        {
            action("Setfilter")
            {
                ApplicationArea = All;
                Caption = 'Set filter';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    Rec.SetFilter("No.", '1000');
                end;
            }
            action("Setrange")
            {
                ApplicationArea = All;
                Caption = 'Set range';
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    Rec.SetRange("Unit Price", 500, 15000);
                end;
            }
        }

    }
}




















