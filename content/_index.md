---
# Leave the homepage title empty to use the site title
title: ''
summary: ''
date: 2026-07-06
type: landing

sections:
  - block: resume-biography-3
    id: about
    content:
      # Choose a user profile to display (a folder name within `content/authors/`)
      username: me
      text: |-
        Clifford B. Anderson is the Director of the [Divinity Library](https://web.library.yale.edu/divinity) and founding director of the [Computational Theology Lab](https://ctl.yalespace.org/) at Yale University. Among other publications, he is co-author of [Artificial Intelligence for Academic Libraries](https://www.routledge.com/Artificial-Intelligence-for-Academic-Libraries/Anderson-Fisher/p/book/9781032680354) (Routledge, 2025), [XQuery for Humanists](https://www.tamupress.com/book/9781623498290/xquery-for-humanists/) (Texas A&M University Press, 2020) and editor of [Digital Humanities and Libraries and Archives in Religious Studies](https://www.degruyter.com/document/doi/10.1515/9783110536539/html) (De Gruyter, 2022). He is also a co-instructor of [Programming for a Networked World](https://www.coursera.org/learn/programming-for-a-networked-world) on Coursera.
      # Show a call-to-action button under your biography? (optional)
      button:
        text: Download CV
        url: /files/cv.pdf
    design:
      # Use the new Gradient Mesh which automatically adapts to the selected theme colors
      background:
        gradient_mesh:
          enable: true
      # Avatar customization
      avatar:
        size: medium # Options: small (150px), medium (200px, default), large (320px), xl (400px), xxl (500px)
        shape: circle # Options: circle (default), square, rounded
  - block: markdown
    id: video
    content:
      title: TEDx Talk on Deepfakes
      subtitle: ''
      text: |-
        {{< youtube id="Hcyfs_Z1Okw" >}}
    design:
      columns: '1'
  - block: resume-experience
    id: experience
    content:
      title: Experience
      username: me
    design:
      # Hugo date format
      date_format: 'Jan 2006'
      # Education or Experience section first?
      is_education_first: false
  - block: resume-awards
    id: certificates
    content:
      title: Certificates & Training
      username: me
  - block: collection
    id: posts
    content:
      title: Recent Posts
      filters:
        folders:
          - blog
      count: 5
    design:
      view: card
  - block: collection
    id: projects
    content:
      title: Projects
      filters:
        folders:
          - projects
    design:
      view: article-grid
      columns: 2
      show_date: false
      show_read_time: false
  - block: collection
    id: talks
    content:
      title: Recent & Upcoming Talks
      filters:
        folders:
          - events
      count: 5
    design:
      view: date-title-summary
  - block: collection
    id: featured
    content:
      title: Featured Publications
      filters:
        folders:
          - publications
        featured_only: true
    design:
      view: article-grid
      columns: 2
  - block: collection
    id: papers
    content:
      title: Recent Publications
      filters:
        folders:
          - publications
      count: 5
    design:
      view: citation
  - block: contact-info
    id: contact
    content:
      title: Contact
      email: anderson.clifford@gmail.com
      phone: '(609) 638-8545'
      address:
        lines:
          - 409 Prospect Street
          - New Haven, CT 06511
          - United States
      office_hours:
        - 'Monday 09:00 to 11:00'
        - 'Wednesday 09:00 to 11:00'
  - block: markdown
    content:
      title: ''
      subtitle: ''
      text: |-
        My office is L107 in the Yale Divinity Library. You can also [book an appointment](https://outlook.office.com/bookwithme/user/8f2e7efcc5a6432298655d85f0c91b83@yale.edu/meetingtype/A2IxEzurnEWiJkDqnXN3vA2?anonymous&ep=mlink) with me online.
    design:
      columns: '1'
---
