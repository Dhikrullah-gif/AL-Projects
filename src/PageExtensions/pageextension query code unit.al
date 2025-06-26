pageextension 50102 Salescust extends "Sales Order"
{
    layout
    {
        // Add changes to page layout here
    }
    
    actions
    {
        addafter(AssemblyOrders)
        {
            action(CustomerSalesQuantity)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = New;

                trigger OnAction()
                var MyCodeunit: codeunit 50101;
                begin
                    Clear(MyCodeunit);
                    MyCodeunit.Run();

                end;
            }
        }
        // Add changes to page actions here
    }
    
    var
        myInt: Integer;
}