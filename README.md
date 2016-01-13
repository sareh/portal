# Portal

## Summary

Portal is a site for students to find the services they need. 

It has been designed and created in one week. 

It is my second project during [General Assembly's Web Development Immersive](https://generalassemb.ly/education/web-development-immersive) - a 12 week full stack web dev course.

![Screenshot of Portal at 1400px screen width](./screenshots/Portal\ -\ screen\ width\ 1440px\ -\ Screen\ Shot\ 2015-11-06\ at\ 07.26.10.png)

![Screenshot of Portal with iPhone 6 emulator](./screenshots/Portal\ -\ iPhone\ 6\ -\ emulator\ -\ screen\ only\ -\ Screen\ Shot\ 2015-11-06\ at\ 07.30.00.png)

## Tech used

- HTML5
- CSS3, Sass and [Foundation](http://foundation.zurb.com/)
- Ruby on Rails
- Amazon Web Services (AWS)

## Process

- Interviewed potential users (students)
- Created user proto-personas
- Distilled the problem down to core requirements
- Received feedback from users
- Created a paper wireframe 
- Made wireframe interactive, with [POP](https://popapp.in/sketchpad/)
- Created site
- Hosted uploaded images with AWS

** To view the rest of this page in a slideshow, please see my [presentation](./Presentation.odp).**

## Motivations

- It's very difficult for students to find the services they need
- Large institutions (e.g. my previous university) fail at this 
  - You can see exceptionally detailed results that are not relevant
- Portal is a place to easily find & share useful services.


## Main Aims

- Easy-to-use interface
- Fully responsive
- Tags on services – so you can filter by the tag
- Colour scheme linked to service provider
  - Make it clear which service is being provided by whom (e.g. university, student group, ...)
- Search – get straight to relevant results.

## Successes

- Responsive site (foundation's grid-system)
- Colour scheme depending on who is providing the service
` <ul class="no-bullet service-box <%= service.service_type.name.downcase.gsub(/\s+/, "") %>-box"> `
- Filtering via tags (gem 'act_as_taggable_on')
- Searching (gem 'ransack')
- Uploading images & hosting them on AWS (gem 'carrierwave' & 'fog')

## Challenges

- Design – finding inspiration
- Allowing filter-by-tag & search-by-query to work on the same page

## Accessibility

It is important to me to think about the accessibility of my site. I want to make it accessible to all students, not just a majority of them.

- Think about screen-readers, but also: What happens if you have a patchy internet connection? Images don't fully load?
  - `<%= image_tag(@service.image, alt: "Image representing #{@service.name}") %> ` [http://www.webcredible.com/blog/writing-effective-alt-text-images/](http://www.webcredible.com/blog/writing-effective-alt-text-images/)

- Using Aria-labels 
  - e.g. `<button aria-label="close">&times;</button>` [https://dev.opera.com/articles/ux-accessibility-aria-label/](https://dev.opera.com/articles/ux-accessibility-aria-label/)

## Extensions

Here is a list of functionality that wasn't within the scope of my MVP, but will be added in a later version.

- A tag-cloud
- Allow users to bookmark a service
  - Their bookmarks will be visible to only them
  - There will be a counter on each service – e.g. 'bookmarked 12 times'
- Share button (link to email, Facebook, etc.)
- Multiple Institutions. 'Choose your uni' and be taken to relevant services
- Location-based searching – so users can find services closest to them

## Feedback

If you have any feedback, please drop me a message. 
