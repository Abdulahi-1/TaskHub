# TaskHub

Submitted by: Abdulahi Abdi

TaskHub is an app that allows users to manage their tasks efficiently by adding, editing, and deleting tasks, with all data persisting even after the app is closed. The app also includes a calendar view to visualize tasks by date and navigate easily between the task list and calendar.

Time spent: 8 hours spent in total

## Required Features

The following **required** functionality is completed:

- [x] App displays a list of tasks
- [x] Users can add tasks to the list
- [x] Session persists when application is closed and relaunched (tasks don’t get deleted when closing app) 
  - [x] Note: You have to quit the app, not minimize it, in order to see the persistence.
- [x] Tasks can be deleted
- [x] Users have a calendar view via navigation controller that displays tasks  

The following **additional** features are implemented:

- [x] Tasks can be toggled completed
- [x] User can edit tasks by tapping on the task in the feed view
- [x] Smooth animations when tasks are marked completed and reordered
- [x] Calendar highlights dates with tasks for quick reference

## Video Walkthrough

https://www.loom.com/share/8efd8f8454524cbc87b532218faa5fdc?sid=8772f32b-565a-4133-8386-af38024a2714

## Notes

One challenge I encountered while building the app was placing the tab bar correctly for navigation between the task list and calendar views. Initially, the tabs weren’t appearing as expected, which made it difficult to access the calendar. I overcame this by carefully reviewing the tab bar controller setup in Xcode, ensuring each view controller was properly embedded and each tab bar item had its title and icon configured. After making these adjustments, the tab bar functioned as intended, allowing users to seamlessly switch between the task list and calendar. This not only improved the usability of the app but also gave me a stronger understanding of view controller hierarchy and navigation in iOS.

## License

    Copyright 2025 Abdulahi Abdi

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
