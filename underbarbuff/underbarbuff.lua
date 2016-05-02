function R_COMMON_BUFF_MSG(frame, msg, buffType, handle, buff_ui, buffIndex)
    _G['COMMON_BUFF_MSG_OLD'](frame, msg, buffType, handle, buff_ui, buffIndex);

    frame = ui.GetFrame("buff");
    frame:MoveFrame(ui.GetClientInitialWidth()/2-80, ui.GetClientInitialHeight()/2+250);
end

if _G["COMMON_BUFF_MSG_OLD"] == nil then
    _G["COMMON_BUFF_MSG_OLD"] = _G["COMMON_BUFF_MSG"];
    _G["COMMON_BUFF_MSG"] = R_COMMON_BUFF_MSG;
else
    _G["COMMON_BUFF_MSG"] = R_COMMON_BUFF_MSG;
end