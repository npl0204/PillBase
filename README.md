# Team Liftoff

The app was developed by Amir Kaidarov, Katie Wu, Linh Nguyen, and Amalia Sorribes
as a team project for Computer and Informatics Design course in Drexel Univesity.


#Minimum requirements to run the code:

1. Code Editor or IDE (Visual Studio or Android Studio)
2. Flutter Software Developoment Kit
3. Android Emulator or Android phone
4. Internet connection


#Instructions to deploy the code:

1. Set up Android Emulator or Android device
2. Ensure that IDE or code editor sees the device
3. Run the code 


#Testing:

No unit, widget, or integration tests were written for this project.
For test purposes, adhere to manual testing.


#Instructions on changing the codebase:

1. The code was written under DDD (Domain Driven Development) principles.
2. There four major parts: presentation, domain, application, and infrastructure.
3. All the UI components should be added under separate folder (for each page) in presentation folder.
4. All state management should be added under separate folder in application folder.
5. All value objects (entities) should be added to the domain folder.
6. All logic and work with external services should be added to infrastructure folder.


For the state management, the team chose BLOC pattern.


#Dependencies:
1. To compare objects by value: freezed_annotation & freezed
2. For state management: flutter_bloc
3. To work with Firebase: cloud_firestore & firebase_core & firebase_auth & firebase_messaging
4. To work work with JSON files: json_annotation & json_serializable
5. Dependency injection: get_it
6. To work with notificatins: awesome_notifications
7. To work with calendar: syncfusion_flutter_calendar
8. For code generation: build_runner
9. For funcional programming: dartz
10. To generate unique ids: uuid
11. For flushbar: another_flushbar
12. To work with datetime data types: intl


