codeunit 50102 getset
{
    trigger OnRun()
    begin
        MyQuery.Setfilter(Quantity, '>10');
        MyQuery.Open();

        MyFilter := MyQuery.GetFilter(Quantity);
        Message(Text01, MyFilter);
    end;
    
    var
        MyQuery: Query sales_quantity;
        MyFilter: Text;
        Text01: Label 'The filter is %1';
}

























