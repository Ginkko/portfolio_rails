# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

skills = Skill.create([{ name: "Javascript", description: "JavaScript (often shortened to JS) is a lightweight, interpreted, object-oriented language with first-class functions, and is best known as the scripting language for Web pages, but it's used in many non-browser environments as well. It is a prototype-based, multi-paradigm scripting language that is dynamic, and supports object-oriented, imperative, and functional programming styles."}, { name: "HTML", description: "HTML (HyperText Markup Language) is a descriptive language that specifies webpage structure."}, { name: "CSS", description: "Cascading Style Sheets, most of the time abbreviated as CSS, is a stylesheet language used to describe the presentation of a document written in HTML or XML (including various XML languages like SVG or XHTML). CSS describes how the structured element must be rendered on screen, on paper, in speech, or on other media."}])

projects = Project.create([{ name: "Youhole.tv", description: "Youhole.tv is a Deep Web Youtube Aggregator. Youhole is purposely minimalist, as the user has two options - watch the current video or skip to the next. The user doesn't know the title, duration, or any other identifibile information of the video. Using a number of algorithims, Youhole offers a slice of the internet that is unique, odd, and ephemeral.", github_link: "https://github.com/tobyalden/youhole_free", live_link: "http://youhole.tv/", skill_ids: [1,2,3]}])
