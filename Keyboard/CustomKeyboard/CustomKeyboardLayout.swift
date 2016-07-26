//
//  CustomKeyboardLayout.swift
//  KeyboardLayoutEngine
//
//  Created by Cem Olcay on 11/05/16.
//  Copyright © 2016 Prototapp. All rights reserved.
//

import UIKit

// MARK: - Layout Style
public var CustomKeyboardLayoutStyle = KeyboardLayoutStyle()

// MARK: - Row Style
public var CustomKeyboardRowStyle = KeyboardRowStyle()
public var CustomKeyboardFirstRowStyle = KeyboardRowStyle(topPadding: 10, topPaddingLandscape: 6)

public var CustomKeyboardSecondRowStyle = KeyboardRowStyle(topPadding: 10, topPaddingLandscape: 6)

public var CustomKeyboardThirdRowStyle = KeyboardRowStyle(topPadding: 10, topPaddingLandscape: 6)

public var CustomKeyboardChildRowStyle = KeyboardRowStyle(
  leadingPadding: 0,
  trailingPadding: 0)

public var CustomKeyboardFourthRowStyle = KeyboardRowStyle(
  topPadding: 5,
  topPaddingLandscape: 4,
  bottomPadding: 4,
  bottomPaddingLandscape: 4)

// MARK: - Button Style
public var CustomKeyboardKeyButtonStyle = KeyboardButtonStyle(keyPopType: .Default)
public var CustomKeyboardLeftKeyButtonStyle = KeyboardButtonStyle(keyPopType: .Left)
public var CustomKeyboardRightKeyButtonStyle = KeyboardButtonStyle(keyPopType: .Right)

public var CustomKeyboardLowercaseKeyButtonStyle = KeyboardButtonStyle(textOffsetY: -2, keyPopType: .Default)
public var CustomKeyboardLowercaseLeftKeyButtonStyle = KeyboardButtonStyle(textOffsetY: -2, keyPopType: .Left)
public var CustomKeyboardLowercaseRightKeyButtonStyle = KeyboardButtonStyle(textOffsetY: -2, keyPopType: .Right)

public var CustomKeyboardSpaceButtonStyle = KeyboardButtonStyle(font: UIFont.systemFontOfSize(15))
public var CustomKeyboardBackspaceButtonStyle = KeyboardButtonStyle(
  backgroundColor: UIColor(red: 172.0/255.0, green: 179.0/255.0, blue: 188.0/255.0, alpha: 1),
  imageSize: 20)

public var CustomKeyboardShiftButtonStyle = KeyboardButtonStyle(
  backgroundColor: UIColor(red: 172.0/255.0, green: 179.0/255.0, blue: 188.0/255.0, alpha: 1),
  imageSize: 20)

public var CustomKeyboardGlobeButtonStyle = KeyboardButtonStyle(
  backgroundColor: UIColor(red: 172.0/255.0, green: 179.0/255.0, blue: 188.0/255.0, alpha: 1),
  imageSize: 20)

public var CustomKeyboardReturnButtonStyle = KeyboardButtonStyle(
  backgroundColor: UIColor(red: 172.0/255.0, green: 179.0/255.0, blue: 188.0/255.0, alpha: 1),
  font: UIFont.systemFontOfSize(15))

public var CustomKeyboardNumbersButtonStyle = KeyboardButtonStyle(
  backgroundColor: UIColor(red: 172.0/255.0, green: 179.0/255.0, blue: 188.0/255.0, alpha: 1),
  font: UIFont.systemFontOfSize(15))

// MARK: - Identifier
public enum CustomKeyboardIdentifier: String {
  case Space = "Space"
  case Backspace = "Backspace"
  case Globe = "Globe"
  case Return = "Return"
  case Numbers = "Numbers"
  case Letters = "Letters"
  case Symbols = "Symbols"
  case ShiftOff = "ShiftOff"
  case ShiftOn = "ShiftOn"
  case ShiftOnce = "ShiftOnce"
}

// MARK: - CustomKeyboardLayout
public class CustomKeyboardLayout {
  public var uppercase: KeyboardLayout
  public var uppercaseToggled: KeyboardLayout
  public var lowercase: KeyboardLayout
  public var numbers: KeyboardLayout
  public var symbols: KeyboardLayout

