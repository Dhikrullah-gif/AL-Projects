query 50118 "List of Customers"
{
    Caption = 'List of Customers';
    QueryType = Normal;
    QueryCategory= 'Customer List';
    
    elements
    {
        dataitem(Customer; Customer)
        {
            column(No; "No.")
            {
            }
            column(Address; Address)
            {
            }
            column(Balance; Balance)
            {
            }
            column(City; City)
            {
            }
            column(Contact; Contact)
            {
            }
            column(County; County)
            {
            }
            column(EMail; "E-Mail")
            {
            }
            column(Name; Name)
            {
            }
            column(PartnerType; "Partner Type")
            {
            }
        }
    }
    
    trigger OnBeforeOpen()
    begin
    
    end;
}
