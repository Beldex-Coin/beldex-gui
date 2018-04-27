import QtQuick 2.0

import "../components" as LokiComponents

TextEdit {
    color: LokiComponents.Style.defaultFontColor
    font.family: LokiComponents.Style.fontRegular.name
    wrapMode: Text.Wrap
    readOnly: true
    selectByMouse: true
    // Workaround for https://bugreports.qt.io/browse/QTBUG-50587
    onFocusChanged: {
        if(focus === false)
            deselect()
    }
}
