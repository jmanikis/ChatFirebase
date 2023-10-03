//
//  Created by Alex.M on 17.06.2022.
//

import Foundation
import SwiftUI

public struct User: Identifiable, Codable, Equatable, Hashable {
    public let id: String
    public let isAnonymous: Bool?
    public let email: String?
    public let dateCreated: Date?
    public let isPremium: Bool?
    public let preferences: [String]?
    public let shifts: [String]?
    public let profileImagePath: String?
    public let profileImageURL: String?
    public let userRole: String?
    public let firstName: String?
    public let lastName: String?
    public let phoneNumber: String?
    public let address: String?
    public let licenseNumber: String?
    public let diplomaImagePath: String?
    public let diplomaImageURL: String?
    public let govIDPath: String?
    public let govIDURL: String?
    public let selectedSoftwares: [String]?
    public let pharmacy: [String]?

    public var fullName: String {
        guard let firstName, let lastName else { return "" }
        return (firstName + lastName)
    }

    public init(
        id: String,
        isAnonymous: Bool? = nil,
        email: String? = nil,
        dateCreated: Date? = nil,
        isPremium: Bool? = nil,
        preferences: [String]? = nil,
        shifts: [String]? = nil,
        profileImagePath: String? = nil,
        profileImageURL: String? = nil,
        userRole: String? = nil,
        firstName: String? = nil,
        lastName: String? = nil,
        phoneNumber: String? = nil,
        address: String? = nil,
        licenseNumber: String? = nil,
        diplomaImagePath: String? = nil,
        diplomaImageURL: String? = nil,
        govIDPath: String? = nil,
        govIDURL: String? = nil,
        selectedSoftwares: [String]? = nil,
        pharmacy: [String]? = nil
    ) {
        self.id = id
        self.email = email
        self.isAnonymous = isAnonymous
        self.dateCreated = dateCreated
        self.isPremium = isPremium
        self.preferences = preferences
        self.shifts = shifts
        self.profileImagePath = profileImagePath
        self.profileImageURL = profileImageURL
        self.userRole = userRole
        self.firstName = firstName
        self.lastName = lastName
        self.phoneNumber = phoneNumber
        self.address = address
        self.licenseNumber = licenseNumber
        self.diplomaImagePath = diplomaImagePath
        self.diplomaImageURL = diplomaImageURL
        self.govIDPath = govIDPath
        self.govIDURL = govIDURL
        self.selectedSoftwares = selectedSoftwares
        self.pharmacy = pharmacy
    }

    public enum CodingKeys: String, CodingKey {
        case id = "user_id"
        case isAnonymous = "is_anonymous"
        case email = "email"
        case dateCreated = "date_created"
        case isPremium = "is_premium"
        case preferences = "preferences"
        case shifts = "shifts"
        case profileImagePath = "profile_image_path"
        case profileImageURL = "profile_image_url"
        case userRole = "user_role"
        case firstName = "first_name"
        case lastName = "last_name"
        case phoneNumber = "phone_number"
        case address = "address"
        case licenseNumber = "license_number"
        case diplomaImagePath = "diploma_image_path"
        case diplomaImageURL = "diploma_image_url"
        case govIDPath = "gov_id_path"
        case govIDURL = "gov_id_url"
        case selectedSoftwares = "selected_softwares"
        case pharmacy = "pharmacy"
    }
}
