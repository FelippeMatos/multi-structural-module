// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StructuralSPM",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
//        .library(name: "pocjournys", targets: ["pocjournys"]),
        
        .library(name: "Core", targets: ["Core"]),
        .library(name: "Analytics", targets: ["Analytics"]),
        .library(name: "AnalyticsInterfaces", targets: ["AnalyticsInterfaces"]),
        .library(name: "Networking", targets: ["Networking"]),
        .library(name: "NetworkingInterfaces", targets: ["NetworkingInterfaces"]),
        .library(name: "AppSecurity", targets: ["AppSecurity"]),
        .library(name: "AppSecurityInterfaces", targets: ["AppSecurityInterfaces"]),

    ],
    
    dependencies: [
        // Caso a dependencia fica na mesma pasta, entao nao precisamos declarar nas dependencias, pois causaria erro de dupla declaração
//        .package(name: "AnalyticsInterfaces", path: "AnalyticsInterfaces"),
//        .package(name: "NetworkingInterfaces", path: "NetworkingInterfaces"),
//        .package(name: "AppSecurityInterfaces", path: "AppSecurityInterfaces"),
    ],
    
    targets: [
        .target(name: "Analytics", dependencies: ["AnalyticsInterfaces"],
                path: "Analytics/Sources"),
        .testTarget(name: "AnalyticsTests", dependencies: ["Analytics"],
                path: "Analytics/Tests"),

        .target(name: "AnalyticsInterfaces", dependencies: [],
                path: "AnalyticsInterfaces/Sources"),
        .testTarget(name: "AnalyticsInterfacesTests", dependencies: ["AnalyticsInterfaces"],
                path: "AnalyticsInterfaces/Tests"),
        
        .target(name: "Core", dependencies: [],
                path: "Core/Sources"),
        .testTarget(name: "CoreTests", dependencies: ["Core"],
                path: "Core/Tests"),
    
        .target(name: "Networking", dependencies: ["NetworkingInterfaces"],
                path: "Networking/Sources"),
        .testTarget(name: "NetworkingTests", dependencies: ["Networking"],
                path: "Networking/Tests"),
    
        .target(name: "NetworkingInterfaces", dependencies: [],
                path: "NetworkingInterfaces/Sources"),
        .testTarget(name: "NetworkingInterfacesTests", dependencies: ["NetworkingInterfaces"],
                path: "NetworkingInterfaces/Tests"),
    
        .target(name: "AppSecurity", dependencies: ["AppSecurityInterfaces"],
                path: "AppSecurity/Sources"),
        .testTarget(name: "AppSecurityTests", dependencies: ["AppSecurity"],
                path: "AppSecurity/Tests"),
        
        .target(name: "AppSecurityInterfaces", dependencies: [],
                path: "AppSecurityInterfaces/Sources"),
        .testTarget(name: "AppSecurityInterfacesTests", dependencies: ["AppSecurityInterfaces"],
                path: "AppSecurityInterfaces/Tests"),
    ]
)
