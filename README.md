# Idea
This system is a mediator between window and door companies and customers. The companies register their services, materials, and prices per cm. The customers request custom orders and the system calculates the prices based on the companies' data automatically.

# Implementation Specifications
- **Riverpod** v2.0 for state management
- **Auto Route** for nested navigation and different navigation trees
- Firebase for authentication and storage
- Flutter Toast for message pop-ups


# Features
## Functional Features
### Admin features
- activate/deactivate companies
- approve/deny companies' registration
- browse users' list
### company features
- choose available services, materials, and mark prices of materials per cm
- accept/deny customers' requests
- chat with customers
- edit services (add, remove, change prices).
- edit contact data.
### customer features
- request custom orders for doors/windows with parameters like colors, width, height, materials, handles.
- see automatically generated offers from a company for the selected parameters.
- choose an offer and send a request to the company.
- chat with companies.

## Non-Functional features
- companies can only login if activated.
- all kinds of user errors are handled.
- user receives pop-up messages for their actions with more than 20 different messages for various scenarios.

# Architecture
This system has a well-designed architecture with no dependencies between features. The system uses mvvm and feature-driven architecture, where each feature has "presentation, data, domain" layers. The features are independent of each other, except for shared units, which are top-level.


# Software UML Analysis Diagrams
in order to implement this project, it was important to follow a well mannered software design approach by analying the system first. the diagrams plays an important role to anyone willing to understand the current state of the system.
## Use Case Diagram
![Use Case](https://github.com/MohaAmiry/his/assets/65380552/3d3805e3-c4ff-4da0-bf56-57d6d4217960)


## Class Diagram
![Class Diagram](https://github.com/MohaAmiry/his/assets/65380552/2a52af5e-6a84-47ae-b4bd-b3ae3ca7ad7c)






