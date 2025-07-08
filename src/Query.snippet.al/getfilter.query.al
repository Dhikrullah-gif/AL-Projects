query 50102 sales_quantity
{
    QueryType = Normal;
    
    elements
    {
        dataitem(Customer; Customer)
        {
            column(Name; Name)
            {
                
            }
            column(No_; "No.")
            {
                
            }
            dataitem(Sales_Line; "Sales Line")
            {
                DataItemLink = "No." = Customer."No.";
                SqlJoinType = InnerJoin;
                column(Quantity; Quantity)
                {
                    
                }
                filter(Quantity_filter; Quantity)
                {
                    ColumnFilter = Quantity_filter = filter(>-5);
                }
            }
            
        }
    }
    
}

















