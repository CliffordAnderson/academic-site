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
      # Slim profile (no education/interests) so the intro stays compact;
      # the full profile in me.yaml feeds the sections below.
      username: intro
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
      # Raw iframe because shortcodes are not processed inside block text.
      # Intrinsic width + aspect-ratio (not an absolutely-positioned wrapper):
      # the block's flex items-center container shrink-wraps children, which
      # collapses a padding-hack wrapper to zero width.
      text: |-
        <iframe src="https://www.youtube-nocookie.com/embed/Hcyfs_Z1Okw" title="TEDx Talk on Deepfakes" style="width: 800px; max-width: 100%; aspect-ratio: 16 / 9; height: auto; border: 0;" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
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
  - block: resume-awards
    id: certificates
    content:
      title: Certificates & Training
      username: me
  - block: collection
    id: posts
    content:
      title: Recent News
      filters:
        folders:
          - blog
      count: 5
    design:
      view: date-title-summary
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
      count: 3
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
      # date-title-summary shows each publication's abstract (or summary)
      # beneath the title
      view: date-title-summary
  - block: contact-info
    id: contact
    content:
      title: Contact
      visit_title: Visit Me
      email: clifford.anderson@yale.edu
      phone: '(609) 638-8545'
      address:
        lines:
          - Yale Divinity Library
          - 409 Prospect Street
          - New Haven, CT 06511
          - United States
      office_hours:
        - 'Monday 09:00 to 11:00'
        - 'Wednesday 09:00 to 11:00'
      social:
        - icon: hero/calendar-days
          label: Book an appointment
          url: 'https://outlook.office.com/bookwithme/user/8f2e7efcc5a6432298655d85f0c91b83@yale.edu/meetingtype/A2IxEzurnEWiJkDqnXN3vA2?anonymous&ep=mlink'
        - icon: brands/x
          label: X
          url: https://twitter.com/andersoncliffb
        - icon: academicons/google-scholar
          label: Google Scholar
          url: https://scholar.google.com/citations?user=sm9QklIAAAAJ&hl=en
        - icon: brands/github
          label: GitHub
          url: https://github.com/cliffordanderson
        - icon: custom/huggingface
          label: Hugging Face
          url: https://huggingface.co/andersoncliffb
        - icon: brands/linkedin
          label: LinkedIn
          url: https://www.linkedin.com/in/cliffordbanderson/
---