  public init() {
    uppercase = KeyboardLayout(
      style: CustomKeyboardLayoutStyle,
      rows: [
        KeyboardRow(
          style: CustomKeyboardFirstRowStyle,
          characters: [
            KeyboardButton(type: .Key("Й"), style: CustomKeyboardLeftKeyButtonStyle),
            KeyboardButton(type: .Key("Ц"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("У"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("К"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("Е"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("Н"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("Г"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("Ш"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("Щ"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("З"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("Х"), style: CustomKeyboardRightKeyButtonStyle),
          ]
        ),
        KeyboardRow(
          style: CustomKeyboardSecondRowStyle,
          characters: [
            KeyboardButton(type: .Key("Ф"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("Ы"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("В"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("А"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("П"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("Р"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("О"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("Л"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("Д"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("Ж"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("Э"), style: CustomKeyboardKeyButtonStyle),
          ]
        ),
        KeyboardRow(
          style: CustomKeyboardThirdRowStyle,
          characters: [
            KeyboardButton(
              type: .Image(UIImage(
                named: "ShiftOnce",
                inBundle: NSBundle(forClass: CustomKeyboard.self),
                compatibleWithTraitCollection: nil)),
              style: CustomKeyboardShiftButtonStyle,
              width: .Relative(percent: 0.080),
              identifier: CustomKeyboardIdentifier.ShiftOnce.rawValue),
            KeyboardRow(
              style: CustomKeyboardChildRowStyle,
              characters: [
                KeyboardButton(type: .Key("Я"), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("Ч"), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("С"), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("М"), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("И"), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("Т"), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("Ь"), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("Б"), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("Ю"), style: CustomKeyboardKeyButtonStyle),
              ]
            ),
            KeyboardButton(
              type: .Image(UIImage(
                named: "Backspace",
                inBundle: NSBundle(forClass: CustomKeyboard.self),
                compatibleWithTraitCollection: nil)),
              style: CustomKeyboardBackspaceButtonStyle,
              width: .Relative(percent: 0.080),
              identifier: CustomKeyboardIdentifier.Backspace.rawValue),
          ]
        ),
        KeyboardRow(
          style: CustomKeyboardFourthRowStyle,
          characters: [
            KeyboardButton(
              type: .Text("123"),
              style: CustomKeyboardNumbersButtonStyle,
              width: .Relative(percent: 0.115),
              identifier: CustomKeyboardIdentifier.Numbers.rawValue),
            KeyboardButton(
              type: .Image(UIImage(
                named: "Globe",
                inBundle: NSBundle(forClass: CustomKeyboard.self),
                compatibleWithTraitCollection: nil)),
              style: CustomKeyboardGlobeButtonStyle,
              width: .Relative(percent: 0.115),
              identifier: CustomKeyboardIdentifier.Globe.rawValue),
            KeyboardButton(type: .Key("Ү"), style: CustomKeyboardKeyButtonStyle, width: .Relative(percent: 0.080)),
            KeyboardButton(type: .Key("Ө"), style: CustomKeyboardKeyButtonStyle, width: .Relative(percent: 0.080)),
            KeyboardButton(type: .Key("Ң"), style: CustomKeyboardKeyButtonStyle, width: .Relative(percent: 0.080)),
            KeyboardButton(
              type: .Text(""),
              style: CustomKeyboardSpaceButtonStyle,
              identifier: CustomKeyboardIdentifier.Space.rawValue),
            KeyboardButton(
              type: .Text("Изде"),
              style: CustomKeyboardReturnButtonStyle,
              width: .Relative(percent: 0.18),
              identifier: CustomKeyboardIdentifier.Return.rawValue),
          ]
        ),
      ]
    )

    uppercaseToggled = KeyboardLayout(
      style: CustomKeyboardLayoutStyle,
      rows: [
        KeyboardRow(
          style: CustomKeyboardFirstRowStyle,
          characters: [
            KeyboardButton(type: .Key("Й"), style: CustomKeyboardLeftKeyButtonStyle),
            KeyboardButton(type: .Key("Ц"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("У"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("К"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("Е"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("Н"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("Г"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("Ш"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("Щ"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("З"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("Х"), style: CustomKeyboardRightKeyButtonStyle),
          ]
        ),
        KeyboardRow(
          style: CustomKeyboardSecondRowStyle,
          characters: [
            KeyboardButton(type: .Key("Ф"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("Ы"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("В"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("А"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("П"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("Р"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("О"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("Л"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("Д"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("Ж"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("Э"), style: CustomKeyboardKeyButtonStyle),
          ]
        ),
        KeyboardRow(
          style: CustomKeyboardThirdRowStyle,
          characters: [
            KeyboardButton(
              type: .Image(UIImage(
                named: "ShiftOn",
                inBundle: NSBundle(forClass: CustomKeyboard.self),
                compatibleWithTraitCollection: nil)),
              style: CustomKeyboardShiftButtonStyle,
              width: .Relative(percent: 0.080),
              identifier: CustomKeyboardIdentifier.ShiftOn.rawValue),
            KeyboardRow(
              style: CustomKeyboardChildRowStyle,
              characters: [
                KeyboardButton(type: .Key("Я"), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("Ч"), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("С"), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("М"), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("И"), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("Т"), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("Ь"), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("Б"), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("Ю"), style: CustomKeyboardKeyButtonStyle),
              ]
            ),
            KeyboardButton(
              type: .Image(UIImage(
                named: "Backspace",
                inBundle: NSBundle(forClass: CustomKeyboard.self),
                compatibleWithTraitCollection: nil)),
              style: CustomKeyboardBackspaceButtonStyle,
              width: .Relative(percent: 0.080),
              identifier: CustomKeyboardIdentifier.Backspace.rawValue),
          ]
        ),
        KeyboardRow(
          style: CustomKeyboardFourthRowStyle,
          characters: [
            KeyboardButton(
              type: .Text("123"),
              style: CustomKeyboardNumbersButtonStyle,
              width: .Relative(percent: 0.115),
              identifier: CustomKeyboardIdentifier.Numbers.rawValue),
            KeyboardButton(
              type: .Image(UIImage(
                named: "Globe",
                inBundle: NSBundle(forClass: CustomKeyboard.self),
                compatibleWithTraitCollection: nil)),
              style: CustomKeyboardGlobeButtonStyle,
              width: .Relative(percent: 0.115),
              identifier: CustomKeyboardIdentifier.Globe.rawValue),
            KeyboardButton(type: .Key("Ү"), style: CustomKeyboardKeyButtonStyle, width: .Relative(percent: 0.080)),
            KeyboardButton(type: .Key("Ө"), style: CustomKeyboardKeyButtonStyle, width: .Relative(percent: 0.080)),
            KeyboardButton(type: .Key("Ң"), style: CustomKeyboardKeyButtonStyle, width: .Relative(percent: 0.080)),
            KeyboardButton(
              type: .Text(""),
              style: CustomKeyboardSpaceButtonStyle,
              identifier: CustomKeyboardIdentifier.Space.rawValue),
            KeyboardButton(
              type: .Text("Изде"),
              style: CustomKeyboardReturnButtonStyle,
              width: .Relative(percent: 0.18),
              identifier: CustomKeyboardIdentifier.Return.rawValue),
          ]
        ),
      ]
    )

    lowercase = KeyboardLayout(
      style: CustomKeyboardLayoutStyle,
      rows: [
        KeyboardRow(
          style: CustomKeyboardFirstRowStyle,
          characters: [
            KeyboardButton(type: .Key("й"), style: CustomKeyboardLowercaseLeftKeyButtonStyle),
            KeyboardButton(type: .Key("ц"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("у"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("к"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("е"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("н"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("г"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("ш"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("щ"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("з"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("х"), style: CustomKeyboardLowercaseRightKeyButtonStyle),
          ]
        ),
        KeyboardRow(
          style: CustomKeyboardSecondRowStyle,
          characters: [
            KeyboardButton(type: .Key("ф"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("ы"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("в"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("а"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("п"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("р"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("о"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("л"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("д"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("ж"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("э"), style: CustomKeyboardKeyButtonStyle),
          ]
        ),
        KeyboardRow(
          style: CustomKeyboardThirdRowStyle,
          characters: [
            KeyboardButton(
              type: .Image(UIImage(
                named: "ShiftOff",
                inBundle: NSBundle(forClass: CustomKeyboard.self),
                compatibleWithTraitCollection: nil)),
              style: CustomKeyboardShiftButtonStyle,
              width: .Relative(percent: 0.080),
              identifier: CustomKeyboardIdentifier.ShiftOff.rawValue),
            KeyboardRow(
              style: CustomKeyboardChildRowStyle,
              characters: [
                KeyboardButton(type: .Key("я"), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("ч"), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("с"), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("м"), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("и"), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("т"), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("ь"), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("б"), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("ю"), style: CustomKeyboardKeyButtonStyle),
              ]
            ),
            KeyboardButton(
              type: .Image(UIImage(
                named: "Backspace",
                inBundle: NSBundle(forClass: CustomKeyboard.self),
                compatibleWithTraitCollection: nil)),
              style: CustomKeyboardBackspaceButtonStyle,
              width: .Relative(percent: 0.080),
              identifier: CustomKeyboardIdentifier.Backspace.rawValue),
          ]
        ),
        KeyboardRow(
          style: CustomKeyboardFourthRowStyle,
          characters: [
            KeyboardButton(
              type: .Text("123"),
              style: CustomKeyboardNumbersButtonStyle,
              width: .Relative(percent: 0.115),
              identifier: CustomKeyboardIdentifier.Numbers.rawValue),
            KeyboardButton(
              type: .Image(UIImage(
                named: "Globe",
                inBundle: NSBundle(forClass: CustomKeyboard.self),
                compatibleWithTraitCollection: nil)),
              style: CustomKeyboardGlobeButtonStyle,
              width: .Relative(percent: 0.115),
              identifier: CustomKeyboardIdentifier.Globe.rawValue),
            KeyboardButton(type: .Key("ү"), style: CustomKeyboardKeyButtonStyle, width: .Relative(percent: 0.080)),
            KeyboardButton(type: .Key("ө"), style: CustomKeyboardKeyButtonStyle, width: .Relative(percent: 0.080)),
            KeyboardButton(type: .Key("ң"), style: CustomKeyboardKeyButtonStyle, width: .Relative(percent: 0.080)),
            KeyboardButton(
              type: .Text(""),
              style: CustomKeyboardSpaceButtonStyle,
              identifier: CustomKeyboardIdentifier.Space.rawValue),
            KeyboardButton(
              type: .Text("Изде"),
              style: CustomKeyboardReturnButtonStyle,
              width: .Relative(percent: 0.18),
              identifier: CustomKeyboardIdentifier.Return.rawValue),
          ]
        ),
      ]
    )

    numbers = KeyboardLayout(
      style: CustomKeyboardLayoutStyle,
      rows: [
        KeyboardRow(
          style: CustomKeyboardFirstRowStyle,
          characters: [
            KeyboardButton(type: .Key("1"), style: CustomKeyboardLeftKeyButtonStyle),
            KeyboardButton(type: .Key("2"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("3"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("4"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("5"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("6"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("7"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("8"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("9"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("0"), style: CustomKeyboardRightKeyButtonStyle),
          ]
        ),
        KeyboardRow(
          style: CustomKeyboardRowStyle,
          characters: [
            KeyboardButton(type: .Key("-"), style: CustomKeyboardLeftKeyButtonStyle),
            KeyboardButton(type: .Key("/"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key(":"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key(";"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("("), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key(")"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("$"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("&"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("@"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("\""), style: CustomKeyboardRightKeyButtonStyle),
          ]
        ),
        KeyboardRow(
          style: CustomKeyboardThirdRowStyle,
          characters: [
            KeyboardButton(
              type: .Text("#+="),
              style: CustomKeyboardNumbersButtonStyle,
              width: .Relative(percent: 0.115),
              identifier: CustomKeyboardIdentifier.Symbols.rawValue),
            KeyboardRow(
              style: CustomKeyboardChildRowStyle,
              characters: [
                KeyboardButton(type: .Key("."), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key(","), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("?"), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("!"), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("'"), style: CustomKeyboardKeyButtonStyle),
              ]
            ),
            KeyboardButton(
              type: .Image(UIImage(
                named: "Backspace",
                inBundle: NSBundle(forClass: CustomKeyboard.self),
                compatibleWithTraitCollection: nil)),
              style: CustomKeyboardBackspaceButtonStyle,
              width: .Relative(percent: 0.115),
              identifier: CustomKeyboardIdentifier.Backspace.rawValue),
          ]
        ),
        KeyboardRow(
          style: CustomKeyboardFourthRowStyle,
          characters: [
            KeyboardButton(
              type: .Text("ABC"),
              style: CustomKeyboardNumbersButtonStyle,
              width: .Relative(percent: 0.115),
              identifier: CustomKeyboardIdentifier.Letters.rawValue),
            KeyboardButton(
              type: .Image(UIImage(
                named: "Globe",
                inBundle: NSBundle(forClass: CustomKeyboard.self),
                compatibleWithTraitCollection: nil)),
              style: CustomKeyboardGlobeButtonStyle,
              width: .Relative(percent: 0.115),
              identifier: CustomKeyboardIdentifier.Globe.rawValue),
            KeyboardButton(
              type: .Text(""),
              style: CustomKeyboardSpaceButtonStyle,
              identifier: CustomKeyboardIdentifier.Space.rawValue),
            KeyboardButton(
              type: .Text("Изде"),
              style: CustomKeyboardReturnButtonStyle,
              width: .Relative(percent: 0.18),
              identifier: CustomKeyboardIdentifier.Return.rawValue),
          ]
        ),
      ]
    )

    symbols = KeyboardLayout(
      style: CustomKeyboardLayoutStyle,
      rows: [
        KeyboardRow(
          style: CustomKeyboardFirstRowStyle,
          characters: [
            KeyboardButton(type: .Key("["), style: CustomKeyboardLeftKeyButtonStyle),
            KeyboardButton(type: .Key("]"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("{"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("}"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("#"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("%"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("^"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("*"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("+"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("="), style: CustomKeyboardRightKeyButtonStyle),
          ]
        ),
        KeyboardRow(
          style: CustomKeyboardRowStyle,
          characters: [
            KeyboardButton(type: .Key("_"), style: CustomKeyboardLeftKeyButtonStyle),
            KeyboardButton(type: .Key("\\"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("|"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("~"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("<"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key(">"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("€"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("£"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("¥"), style: CustomKeyboardKeyButtonStyle),
            KeyboardButton(type: .Key("•"), style: CustomKeyboardRightKeyButtonStyle),
          ]
        ),
        KeyboardRow(
          style: CustomKeyboardThirdRowStyle,
          characters: [
            KeyboardButton(
              type: .Text("123"),
              style: CustomKeyboardNumbersButtonStyle,
              width: .Relative(percent: 0.115),
              identifier: CustomKeyboardIdentifier.Numbers.rawValue),
            KeyboardRow(
              style: CustomKeyboardChildRowStyle,
              characters: [
                KeyboardButton(type: .Key("."), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key(","), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("?"), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("!"), style: CustomKeyboardKeyButtonStyle),
                KeyboardButton(type: .Key("'"), style: CustomKeyboardKeyButtonStyle),
              ]
            ),
            KeyboardButton(
              type: .Image(UIImage(
                named: "Backspace",
                inBundle: NSBundle(forClass: CustomKeyboard.self),
                compatibleWithTraitCollection: nil)),
              style: CustomKeyboardBackspaceButtonStyle,
              width: .Relative(percent: 0.115),
              identifier: CustomKeyboardIdentifier.Backspace.rawValue),
          ]
        ),
        KeyboardRow(
          style: CustomKeyboardFourthRowStyle,
          characters: [
            KeyboardButton(
              type: .Text("ABC"),
              style: CustomKeyboardNumbersButtonStyle,
              width: .Relative(percent: 0.115),
              identifier: CustomKeyboardIdentifier.Letters.rawValue),
            KeyboardButton(
              type: .Image(UIImage(
                named: "Globe",
                inBundle: NSBundle(forClass: CustomKeyboard.self),
                compatibleWithTraitCollection: nil)),
              style: CustomKeyboardGlobeButtonStyle,
              width: .Relative(percent: 0.115),
              identifier: CustomKeyboardIdentifier.Globe.rawValue),
            KeyboardButton(
              type: .Text(""),
              style: CustomKeyboardSpaceButtonStyle,
              identifier: CustomKeyboardIdentifier.Space.rawValue),
            KeyboardButton(
              type: .Text("Изде"),
              style: CustomKeyboardReturnButtonStyle,
              width: .Relative(percent: 0.18),
              identifier: CustomKeyboardIdentifier.Return.rawValue),
          ]
        ),
      ]
    )
  }
}
