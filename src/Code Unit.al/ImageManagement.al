codeunit 50103 ImageManagement
{
    procedure ImportItemPicture(Item: Record Item)
    var
        PicInStream: InStream;
        FromFileName: Text;
        OverrideImageQst: Label 'The existing picture will be replaced. Do you want to continue?', Locked = false, MaxLength = 250;
    begin
        if Item.Picture.Count > 0 then
            if not Confirm(OverrideImageQst) then
                exit;

        if UploadIntoStream('Import', '', 'All Files (*.*)|*.*', FromFileName, PicInStream) then begin
            Clear(Item.Picture);
            Item.Picture.ImportStream(PicInStream, FromFileName);
            Item.Modify(true);
        end;
    end;

    procedure ExportItemPicture(Item: Record Item)
    var
        PicInStream: InStream;
        Index: Integer;
        TenantMedia: Record "Tenant Media";
        FileName: Text;
    begin
        if Item.Picture.Count = 0 then
            exit;

        for Index := 1 to Item.Picture.Count do begin
            if TenantMedia.Get(Item.Picture.Item(Index)) then begin
                TenantMedia.CalcFields(Content);
                if TenantMedia.Content.HasValue then begin
                    FileName := Item."No." + '_Image' + Format(Index) + GetTenantMediaFileExtension(TenantMedia);
                    TenantMedia.Content.CreateInStream(PicInStream);
                    DownloadFromStream(PicInStream, '', '', '', FileName);
                end;
            end;
        end;
    end;

    local procedure GetTenantMediaFileExtension(TenantMedia: Record "Tenant Media"): Text
    begin
        case TenantMedia."Mime Type" of
            'image/jpeg':
                exit('.jpg');
            'image/png':
                exit('.png');
            'image/bmp':
                exit('.bmp');
            'image/gif':
                exit('.gif');
            'image/tiff':
                exit('.tiff');
            'image/wmf':
                exit('.wmf');
            else
                exit('');
        end;
    end;
}
