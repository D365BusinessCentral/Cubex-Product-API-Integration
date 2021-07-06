codeunit 51010 "Cubex Get Items"
{
    trigger OnRun()
    begin
        CheckSetup();
        GetItemsList();
    end;

    procedure CheckSetup()
    begin
        APIConfiguration.Get();
        APIConfiguration.TestField(AutoCribWS_GET_API);
        APIConfiguration.TestField(Database_name);
        APIConfiguration.TestField(Database_user);
        APIConfiguration.TestField(Database_password);
    end;


    procedure GetItemsList()
    var
        lhttpClient: HttpClient;
        lhttpContent: HttpContent;
        lhttpHeaders: HttpHeaders;
        lhttpResponseMessage: HttpResponseMessage;
        lBody: Text;
        XmlDocMgmt: Codeunit "XML DOM Management";
    begin
        TempXMLBuffer.DeleteAll();
        lBody := '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:myc="http://www.mycubex.net/">';
        lBody += StrSubstNo('<soapenv:Header/><soapenv:Body><myc:GetItems><myc:dbUser>%1</myc:dbUser>', APIConfiguration.Database_user);
        lBody += StrSubstNo('<myc:dbPassword>%1</myc:dbPassword><myc:databaseName>%2</myc:databaseName>', APIConfiguration.Database_password, APIConfiguration.Database_name);
        lBody += '<myc:ItemID></myc:ItemID></myc:GetItems></soapenv:Body></soapenv:Envelope>';
        lhttpContent.WriteFrom(lBody);
        lHttpcontent.GetHeaders(lHttpheaders);
        lHttpheaders.Remove('Content-Type');
        lHttpHeaders.Add('Content-Type', 'text/xml');
        if lhttpClient.Post(APIConfiguration.AutoCribWS_GET_API, lhttpContent, lhttpResponseMessage) then begin
            lhttpResponseMessage.Content.ReadAs(gresponseText);
            TempXMLBuffer.LoadFromText(gresponseText);
            InsertItems();
            //Message(gresponseText);
        end else
            MESSAGE(FORMAT(lhttpResponseMessage.Content));

    end;

    local procedure InsertItems()
    var
        TempXMLBuffer1: Record "XML Buffer" temporary;
    begin
        TempXMLBuffer1.DeleteAll();
        TempXMLBuffer.Reset();
        TempXMLBuffer.SetFilter(Name, 'ItemRequest');
        if TempXMLBuffer.FindFirst() then
            repeat
                TempXMLBuffer1.Init();
                TempXMLBuffer1 := TempXMLBuffer;
                TempXMLBuffer1.Insert();
            until TempXMLBuffer.Next() = 0;

        TempXMLBuffer1.Reset();
        if TempXMLBuffer1.FindFirst() then
            repeat
                InsertCubexItems(TempXMLBuffer1."Entry No.");
            until TempXMLBuffer1.Next() = 0;
    end;

    local procedure InsertCubexItems(lParentEntryNo: Integer)
    var
        CubexItems: Record "Cubex Items";
        lEntryNo: Integer;
    begin
        CubexItems.Reset();
        if CubexItems.FindLast() then
            lEntryNo := CubexItems.entry_no + 1
        else
            lEntryNo := 1;

        TempXMLBuffer.Reset();
        TempXMLBuffer.SetFilter("Parent Entry No.", '%1', lParentEntryNo);
        TempXMLBuffer.SetFilter(Name, 'Code');
        if TempXMLBuffer.FindFirst() then begin
            CubexItems.Reset();
            CubexItems.SetRange(Code, TempXMLBuffer.Value);
            if not CubexItems.FindFirst() then begin
                CubexItems.Init();
                CubexItems.entry_no := lEntryNo;
                CubexItems.Code := TempXMLBuffer.Value;
                CubexItems.Insert();
            end;
            TempXMLBuffer.Delete();
        end;

        TempXMLBuffer.Reset();
        TempXMLBuffer.SetFilter("Parent Entry No.", '%1', lParentEntryNo);
        if TempXMLBuffer.FindFirst() then
            repeat
                case TempXMLBuffer.Name of
                    'Description1':
                        CubexItems.Description1 := TempXMLBuffer.Value;
                    'Description2':
                        CubexItems.Description2 := TempXMLBuffer.Value;
                    'ItemType':
                        CubexItems.ItemType := TempXMLBuffer.Value;
                    'Substitute':
                        CubexItems.Substitute := TempXMLBuffer.Value;
                    'PackQty':
                        CubexItems.PackQty := TempXMLBuffer.Value;
                    'OrderQty':
                        CubexItems.OrderQty := TempXMLBuffer.Value;
                    'AvgUnitCost':
                        CubexItems.AvgUnitCost := TempXMLBuffer.Value;
                    'IssueCost':
                        CubexItems.IssueCost := TempXMLBuffer.Value;
                    'Cost':
                        CubexItems.Cost := TempXMLBuffer.Value;
                    'Vendor':
                        CubexItems.Vendor := TempXMLBuffer.Value;
                    'VendorItem':
                        CubexItems.VendorItem := TempXMLBuffer.Value;
                    'Mfg':
                        CubexItems.Mfg := TempXMLBuffer.Value;
                    'MfgItem':
                        CubexItems.MfgItem := TempXMLBuffer.Value;
                    'Class':
                        CubexItems.Class := TempXMLBuffer.Value;
                    'LastReview':
                        CubexItems.LastReview := TempXMLBuffer.Value;
                    'MaxSysQty':
                        CubexItems.MaxSysQty := TempXMLBuffer.Value;
                    'LastIssue':
                        CubexItems.LastIssue := TempXMLBuffer.Value;
                    'RefDifPQty':
                        CubexItems.RefDifPQty := TempXMLBuffer.Value;
                    'CField1':
                        CubexItems.CField1 := TempXMLBuffer.Value;
                    'CField2':
                        CubexItems.CField2 := TempXMLBuffer.Value;
                    'Weigh':
                        CubexItems.Weigh := TempXMLBuffer.Value;
                    'Weight':
                        CubexItems.Weight := TempXMLBuffer.Value;
                    'UOM':
                        CubexItems.UOM := TempXMLBuffer.Value;
                    'OrderUnit':
                        CubexItems.OrderUnit := TempXMLBuffer.Value;
                    'OrderBulkUnit':
                        CubexItems.OrderBulkUnit := TempXMLBuffer.Value;
                    'OrderBulkQty':
                        CubexItems.OrderBulkQty := TempXMLBuffer.Value;
                    'IssueUnit':
                        CubexItems.IssueUnit := TempXMLBuffer.Value;
                    'IssuePackUnit':
                        CubexItems.CField1 := TempXMLBuffer.Value;
                    'PMV':
                        CubexItems.PMV := TempXMLBuffer.Value;
                    'Status':
                        CubexItems.Status := TempXMLBuffer.Value;
                    'Active':
                        CubexItems.Active := TempXMLBuffer.Value;
                    'IssueUnitPrice':
                        CubexItems.IssueUnitPrice := TempXMLBuffer.Value;
                    'IssueIssueCost':
                        CubexItems.IssueIssueCost := TempXMLBuffer.Value;
                    'IssueUnitCost':
                        CubexItems.IssueUnitCost := TempXMLBuffer.Value;
                    'OrderUnitPrice':
                        CubexItems.OrderUnitPrice := TempXMLBuffer.Value;
                    'SupplierChoice':
                        CubexItems.SupplierChoice := TempXMLBuffer.Value;
                    'OrderBulkUnit1':
                        CubexItems.OrderBulkUnit1 := TempXMLBuffer.Value;
                    'OrderBulkQty1':
                        CubexItems.OrderBulkQty1 := TempXMLBuffer.Value;
                    'OrderUnitPrice1':
                        CubexItems.OrderUintPrice1 := TempXMLBuffer.Value;
                    'Vendor1':
                        CubexItems.Vendor1 := TempXMLBuffer.Value;
                    'VendorItem1':
                        CubexItems.VendorItem1 := TempXMLBuffer.Value;
                    'Mfg1':
                        CubexItems.Mfg1 := TempXMLBuffer.Value;
                    'MfgItem1':
                        CubexItems.MfgItem1 := TempXMLBuffer.Value;
                    'OrderBulkUnit2':
                        CubexItems.OrderBulkUint2 := TempXMLBuffer.Value;
                    'OrderBulkQty2':
                        CubexItems.OrderBulkQty2 := TempXMLBuffer.Value;
                    'OrderUnitPrice2':
                        CubexItems.OrderUintPrice2 := TempXMLBuffer.Value;
                    'Vendor2':
                        CubexItems.Vendor2 := TempXMLBuffer.Value;
                    'VendorItem2':
                        CubexItems.VendorItem2 := TempXMLBuffer.Value;
                    'Mfg2':
                        CubexItems.Mfg2 := TempXMLBuffer.Value;
                    'MfgItem2':
                        CubexItems.MfgItem2 := TempXMLBuffer.Value;
                    'OrderBulkUnit3':
                        CubexItems.OrderBulkUint3 := TempXMLBuffer.Value;
                    'OrderBulkQty3':
                        CubexItems.OrderBulkQty3 := TempXMLBuffer.Value;
                    'OrderUnitPrice3':
                        CubexItems.OrderUintPrice3 := TempXMLBuffer.Value;
                    'Vendor3':
                        CubexItems.Vendor3 := TempXMLBuffer.Value;
                    'VendorItem3':
                        CubexItems.VendorItem3 := TempXMLBuffer.Value;
                    'Mfg3':
                        CubexItems.Mfg2 := TempXMLBuffer.Value;
                    'MfgItem3 ':
                        CubexItems.MfgItem2 := TempXMLBuffer.Value;

                    'OverrideExclude ':
                        CubexItems.OverrideExclude := TempXMLBuffer.Value;
                    'PharmacyOwned ':
                        CubexItems.PharmacyOwned := TempXMLBuffer.Value;
                    'NDCSupplier1':
                        CubexItems.NDCSUpplier1 := TempXMLBuffer.Value;
                    'NDCSupplier2':
                        CubexItems.NDCSUpplier2 := TempXMLBuffer.Value;
                    'NDCSupplier3':
                        CubexItems.NDCSUpplier3 := TempXMLBuffer.Value;
                    'RxCheck ':
                        CubexItems.RxCheck := TempXMLBuffer.Value;
                    'DoseVolume':
                        CubexItems.DoseVolume := TempXMLBuffer.Value;
                    'DoseVolumeUnits':
                        CubexItems.DoseVolumeUnits := TempXMLBuffer.Value;
                    'DoseForm':
                        CubexItems.DoseForm := TempXMLBuffer.Value;
                    'Strength':
                        CubexItems.Strength := TempXMLBuffer.Value;
                    'StrengthUnits':
                        CubexItems.StrengthUnits := TempXMLBuffer.Value;
                    'StrengthAmount':
                        CubexItems.StrengthAmount := TempXMLBuffer.Value;
                    'StrengthAmountUnits':
                        CubexItems.StrengthAmountUnits := TempXMLBuffer.Value;
                    'DpsePerWeight':
                        CubexItems.DpsePerWeight := TempXMLBuffer.Value;
                    'DosPerWeightUnits':
                        CubexItems.DosePerWeightUnits := TempXMLBuffer.Value;
                    'ItemDetailedDescription':
                        CubexItems.ItemDetailedDescription := TempXMLBuffer.Value;
                    'UserDefinedText':
                        CubexItems.UserDefinedText := TempXMLBuffer.Value;
                    'NDCNumber':
                        CubexItems.NDCNumber := TempXMLBuffer.Value;
                    'DrugSchedule':
                        CubexItems.DrugSchedule := TempXMLBuffer.Value;
                    'ExternalItem':
                        CubexItems.ExternalItem := TempXMLBuffer.Value;
                    'ExternalLocation':
                        CubexItems.ExternalLocation := TempXMLBuffer.Value;
                    'Billable':
                        CubexItems.Billable := TempXMLBuffer.Value;
                    'ShoeDose':
                        CubexItems.ShowDose := TempXMLBuffer.Value;
                    'DosInMassUnits':
                        CubexItems.DosInMassUnits := TempXMLBuffer.Value;
                    'AskDose':
                        CubexItems.AskDose := TempXMLBuffer.Value;
                    'IssueWitnessRequired':
                        CubexItems.IssueWitnessRequired := TempXMLBuffer.Value;
                    'WasteWitnessRequired':
                        CubexItems.WasteWitnessRequired := TempXMLBuffer.Value;
                    'RestockWitnessRequired':
                        CubexItems.RestockWitnessRequired := TempXMLBuffer.Value;
                    'CycleCountWitnessRequired':
                        CubexItems.CycleCountWitnessRequired := TempXMLBuffer.Value;
                    'CanReturnToIssueLocation':
                        CubexItems.CanReturnToIssueLocation := TempXMLBuffer.Value;
                    'CanReturnToRtrnBinOnly':
                        CubexItems.CanReturnTORtrnBinOnly := TempXMLBuffer.Value;
                    'CountBackRequired':
                        CubexItems.CountBackRequired := TempXMLBuffer.Value;
                    'CNR':
                        CubexItems.CNR := TempXMLBuffer.Value;
                    'CNI':
                        CubexItems.CNI := TempXMLBuffer.Value;
                    'LNR':
                        CubexItems.LNR := TempXMLBuffer.Value;
                    'LNI':
                        CubexItems.LNI := TempXMLBuffer.Value;
                    'EXPR':
                        CubexItems.EXPR := TempXMLBuffer.Value;
                    'EXPI':
                        CubexItems.EXPI := TempXMLBuffer.Value;
                    'DN':
                        CubexItems.DN := TempXMLBuffer.Value;
                    'RefrigeratedItem':
                        CubexItems.RefrigeratedItem := TempXMLBuffer.Value;
                    'EmergencyItem':
                        CubexItems.EmergencyItem := TempXMLBuffer.Value;
                    'EmergencyDefaultQty':
                        CubexItems.EmergencyDefaultQty := TempXMLBuffer.Value;
                    '_ReqType':
                        CubexItems._ReqType := TempXMLBuffer.Value;
                end;
                CubexItems.Modify();
            until TempXMLBuffer.Next() = 0;
    end;





    var
        APIConfiguration: Record "Cubex API Configuration";
        gresponseText: Text;
        TempXMLBuffer: Record "XML Buffer" temporary;


}
