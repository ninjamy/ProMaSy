# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Environment.destroy_all
WorkType.destroy_all
UserAccess.destroy_all
UserRole.destroy_all
LevelOfEffort.destroy_all
Stage.destroy_all
TaskStatus.destroy_all
TaskType.destroy_all

Portfolio.destroy_all
Role.destroy_all
User.destroy_all
Company.destroy_all

Company.create! ([
{company_name: "default", is_default: 1},
{company_name: "Race Innovations", is_default: 0}
])

@company_id = Company.where(company_name:"default").pluck("id")


Portfolio.create! ([
{port_name: "default", is_active: 1, company_id: @company_id[0], is_default: 1}
])


Role.create! ([
{role_name: "Development", company_id: @company_id[0]},
{role_name: "QA", company_id: @company_id[0]},
{role_name: "PO", company_id: @company_id[0]},
{role_name: "Admin", company_id: @company_id[0]}
])


User.create! ([
{user_name:"Admin", user_email: "email1@email.com", company_id: @company_id[0]},
{user_name:"Amy", user_email: "email2@email.com", company_id: @company_id[0]},
{user_name:"PO", user_email: "email3@email.com", company_id: @company_id[0]}
])

@portfolio_id = Portfolio.where(port_name:"default").pluck("id")


Environment.create! ([
{environment_name: "Dev", portfolio_id: @portfolio_id[0]},
{environment_name: "QA", portfolio_id: @portfolio_id[0]},
{environment_name: "Prod", portfolio_id: @portfolio_id[0]}
])


LevelOfEffort.create! ([
{portfolio_id: @portfolio_id[0]}
])


Stage.create! ([
{stage_name:"Requested",is_active:1,stage_order:1, portfolio_id: @portfolio_id[0]},
{stage_name:"Reported",is_active:1,stage_order:2, portfolio_id: @portfolio_id[0]},
{stage_name:"Completed",is_active:1,stage_order:3, portfolio_id: @portfolio_id[0]},
{stage_name:"Verified",is_active:1,stage_order:4, portfolio_id: @portfolio_id[0]},
{stage_name:"Ready for Work",is_active:1,stage_order:5, portfolio_id: @portfolio_id[0]},
{stage_name:"Resolved",is_active:1,stage_order:6, portfolio_id: @portfolio_id[0]},
{stage_name:"Commited",is_active:1,stage_order:7, portfolio_id: @portfolio_id[0]},
{stage_name:"Started",is_active:1,stage_order:8, portfolio_id: @portfolio_id[0]},
{stage_name:"Dev Completed",is_active:1,stage_order:9, portfolio_id: @portfolio_id[0]},
{stage_name:"QA Completed",is_active:1,stage_order:10, portfolio_id: @portfolio_id[0]},
{stage_name:"Ready for Release",is_active:1,stage_order:11, portfolio_id: @portfolio_id[0]},
{stage_name:"Released",is_active:1,stage_order:12, portfolio_id: @portfolio_id[0]}
])


TaskStatus.create! ([
{task_status:"To-Do",portfolio_id: @portfolio_id[0]},
{task_status:"In-Progress",portfolio_id: @portfolio_id[0]},
{task_status:"Done",portfolio_id: @portfolio_id[0]}

])


TaskType.create! ([
{task_type:"Inital Scrub", is_active:1, portfolio_id: @portfolio_id[0]},
{task_type:"Prioritize", is_active:1, portfolio_id: @portfolio_id[0]},
{task_type:"Team Scrub", is_active:1, portfolio_id: @portfolio_id[0]},
{task_type:"Development", is_active:1, portfolio_id: @portfolio_id[0]},
{task_type:"Research", is_active:1, portfolio_id: @portfolio_id[0]},
{task_type:"Code Review", is_active:1, portfolio_id: @portfolio_id[0]},
{task_type:"Dev Testing", is_active:1, portfolio_id: @portfolio_id[0]},
{task_type:"Move To QA", is_active:1, portfolio_id: @portfolio_id[0]},
{task_type:"QA", is_active:1, portfolio_id: @portfolio_id[0]},
{task_type:"PO Review", is_active:1, portfolio_id: @portfolio_id[0]},
{task_type:"Prioritize Release", is_active:1, portfolio_id: @portfolio_id[0]},
{task_type:"Move To Prod", is_active:1, portfolio_id: @portfolio_id[0]},
{task_type:"QA Confirm", is_active:1, portfolio_id: @portfolio_id[0]},
{task_type:"Notify Stockholders", is_active:1, portfolio_id: @portfolio_id[0]},
{task_type:"Documentation", is_active:1, portfolio_id: @portfolio_id[0]},
{task_type:"Create Work", is_active:1, portfolio_id: @portfolio_id[0]}
])



WorkType.create! ([
{work_type:"Project", portfolio_id: @portfolio_id[0]},
{work_type:"Support Task", portfolio_id: @portfolio_id[0]},
{work_type:"Research", portfolio_id: @portfolio_id[0]},
{work_type:"Data Update", portfolio_id: @portfolio_id[0]},
{work_type:"Maintenance", portfolio_id: @portfolio_id[0]}
])