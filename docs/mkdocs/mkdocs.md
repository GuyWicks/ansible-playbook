# mkdocs Instructions

Documentation generated with [mkdocs](https://www.mkdocs.org/). This is a nice lightweight documentation website tool that takes your **Markdown** notes and converts them into good looking HTML pages that can be hosted on Github pages.

I also use the [mkdocs material](https://squidfunk.github.io/mkdocs-material/) theme for feature sites.  I use the [readthedocs](https://readthedocs.org/) theme for technical sites.

Sadly it can't fix my rubbish content or spelling mistocks.


## Installation

Full [getting started](https://www.mkdocs.org/getting-started/) instructions available on the **mkdocs** site.

Shorthand:

```
pipenv install mkdocs
pipenv install mkdocs-material
```

## Build a site

I found this the easiest way to incorporate mkdocs into an existing githib repository.

```
cd my-repository
pipenv run mkdocs new .
pipenv run serve
```

Default browser [http://127.0.0.1:8000](http://127.0.0.1:8000)

## Configure the site

```yaml title="mkdocs.yml"
site_name: Ansible Playbook
site_author: Guy Wicks
repo_url: https://github.com/GuyWicks/ansible-playbook
repo_name: GuyWicks/ansible-playbook
copyright: Copyright &copy; 2022 Guy Wicks

theme:
  name: material
  #name: mkdocs
  #name: readthedocs
  features:
    - content.code.annotate
    - navigation.instant
    #- navigation.tracking
    #- navigation.tabs
  icon:
    repo: fontawesome/brands/github

  #palette:
  #  - scheme: default
  #    toggle:
  #      icon: material/toggle-switch-off-outline
  #      name: Switch to dark mode
  #  - scheme: slate
  #    toggle:
  #      icon: material/toggle-switch
  #      name: Switch to light mode

markdown_extensions:
  - pymdownx.highlight:
      anchor_linenums: true
  - pymdownx.inlinehilite
  - pymdownx.snippets
  - pymdownx.superfences
  - pymdownx.critic
  - pymdownx.caret
  - pymdownx.keys
  - pymdownx.mark
  - pymdownx.tilde 
  - tables
  - attr_list
  - def_list
  - pymdownx.tasklist:
      custom_checkbox: true
  - pymdownx.emoji:
      emoji_index: !!python/name:materialx.emoji.twemoji
      emoji_generator: !!python/name:materialx.emoji.to_svg

```

## Quick notes on Markdown

```
# Page title
Only one allowed. Place at top of the page.

## Sub headings
These appear as links in the nav bar / table of contents

### Sub sections
These appear as collapsable sub-nav or as indented items on the ToC

*Italic*
**Bold**
[Label for page link](https://url.com)



```


## Push to Github pages

```
pipenv run mkdocs gh-deploy
```

Go to your Github repository, select 'settings' and click on the link 'Pages' under the 'Code and automation' section.

From there, change the branch that Github uses to 'gh-deploy'

It may take a minute or two for the Github build to complete and any caches to expire. 

Then browse to your [Github pages site](https://guywicks.github.io/ansible-playbook/) and notice all the tyops!

## Tips

tbc
