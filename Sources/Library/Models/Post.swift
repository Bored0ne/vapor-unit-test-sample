import Vapor
import Fluent
import Foundation

public final class Post: Model {
    public var id: Node?
    public var content: String
    public init(content: String) {
        self.id = UUID().uuidString.makeNode()
        self.content = content
    }

    public init(node: Node, in context: Context) throws {
        id = try node.extract("id")
        content = try node.extract("content")
    }

    public func makeNode(context: Context) throws -> Node {
        return try Node(node: [
            "id": id,
            "content": content
        ])
    }
}

public extension Post {
    /**
        This will automatically fetch from database, using example here to load
        automatically for example. Remove on real models.
    */
    public convenience init?(from string: String) throws {
        self.init(content: string)
    }
}

extension Post: Preparation {
    public static func prepare(_ database: Database) throws {
        //
    }

    public static func revert(_ database: Database) throws {
        //
    }
}
