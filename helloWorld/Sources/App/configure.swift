import Vapor

// configures your application
public func configure(_ app: Application) async throws {
    app.logger.logLevel = .debug
    
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    // register routes
    try routes(app)
}
