# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Company.destroy_all

Company.create! ([
{company_name: "default", is_default: 1},
{company_name: "Race Innovations", is_default: 0}
])

Environment.destroy_all

Environment.create! ([
{EnvironmentName: "Dev", PortID: 1},
{EnvironmentName: "QA", PortID: 1},
{EnvironmentName: "Prod", PortID: 1}
])

LevelOfEffort.destroy_all

LevelOfEffort.create! ([
{PortID: 1, LOEMin: 1, LOEMax: 10}
])

Portfolio.destroy_all

Portfolio.create! ([
{PortName: "Listingbook", isActive: 1, CompanyID: 1},
{PortName: "ProMaSy", isActive: 1, CompanyID: 2},
{PortName: "CK", isActive: 1, CompanyID: 2}
])

Role.destroy_all

Role.create! ([
{RoleName: "Development", CompanyID:1},
{RoleName: "QA", CompanyID:1},
{RoleName: "PO", CompanyID:1},
{RoleName: "Admin", CompanyID:1},
{RoleName: "Development", CompanyID:2},
{RoleName: "QA", CompanyID:2},
{RoleName: "PO", CompanyID:2},
{RoleName: "Admin", CompanyID:2}
])

Stage.destroy_all

Stage.create! ([
{StageName:"Requested",isActive:1,StageOrder:1, PortID:1},
{StageName:"Reported",isActive:1,StageOrder:2, PortID:1},
{StageName:"Completed",isActive:1,StageOrder:3, PortID:1},
{StageName:"Verified",isActive:1,StageOrder:4, PortID:1},
{StageName:"Ready for Work",isActive:1,StageOrder:5, PortID:1},
{StageName:"Resolved",isActive:1,StageOrder:6, PortID:1},
{StageName:"Commited",isActive:1,StageOrder:7, PortID:1},
{StageName:"Started",isActive:1,StageOrder:8, PortID:1},
{StageName:"Dev Completed",isActive:1,StageOrder:9, PortID:1},
{StageName:"QA Completed",isActive:1,StageOrder:10, PortID:1},
{StageName:"Ready for Release",isActive:1,StageOrder:11, PortID:1},
{StageName:"Released",isActive:1,StageOrder:12, PortID:1},

{StageName:"Requested",isActive:1,StageOrder:1, PortID:2},
{StageName:"Reported",isActive:1,StageOrder:2, PortID:2},
{StageName:"Completed",isActive:1,StageOrder:3, PortID:2},
{StageName:"Verified",isActive:1,StageOrder:4, PortID:2},
{StageName:"Ready for Work",isActive:1,StageOrder:5, PortID:2},
{StageName:"Resolved",isActive:1,StageOrder:6, PortID:2},
{StageName:"Commited",isActive:1,StageOrder:7, PortID:2},
{StageName:"Started",isActive:1,StageOrder:8, PortID:2},
{StageName:"Dev Completed",isActive:1,StageOrder:9, PortID:2},
{StageName:"QA Completed",isActive:1,StageOrder:10, PortID:2},
{StageName:"Ready for Release",isActive:1,StageOrder:11, PortID:2},
{StageName:"Released",isActive:1,StageOrder:12, PortID:2},

{StageName:"Requested",isActive:1,StageOrder:1, PortID:3},
{StageName:"Reported",isActive:1,StageOrder:2, PortID:3},
{StageName:"Completed",isActive:1,StageOrder:3, PortID:3},
{StageName:"Verified",isActive:1,StageOrder:4, PortID:3},
{StageName:"Ready for Work",isActive:1,StageOrder:5, PortID:3},
{StageName:"Resolved",isActive:1,StageOrder:6, PortID:3},
{StageName:"Commited",isActive:1,StageOrder:7, PortID:3},
{StageName:"Started",isActive:1,StageOrder:8, PortID:3},
{StageName:"Dev Completed",isActive:1,StageOrder:9, PortID:3},
{StageName:"QA Completed",isActive:1,StageOrder:10, PortID:3},
{StageName:"Ready for Release",isActive:1,StageOrder:11, PortID:3},
{StageName:"Released",isActive:1,StageOrder:12, PortID:3}
])

TaskStatus.destroy_all

TaskStatus.create! ([
{TaskStatus:"To-Do",PortID:1},
{TaskStatus:"In-Progress",PortID:1},
{TaskStatus:"Done",PortID:1},

{TaskStatus:"To-Do",PortID:2},
{TaskStatus:"In-Progress",PortID:2},
{TaskStatus:"Done",PortID:2},

{TaskStatus:"To-Do",PortID:3},
{TaskStatus:"In-Progress",PortID:3},
{TaskStatus:"Done",PortID:3}

])


