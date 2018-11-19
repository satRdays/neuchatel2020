## satRday_site_template

### What I can do

I can give you most of a website for satRdays events, ready (almost) out of the box. I have a number of sections to help you out:
* Event description
* Event location
  + With map
* Embedded tickets
  + Tito
  + Ticket Tailor
  + Eventbrite
* Call for papers
  + Sessionize
* Speaker Bios
* Talk descriptions
* Schedule
* Important Dates
* Links to satRdays Code of Conduct and Diversity materials

### How to use me

#### Set the repo as a mirror the main repository

1. Open Git Bash.

2. Create a bare clone of the repository.

  ```
  git clone --bare https://github.com/satRdays/satRday_site_template
  ```

3. Mirror-push to the new repository.

```
cd satRday_site_template.git
git push --mirror https://github.com/satRdays/[cityYEAR].git
```

4. Remove the temporary local repository you created in step 1.

```
cd ..
rm -rf satRdays/satRday_site_template.git
```

#### Customise the config
The file [config.toml](https://github.com/satRdays/satRday_site_template/blob/master/config.toml) gives you access to a number of points on the site, mostly using [site params](https://gohugo.io/variables/site/#the-site-params-variable).

A high level overview of these features:
* `enable` 
  + boolean to render or hide that section
* `title`/`subtitle`/`description`/`button text`/...
  + strings to display text in that position
* `bg`
  + boolean to toggle lightly shaded backgrounds on or off for that section
* `eid`/`accountevent`/`eventviewid`/`CfSpage`
  + strings that are part of a url (that are usually part of an iframe) to link to a service for tickets/Call for papers

#### Include a new talk desciption
* Talks are generated from `Talk0X.yaml` files in `data/projects/`
* Each talk should have similar structures (some values may be missed or blank) based on the included examples, and be in its own file

#### Include a new bio
* Speaker/organiser bios are generated from `Speaker0X.toml` files in `data/speakers/`
* Each speaker should have similar structures (some values may be missed or blank) based on the included examples, and be in its own file

### What if I need even more customistation?
In the hopefully rare event that even more specific material is needed you can explore the following. Make use of the [hugo inheritance method](https://gohugo.io/templates/lookup-order/#hugo-layouts-lookup-rules-with-theme) to override defaults where applicable, rather than modify the defaults in place.

#### CSS/style
* Copy the base `hugo-satrdays-theme/static/css/style.css` into `/static/css/style.css`
  + This will now be the style sheet for your website, overriding the themes
  
#### New Section/Custom Section
* Either 
  + find a [partial](https://gohugo.io/templates/partials/) from `/layouts/partials` in the existing themes you want to base your work on, copy it to the project `/layouts/partials`, and modify the copy
  + write a new `myfile.html` from scratch and include it in the project `/layouts/partials`
* then make sure that it is referenced in `index.html`

### What I am
I am a [Hugo](//gohugo.io) website, with two themes. [Agency](https://github.com/digitalcraftsman/hugo-agency-theme) provides the base layer of theming, with a custom [satRday](https://github.com/satRdays/hugo-satrdays-theme) theme which overides some areas.

#### Some notes and gotchas
As the design is strongly based on the `hugo-agency-theme`, naming conventions are not obvious in certain situations
* The `talks` section of `hugo-satrdays-theme` is built from the `portfolio` section of the `hugo-agency-theme`
* The `important dates` section of `hugo-satrdays-theme` is built from the `about` section of the `hugo-agency-theme`
* The `speakers` section of `hugo-satrdays-theme` is built from the `team` section of the `hugo-agency-theme`
* The `sponsors` section of `hugo-satrdays-theme` is built from the `clients` section of the `hugo-agency-theme`

## Video documentation
- [How to configure the site](https://youtu.be/3b7y_wan_d8)
