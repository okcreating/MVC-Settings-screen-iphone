//
//  Model.swift
//  IOS HW15 oksana Kazarinova
//
//  Created by Oksana Kazarinova on 28/06/2024.
//

import Foundation

enum SettingsName: String {
    case airPlaneMode = "Airplane Mode"
    case wiFi = "Wi-Fi"
    case blueTooth = "Bluetooth"
    case mobileData = "Mobile Data"
    case personalHotspot = "Personal Hotspot"
    case notifications = "Notifications"
    case soundAndHaptics = "Sounds & Haptics"
    case focus = "Focus"
    case screenTime = "Screen Time"
    case general = "General"
    case controlCentre = "ControlCentre"
    case displayAndBrightness = "Display & Brightness"
    case homeScreen = "Home Screen"
    case accessibility = "Accessibility"
    case siriAndSearch = "Siri & Search"
    case faceIDAndPasscode = "Face ID & Passcode"
    case emergencySOS = "Emergency SOS"
    case explosureNotification = "Explosure Notification"
    case battery = "Battery"
    case privacyAndSecurity = "Privacy & Security"
}

enum CellType {
    case defaultType
    case value1Type
    case customType
}

struct Setting {
    var cellType: CellType
    var name: SettingsName
    var icon: String
    var imageViewColorCode: String
    var rightLabelText: String?
}

final class SettingsModel {

    func createModels() -> [[Setting]] {
        return [
            [Setting(cellType: .customType, name: .airPlaneMode, icon: "airplane", imageViewColorCode: "#ff9500"),
             Setting(cellType: .value1Type, name: .wiFi, icon: "wifi", imageViewColorCode: "#007aff", rightLabelText: "VM349678"),
             Setting(cellType: .value1Type, name: .blueTooth, icon: "icons8-bluetooth-30", imageViewColorCode: "F4FAFC",  rightLabelText: "On"),
             Setting(cellType: .defaultType, name: .mobileData, icon: "antenna.radiowaves.left.and.right", imageViewColorCode: "#007aff"),
             Setting(cellType: .value1Type, name: .personalHotspot, icon: "personalhotspot", imageViewColorCode: "#4cd964", rightLabelText: "Off")],

            [Setting(cellType: .defaultType, name: .notifications, icon: "bell.badge.fill", imageViewColorCode: "#ff3b30"),
             Setting(cellType: .defaultType, name: .soundAndHaptics, icon: "speaker.wave.3.fill", imageViewColorCode: "#ff3b30"),
             Setting(cellType: .defaultType, name: .focus, icon: "moon.fill", imageViewColorCode: "#5956d6"),
             Setting(cellType: .defaultType, name: .screenTime, icon: "hourglass", imageViewColorCode: "#5956d6")],

            [Setting(cellType: .defaultType, name: .general, icon: "gear", imageViewColorCode: "#A9A9A9"),
             Setting(cellType: .defaultType, name: .controlCentre, icon: "switch.2", imageViewColorCode: "#A9A9A9"),
             Setting(cellType: .defaultType, name: .displayAndBrightness, icon: "textformat.size", imageViewColorCode: "#007aff"),
             Setting(cellType: .defaultType, name: .homeScreen, icon: "Icona_Launchpad", imageViewColorCode: "F4FAFC"),
             Setting(cellType: .defaultType, name: .accessibility, icon: "accessibility", imageViewColorCode: "#007aff"),
             Setting(cellType: .defaultType, name: .siriAndSearch, icon: "Apple-Siri.jpg.square_social", imageViewColorCode: "F4FAFC"),
             Setting(cellType: .defaultType, name: .faceIDAndPasscode, icon: "faceid", imageViewColorCode: "#4cd964"),
             Setting(cellType: .defaultType, name: .emergencySOS, icon: "sos", imageViewColorCode: "#ff3b30"),
             Setting(cellType: .defaultType, name: .explosureNotification, icon: "circle.hexagongrid.fill", imageViewColorCode: "#ff3b30"),
             Setting(cellType: .defaultType, name: .battery, icon: "battery.100percent", imageViewColorCode: "#4cd964"),
             Setting(cellType: .defaultType, name: .privacyAndSecurity, icon: "hand.raised.fill", imageViewColorCode: "#007aff")]
        ]
    }
}


