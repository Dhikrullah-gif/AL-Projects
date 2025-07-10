pageextension 50101 CustomerCardExtension extends "Customer Card"
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
        addfirst(processing)
        {
            action("Get Funtion")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    if Cust.Get('1120') then
                        Message(Text001)
                    else
                        Message(Text002);
                end;
            }
            action("Find Funtion")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()

                begin
                    Cust."No." := '10000';
                    if Cust.Find('=') then
                    Message(Text003, Cust."No.", Cust.Name, Cust."Address 2")
                    else
                    Message(Text002);
                end;
            }
            action("Next Function")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    count := '0';
                    Cust."No." := '10000';
                    if Cust.Find('-') then
                    repeat
                    count := count + 1;
                    until Cust.Next = 0;
                

                    
                end;
            }
        }
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
        Cust: Record Customer;

        Text001: Label 'Record Found';
        Text002: Label 'Record not Found';
        Text003: Label 'Record Found: Customer Number: %1, \Customer Name: %2, and \Customer Address: %3';
        count: Integer;

}


    