# Tongrui Zhang — academic website

English academic homepage built on al-folio v1.2 for publication at `tongruizhang1097-crypto.github.io`.

## Review status

The site content was prepared from four journal-paper PDFs, an independently verified fifth publisher record, an undergraduate-thesis source document, a CV, a resume, an academic-identity/advisor document, a portrait, and a patent examination notice. Publication metadata and author contributions were checked against original article PDFs or authoritative publisher records. Public assets are copied into `assets/`; private originals remain outside the site directory.

The web CV and regenerated public PDF deliberately exclude personal phone numbers, private or obsolete email addresses, street addresses, student identifiers, and third-party contact details. The owner approved public use of the portrait and three thesis-derived images on 27 October 2026.

No remote repository has been created and no content has been deployed.

## Local development

Use the official al-folio v1.2 workflow:

```bash
bundle install
npm ci
bundle exec al-folio upgrade audit --no-fail
bundle exec jekyll build
bundle exec jekyll serve
```

The configured production URL is `https://tongruizhang1097-crypto.github.io` with an empty `baseurl`.

The content and privacy decisions are approved for publication. Before pushing, authenticate as `tongruizhang1097-crypto`, confirm the destination repository is exactly `tongruizhang1097-crypto/tongruizhang1097-crypto.github.io`, and recheck that no private source document has entered the repository.