TaskType.destroy_all

TaskType.create! ([
{TaskType:"Inital Scrub", isActive:1, PortID:1},
{TaskType:"Prioritize", isActive:1, PortID:1},
{TaskType:"Team Scrub", isActive:1, PortID:1},
{TaskType:"Development", isActive:1, PortID:1},
{TaskType:"Research", isActive:1, PortID:1},
{TaskType:"Code Review", isActive:1, PortID:1},
{TaskType:"Dev Testing", isActive:1, PortID:1},
{TaskType:"Move To QA", isActive:1, PortID:1},
{TaskType:"QA", isActive:1, PortID:1},
{TaskType:"PO Review", isActive:1, PortID:1},
{TaskType:"Prioritize Release", isActive:1, PortID:1},
{TaskType:"Move To Prod", isActive:1, PortID:1},
{TaskType:"QA Confirm", isActive:1, PortID:1},
{TaskType:"Notify Stockholders", isActive:1, PortID:1},
{TaskType:"Documentation", isActive:1, PortID:1},
{TaskType:"Create Work", isActive:1, PortID:1},


{TaskType:"Inital Scrub", isActive:1, PortID:2},
{TaskType:"Prioritize", isActive:1, PortID:2},
{TaskType:"Team Scrub", isActive:1, PortID:2},
{TaskType:"Development", isActive:1, PortID:2},
{TaskType:"Research", isActive:1, PortID:2},
{TaskType:"Code Review", isActive:1, PortID:2},
{TaskType:"Dev Testing", isActive:1, PortID:2},
{TaskType:"Move To QA", isActive:1, PortID:2},
{TaskType:"QA", isActive:1, PortID:2},
{TaskType:"PO Review", isActive:1, PortID:2},
{TaskType:"Prioritize Release", isActive:1, PortID:2},
{TaskType:"Move To Prod", isActive:1, PortID:2},
{TaskType:"QA Confirm", isActive:1, PortID:2},
{TaskType:"Notify Stockholders", isActive:1, PortID:2},
{TaskType:"Documentation", isActive:1, PortID:2},
{TaskType:"Create Work", isActive:1, PortID:2},

{TaskType:"Inital Scrub", isActive:1, PortID:3},
{TaskType:"Prioritize", isActive:1, PortID:3},
{TaskType:"Team Scrub", isActive:1, PortID:3},
{TaskType:"Development", isActive:1, PortID:3},
{TaskType:"Research", isActive:1, PortID:3},
{TaskType:"Code Review", isActive:1, PortID:3},
{TaskType:"Dev Testing", isActive:1, PortID:3},
{TaskType:"Move To QA", isActive:1, PortID:13},
{TaskType:"QA", isActive:1, PortID:3},
{TaskType:"PO Review", isActive:1, PortID:3},
{TaskType:"Prioritize Release", isActive:1, PortID:3},
{TaskType:"Move To Prod", isActive:1, PortID:3},
{TaskType:"QA Confirm", isActive:1, PortID:3},
{TaskType:"Notify Stockholders", isActive:1, PortID:3},
{TaskType:"Documentation", isActive:1, PortID:3},
{TaskType:"Create Work", isActive:1, PortID:3}
])

User.destroy_all

User.create! ([
{UserName:"Admin", UserEmail: "email1@email.com", CompanyID:2},
{UserName:"Amy", UserEmail: "email2@email.com", CompanyID:2},
{UserName:"PO", UserEmail: "email3@email.com", CompanyID:2}

])

UserAccess.destroy_all

UserAccess.create! ([
{UserID:1, PortID:2},
{UserID:2, PortID:2},
{UserID:3, PortID:2},
{UserID:1, PortID:3},
{UserID:2, PortID:3},
{UserID:3, PortID:3}
])


UserRole.destroy_all

UserRole.create! ([
{UserID:1, RoleID:4},
{UserID:2, RoleID:1},
{UserID:3, RoleID:3}
])

WorkType.destroy_all

WorkType.create! ([
{WorkType:"Project", PortID:1},
{WorkType:"Support Task", PortID:1},
{WorkType:"Research", PortID:1},
{WorkType:"Data Update", PortID:1},
{WorkType:"Maintenance", PortID:1}
])