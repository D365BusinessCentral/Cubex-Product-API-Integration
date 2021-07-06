codeunit 51011 "Cubex Get Items JobQueue"
{
    trigger OnRun()
    var
        lCubexGetItems: Codeunit "Cubex Get Items";
    begin
        if not lCubexGetItems.Run() then
            InsertCubexProductLogs(GetLastErrorText(), 'ERROR')
        else
            InsertCubexProductLogs('Items Retrieved Successfully', 'SUCCESS')
    end;

    local procedure InsertCubexProductLogs(lErrorText: Text; lStatus: text)
    var
        lCubexItemsIntegrationLog: Record CubexItemsIntegrationLog;
        lEntryNo: Integer;
    begin
        Clear(lEntryNo);
        lCubexItemsIntegrationLog.Reset();
        if lCubexItemsIntegrationLog.FindLast() then
            lEntryNo := lCubexItemsIntegrationLog."Entry No.";

        lCubexItemsIntegrationLog.Init();
        lCubexItemsIntegrationLog."Entry No." := lEntryNo + 1;
        lCubexItemsIntegrationLog.Description := lErrorText;
        lCubexItemsIntegrationLog.LogDateTime := CurrentDateTime;
        if lStatus = 'SUCCESS' then
            lCubexItemsIntegrationLog.Status := lCubexItemsIntegrationLog.Status::Success;
        if lStatus = 'ERROR' then
            lCubexItemsIntegrationLog.Status := lCubexItemsIntegrationLog.Status::Error;
        lCubexItemsIntegrationLog.Insert();
    end;
}
