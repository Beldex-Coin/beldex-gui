import QtQuick 2.0

import "../components" as BeldexComponents

TextEdit {
    color: BeldexComponents.Style.defaultFontColor
    font.family: BeldexComponents.Style.fontRegular.name
    selectionColor: BeldexComponents.Style.dimmedFontColor
    wrapMode: Text.Wrap
    readOnly: true
    selectByMouse: true
    // Workaround for https://bugreports.qt.io/browse/QTBUG-50587
    onFocusChanged: {
        if(focus === false)
            deselect()
    }
}
