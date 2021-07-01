import Foundation

open class XyoWitness {
    public let address: XyoAddress?
    public var previousHash: String?
    
    public init(_ address: XyoAddress? = nil) {
        self.address = try? address ?? XyoAddress()
    }
    
    open func observe() -> XyoPayload? {
        preconditionFailure("This method must be overridden")
    }
}
