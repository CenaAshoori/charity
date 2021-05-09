# Charity Management System (web,desktop)

Charity Management System is a place that **User**s can add their
**Task** in to the application and in other hand, **Benefactor** can find it and do that **Task** for the **User**.
In this application also we can have multiple charity (**Benifactor**s can register **Charity**).

## Key Point OF This Project

- **User** don't need to be Authenticated for adding **Task** (***privacy***).
- Benefactor can access all of his/her **Tasks**
- Charity can accsses to all **Benefactor** and all of them **Task**s

## Project Technical Information :

- Platform : Web , Desktop
- Language : Python , Dart
- Database : Sqlite3

## Functional Requirement:
- User can create a **Task**
- Benefactor can manage his **Task**
- Benefactor can create **Charity**

## Non-Functional Requirement :
- Only **Benefactor** and its **Charity**'s owner have access to all of assigned **Task**s to Benefactor
- **User** don't need to be Authenticated for adding **Task**
- Only **Charity** Owner can delete a **Task**

## Scenarios and Needs assessment
- Scenarios [Link](https://github.com/CenaAshoori/charity/blob/master/Documents/Scenarios.md)
- Project Needs assessment - TODO

## Project analysis and design
- Usecase [Link](https://github.com/CenaAshoori/charity/blob/master/Documents/UseCase.md)
- Activity Diagram - TODO
- Class Diagram - TODO
- Sequence Diagram - TODO

## Project Management
- Project development phases documents - TODO
- Project scheduling documents - TODO

## Directory Schema
🚀 NOTIC: If you tap on below image and open in Mermaid website then u can easily open directory or files with just taping on each Node

e.x: with taping on "\Documents" Node, you'll redirect to that directory in github

**Access all Project's File in One Place**

[![](https://mermaid.ink/img/eyJjb2RlIjoiZ3JhcGggTFJcbiAgIHJvb3QgPT0-IGRvYyhcXERvY3VtZW50cykgJiB1aShcXFVJKSAmIGNoIFxuICAgcm9vdCAtLT4gcm0oUkVBRE1FLm1kKVxuICAgY2xpY2sgcm0gaHJlZiBcImh0dHBzOi8vZ2l0aHViLmNvbS9DZW5hQXNob29yaS9jaGFyaXR5I3JlYWRtZVwiXG4gICBzdWJncmFwaCBwcm9qZWN0IHNvdXJjZSBmaWxlcyBcbiAgIHVpXG4gICBjaChcXENoYXJpdHkpIC0tPnRlc3QoXFxUZXN0KVxuICAgZW5kXG5cbiAgIHN1YmdyYXBoIGRvY3VtZW50YXRpb24gZGlyZWN0aW9uXG4gICBkb2MgPT0-IGltZyhcXGltYWdlcylcbiAgIGNsaWNrIGltZyBocmVmIFwiaHR0cHM6Ly9naXRodWIuY29tL0NlbmFBc2hvb3JpL2NoYXJpdHkvdHJlZS9tYXN0ZXIvRG9jdW1lbnRzL2ltYWdlc1wiXG4gICBpbWcgLS0-IGVyKEVSZGlhZ3JhbS5wbmcpICYgdWNwbmcoVXNlIENhc2UgRGlhZ3JhbS5wbmcpXG4gICBkb2MgLS0-IHNjKFNjZW5hcmlvcy5tZClcbiAgIGRvYyAtLT4gdWMoVXNlY2FzZS5tZClcblxuICAgZW5kXG5jbGljayBzYyBocmVmIFwiaHR0cHM6Ly9naXRodWIuY29tL0NlbmFBc2hvb3JpL2NoYXJpdHkvYmxvYi9tYXN0ZXIvRG9jdW1lbnRzL1NjZW5hcmlvcy5tZFwiXG5jbGljayB1Y3BuZyBocmVmIFwiaHR0cHM6Ly9naXRodWIuY29tL0NlbmFBc2hvb3JpL2NoYXJpdHkvYmxvYi9tYXN0ZXIvRG9jdW1lbnRzL1VzZUNhc2UubWRcIlxuY2xpY2sgZXIgaHJlZiBcImh0dHBzOi8vZ2l0aHViLmNvbS9DZW5hQXNob29yaS9jaGFyaXR5L2Jsb2IvbWFzdGVyL0RvY3VtZW50cy9pbWFnZXMvRVJkaWFncmFtLnBuZ1wiXG5jbGljayB1YyBocmVmIFwiaHR0cHM6Ly9naXRodWIuY29tL0NlbmFBc2hvb3JpL2NoYXJpdHkvYmxvYi9tYXN0ZXIvRG9jdW1lbnRzL1VzZUNhc2UubWRcIlxuXG5jbGljayByb290IGhyZWYgXCJodHRwczovL2dpdGh1Yi5jb20vQ2VuYUFzaG9vcmkvY2hhcml0eVwiXG4gICBjbGljayBkb2MgaHJlZiBcImh0dHBzOi8vZ2l0aHViLmNvbS9DZW5hQXNob29yaS9jaGFyaXR5L3RyZWUvbWFzdGVyL0RvY3VtZW50c1wiXG4gICBjbGljayB1aSBocmVmIFwiaHR0cHM6Ly9naXRodWIuY29tL0NlbmFBc2hvb3JpL2NoYXJpdHkvdHJlZS9tYXN0ZXIvVUlcIlxuICAgY2xpY2sgY2ggaHJlZiBcImh0dHBzOi8vZ2l0aHViLmNvbS9DZW5hQXNob29yaS9jaGFyaXR5L3RyZWUvbWFzdGVyL2NoYXJpdHlcIlxuc3R5bGUgcm9vdCBmaWxsOm9yYW5nZVxuICAgc3R5bGUgdGVzdCBmaWxsOmxpZ2h0Z3JlZW5cbiAgIHN0eWxlIHVpIGZpbGw6bGlnaHRncmVlblxuICAgc3R5bGUgZG9jIGZpbGw6bGlnaHRncmVlblxuICAgc3R5bGUgY2ggZmlsbDpsaWdodGdyZWVuXG4gICBzdHlsZSBpbWcgZmlsbDpsaWdodGdyZWVuIiwibWVybWFpZCI6e30sInVwZGF0ZUVkaXRvciI6ZmFsc2V9)](https://mermaid-js.github.io/mermaid-live-editor/#/edit/eyJjb2RlIjoiZ3JhcGggTFJcbiAgIHJvb3QgPT0-IGRvYyhcXERvY3VtZW50cykgJiB1aShcXFVJKSAmIGNoIFxuICAgcm9vdCAtLT4gcm0oUkVBRE1FLm1kKVxuICAgY2xpY2sgcm0gaHJlZiBcImh0dHBzOi8vZ2l0aHViLmNvbS9DZW5hQXNob29yaS9jaGFyaXR5I3JlYWRtZVwiXG4gICBzdWJncmFwaCBwcm9qZWN0IHNvdXJjZSBmaWxlcyBcbiAgIHVpXG4gICBjaChcXENoYXJpdHkpIC0tPnRlc3QoXFxUZXN0KVxuICAgZW5kXG5cbiAgIHN1YmdyYXBoIGRvY3VtZW50YXRpb24gZGlyZWN0aW9uXG4gICBkb2MgPT0-IGltZyhcXGltYWdlcylcbiAgIGNsaWNrIGltZyBocmVmIFwiaHR0cHM6Ly9naXRodWIuY29tL0NlbmFBc2hvb3JpL2NoYXJpdHkvdHJlZS9tYXN0ZXIvRG9jdW1lbnRzL2ltYWdlc1wiXG4gICBpbWcgLS0-IGVyKEVSZGlhZ3JhbS5wbmcpICYgdWNwbmcoVXNlIENhc2UgRGlhZ3JhbS5wbmcpXG4gICBkb2MgLS0-IHNjKFNjZW5hcmlvcy5tZClcbiAgIGRvYyAtLT4gdWMoVXNlY2FzZS5tZClcblxuICAgZW5kXG5jbGljayBzYyBocmVmIFwiaHR0cHM6Ly9naXRodWIuY29tL0NlbmFBc2hvb3JpL2NoYXJpdHkvYmxvYi9tYXN0ZXIvRG9jdW1lbnRzL1NjZW5hcmlvcy5tZFwiXG5jbGljayB1Y3BuZyBocmVmIFwiaHR0cHM6Ly9naXRodWIuY29tL0NlbmFBc2hvb3JpL2NoYXJpdHkvYmxvYi9tYXN0ZXIvRG9jdW1lbnRzL1VzZUNhc2UubWRcIlxuY2xpY2sgZXIgaHJlZiBcImh0dHBzOi8vZ2l0aHViLmNvbS9DZW5hQXNob29yaS9jaGFyaXR5L2Jsb2IvbWFzdGVyL0RvY3VtZW50cy9pbWFnZXMvRVJkaWFncmFtLnBuZ1wiXG5jbGljayB1YyBocmVmIFwiaHR0cHM6Ly9naXRodWIuY29tL0NlbmFBc2hvb3JpL2NoYXJpdHkvYmxvYi9tYXN0ZXIvRG9jdW1lbnRzL1VzZUNhc2UubWRcIlxuXG5jbGljayByb290IGhyZWYgXCJodHRwczovL2dpdGh1Yi5jb20vQ2VuYUFzaG9vcmkvY2hhcml0eVwiXG4gICBjbGljayBkb2MgaHJlZiBcImh0dHBzOi8vZ2l0aHViLmNvbS9DZW5hQXNob29yaS9jaGFyaXR5L3RyZWUvbWFzdGVyL0RvY3VtZW50c1wiXG4gICBjbGljayB1aSBocmVmIFwiaHR0cHM6Ly9naXRodWIuY29tL0NlbmFBc2hvb3JpL2NoYXJpdHkvdHJlZS9tYXN0ZXIvVUlcIlxuICAgY2xpY2sgY2ggaHJlZiBcImh0dHBzOi8vZ2l0aHViLmNvbS9DZW5hQXNob29yaS9jaGFyaXR5L3RyZWUvbWFzdGVyL2NoYXJpdHlcIlxuc3R5bGUgcm9vdCBmaWxsOm9yYW5nZVxuICAgc3R5bGUgdGVzdCBmaWxsOmxpZ2h0Z3JlZW5cbiAgIHN0eWxlIHVpIGZpbGw6bGlnaHRncmVlblxuICAgc3R5bGUgZG9jIGZpbGw6bGlnaHRncmVlblxuICAgc3R5bGUgY2ggZmlsbDpsaWdodGdyZWVuXG4gICBzdHlsZSBpbWcgZmlsbDpsaWdodGdyZWVuIiwibWVybWFpZCI6e30sInVwZGF0ZUVkaXRvciI6ZmFsc2V9)

## Project Code : **_G15_**

Colaborator | ID
------------ | -------------
Mohammad Hosein Ashoori (Back & UI)|[97149068](http://github.com/CenaAshoori)
