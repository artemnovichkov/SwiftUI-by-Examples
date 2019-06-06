//
//  Animal.swift
//  SwiftUI by Examples
//
//  Created by Artem Novichkov on 05/06/2019.
//  Copyright © 2019 Artem Novichkov. All rights reserved.
//

struct Video {

    let title: String
    let description: String
    let thumbnail: String

    static let all: [Video] = [.init(title: "Implementing Dark Mode on iOS",
                                     description: "Hear from the UIKit engineering team about the principles and concepts that anchor Dark Mode on iOS. Get introduced to the principles of enhancing your app with this new appearance using dynamic colors and images, and add an experience that people are sure to love.",
                                     thumbnail: "2949_wide_250x141_2x"),
                               .init(title: "Introducing Sign In with Apple",
                                     description: "Sign In with Apple is the fast, easy way for people to sign in to apps using the Apple IDs they already have. Learn how easy it is to add a Sign In with Apple button to your app or website to acquire new customers and benefit from the built-in security, antifraud, and privacy that Sign In with Apple provides.",
                                     thumbnail: "2645_wide_250x141_2x"),
                               .init(title: "Introducing Parameters for Shortcuts",
                                     description: "Parameters take Siri Shortcuts to the next level, enabling an interactive voice experience in Siri with follow-up questions, and allowing people to customize shortcuts in the Shortcuts app, now built into iOS. Walk through setting up your shortcuts to take advantage of parameters and learn how your shortcuts can pass output to other actions when creating multi-step shortcuts in the Shortcuts app.",
                                     thumbnail: "2649_wide_250x141_2x"),
                               .init(title: "Introducing PencilKit",
                                     description: "Meet PencilKit, Apple's feature-rich drawing and annotation framework. With just a few lines of code, you can add a full drawing experience to your app — with access to a canvas, responsive inks, rich tool palette and drawing model. Hear the technical details that make a great Apple Pencil experience. Learn about the new screenshot editor and how you can adopt just a few small APIs to enable your full content to be captured beyond the size of the screen, with or without your app's user interface.",

                                     thumbnail: "2682_wide_250x141_2x"),
                               .init(title: "SwiftUI Essentials",
                                     description: "Take your first deep-dive into building an app with SwiftUI. Learn about Views and how they work. From basic controls to sophisticated containers like lists and navigation stacks, SwiftUI enables the creation of great user interfaces, faster and more easily. See how basic controls like Button are both simple yet versatile. Discover how to compose these pieces into larger, full-featured user interfaces that facilitate building great apps with SwiftUI. Build your SwiftUI skills as you learn the essentials of Apple's new declarative framework.",
                                     thumbnail: "2672_wide_250x141_2x"),
                               .init(title: "Designing for Privacy",
                                     description: "Privacy is a more important issue than ever for your users. Learn about new features and privacy engineering techniques that can help you earn customer trust, create more personal experiences, and improve user engagement.",
                                     thumbnail: "2640_wide_250x141_2x"),
                               .init(title: "Create ML for Object Detection and Sound Classification",
                                     description: "Create ML enables you to create, evaluate, and test powerful, production-class Core ML models. See how easy it is to create your own Object Detection and Sound Classification models for use in your apps. Learn strategies for balancing your training data to achieve great model accuracy.",
                                     thumbnail: "2612_wide_250x141_2x"),
                               .init(title: "Delivering Optimized Metal Apps and Games",
                                     description: "Optimizing performance, memory, and bandwidth are important considerations for resource-intensive Metal apps and games. Learn key best practices to streamline your rendering and attain high frame rates. Understand powerful tools that can help you pinpoint expensive or unexpected GPU work. Dive into GPU capabilities that can yield performance gains and get expert guidance about using memory efficiently.", thumbnail: "2676_wide_250x141_2x"),
                               .init(title: "Metal for Pro Apps",
                                     description: "Metal is the platform-optimized graphics and compute framework at the heart of GPU acceleration on Apple platforms. Learn key aspects of the Metal architecture that support the techniques for modern high-performance pro applications and workflows. Learn how to leverage Metal capabilities to optimize performance and maintain a steady frame rate in video editing pipelines. Understand how to leverage CPU and GPU parallelism, and dive into best practices for efficient data throughput.",
                                     thumbnail: "2684_wide_250x141_2x")]
}
