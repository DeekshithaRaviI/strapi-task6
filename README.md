<p align="center">
  <a href="https://strapi.io/#gh-light-mode-only">
    <img src="https://strapi.io/assets/strapi-logo-dark.svg" width="318px" alt="Strapi logo" />
  </a>
  <a href="https://strapi.io/#gh-dark-mode-only">
    <img src="https://strapi.io/assets/strapi-logo-light.svg" width="318px" alt="Strapi logo" />
  </a>
</p>

<h3 align="center">Open-source headless CMS, self-hosted or Cloud you’re in control.</h3>
<p align="center">The leading open-source headless CMS, 100% JavaScript/TypeScript, flexible and fully customizable.</p>
<p align="center"><a href="https://cloud.strapi.io/signups?source=github1">Cloud</a> · <a href="https://strapi.io/demo?utm_campaign=Growth-Experiments&utm_source=strapi%2Fstrapi%20README.md">Try live demo</a></p>
<br />

<p align="center">
  <a href="https://www.npmjs.org/package/@strapi/strapi">
    <img src="https://img.shields.io/npm/v/@strapi/strapi/latest.svg" alt="NPM Version" />
  </a>
  <a href="https://github.com/strapi/strapi/actions/workflows/tests.yml">
    <img src="https://github.com/strapi/strapi/actions/workflows/tests.yml/badge.svg?branch=main" alt="Tests" />
  </a>
  <a href="https://discord.strapi.io">
    <img src="https://img.shields.io/discord/811989166782021633?label=Discord" alt="Strapi on Discord" />
  </a>
  <a href="https://github.com/strapi/strapi/actions/workflows/nightly.yml">
    <img src="https://github.com/strapi/strapi/actions/workflows/nightly.yml/badge.svg" alt="Strapi Nightly Release Build Status" />
  </a>
</p>

<br>

<p align="center">
  <a href="https://strapi.io">
    <img src="https://raw.githubusercontent.com/strapi/strapi/main/public/assets/admin-demo.gif" alt="Administration panel" />
  </a>
</p>

<br>

Strapi Community Edition is a free and open-source headless CMS enabling you to manage any content, anywhere.

- **Self-hosted or Cloud**: You can host and scale Strapi projects the way you want. You can save time by deploying to [Strapi Cloud](https://cloud.strapi.io/signups?source=github1) or deploy to the hosting platform you want\*\*: AWS, Azure, Google Cloud, DigitalOcean.
- **Modern Admin Panel**: Elegant, entirely customizable and a fully extensible admin panel.
- **Multi-database support**: You can choose the database you prefer: PostgreSQL, MySQL, MariaDB, and SQLite.
- **Customizable**: You can quickly build your logic by fully customizing APIs, routes, or plugins to fit your needs perfectly.
- **Blazing Fast and Robust**: Built on top of Node.js and TypeScript, Strapi delivers reliable and solid performance.
- **Front-end Agnostic**: Use any front-end framework (React, Next.js, Vue, Angular, etc.), mobile apps or even IoT.
- **Secure by default**: Reusable policies, CORS, CSP, P3P, Xframe, XSS, and more.
- **Powerful CLI**: Scaffold projects and APIs on the fly.

## Getting Started

<a href="https://docs.strapi.io/developer-docs/latest/getting-started/quick-start.html" target="_blank">Read the Getting Started tutorial</a> or follow the steps below:

### ⏳ Installation

Install Strapi with this **Quickstart** command to create a Strapi project instantly:

- (Use **yarn** to install the Strapi project (recommended). [Install yarn with these docs](https://yarnpkg.com/lang/en/docs/install/).)

```bash
yarn create strapi
```

**or**

- (Using npx to install the Strapi project.)

```bash
npx create-strapi@latest
```

This command generates a brand new project with the default features (authentication, permissions, content management, content type builder & file upload).

Enjoy 🎉

### 🖐 Requirements

Complete installation requirements can be found in the documentation under <a href="https://docs.strapi.io/developer-docs/latest/setup-deployment-guides/deployment.html">Installation Requirements</a>.

**Supported operating systems**:

| OS              | Recommended | Minimum    |
| --------------- | ----------- | ---------- |
| Ubuntu          | 24.04       | LTS        |
| Debian          | 11          | LTS        |
| RHEL            | 9           | LTS        |
| macOS           | 14          | 12         |
| Windows Desktop | 11          | 10         |
| Windows Server  | No Support  | No Support |
| Docker          | N/A         | N/A        |

(Please note that Strapi may work on other operating systems, but these are not tested nor officially supported at this time.)

**Node:**

Strapi only supports maintenance and LTS versions of Node.js. Please refer to the <a href="https://nodejs.org/en/about/releases/">Node.js release schedule</a> for more information. NPM versions installed by default with Node.js are supported. Generally it's recommended to use yarn over npm where possible.

| Strapi Version  | Recommended | Minimum |
| --------------- | ----------- | ------- |
| 5.31.0 and up   | 24.x        | 20.x    |
| 5.0.0 to 5.30.1 | 20.x        | 18.x    |
| 4.14.5 and up   | 20.x        | 18.x    |
| 4.11.0 and up   | 18.x        | 16.x    |
| 4.3.9 to 4.10.x | 18.x        | 14.x    |
| 4.0.x to 4.3.8  | 16.x        | 14.x    |

**Database:**

| Database   | Recommended | Minimum |
| ---------- | ----------- | ------- |
| MySQL      | 8.0         | 8.0     |
| MariaDB    | 11.2        | 10.3    |
| PostgreSQL | 16.0        | 14.0    |
| SQLite     | 3           | 3       |

**We recommend always using the latest version of Strapi stable to start your new projects**.

## Features

- **Content Types Builder**: Build the most flexible publishing experience for your content managers, by giving them the freedom to create any page on the go with [fields](https://docs.strapi.io/user-docs/content-manager/writing-content#filling-up-fields), components and [Dynamic Zones](https://docs.strapi.io/user-docs/content-manager/writing-content#dynamic-zones).
- **Media Library**: Upload your images, videos, audio or documents to the media library. Easily find the right asset, edit and reuse it.
- **Internationalization**: The Internationalization (i18n) plugin allows Strapi users to create, manage and distribute localized content in different languages, called "locales"
- **Role Based Access Control**: Create an unlimited number of custom roles and permissions for admin and end users.
- **GraphQL or REST**: Consume the API using REST or GraphQL

You can unlock additional features such as SSO, Audit Logs, Review Workflows in [Strapi Cloud](https://cloud.strapi.io/login?source=github1) or [Strapi Enterprise](https://strapi.io/enterprise?source=github1).

**[See more on our website](https://strapi.io/overview)**.

## Contributing

Please read our [Contributing Guide](./CONTRIBUTING.md) before submitting a Pull Request to the project.

## Community support

For general help using Strapi, please refer to [the official Strapi documentation](https://docs.strapi.io). For additional help, you can use one of these channels to ask a question:

- [Discord](https://discord.strapi.io) (For live discussion with the Community and Strapi team)
- [GitHub](https://github.com/strapi/strapi) (Bug reports, Contributions)
- [Community Forum](https://forum.strapi.io) (Questions and Discussions)
- [Feedback section](https://feedback.strapi.io) (Roadmap, Feature requests)
- [Twitter](https://twitter.com/strapijs) (Get the news fast)
- [Facebook](https://www.facebook.com/Strapi-616063331867161)
- [YouTube Channel](https://www.youtube.com/strapi) (Learn from Video Tutorials)

## Migration

Follow our [migration guides](https://docs.strapi.io/developer-docs/latest/update-migration-guides/migration-guides.html) on the documentation to keep your projects up-to-date.

## Roadmap

Check out our [roadmap](https://feedback.strapi.io) to get informed of the latest features released and the upcoming ones. You may also give us insights and vote for a specific feature.

## Documentation

See our dedicated [repository](https://github.com/strapi/documentation) for the Strapi documentation, or view our documentation live:

- [Developer docs](https://docs.strapi.io/developer-docs/latest/getting-started/introduction.html)
- [User guide](https://docs.strapi.io/user-docs/latest/getting-started/introduction.html)
- [Cloud guide](https://docs.strapi.io/cloud/intro)

## Try live demo

See for yourself what's under the hood by getting access to a [hosted Strapi project](https://strapi.io/demo) with sample data.

## License

See the [LICENSE](./LICENSE) file for licensing information.

# Welcome to PearlThoughts Internship Program

We are thrilled to welcome you to the PearlThoughts team! This internship is designed to provide you with valuable hands-on experience, deepen your understanding of technology, and help you hone your skills in a collaborative, innovative environment.

# Policies and Guidelines

## Training and Attendance

### Training Sessions

- **Schedule**: Every weekday at 10:30 AM
- **Attendance**: MANDATORY - Missing sessions affects your evaluation
- **Duration**: Full attention required during training hours

### Working Hours

- **Availability**: 10 AM to 6 PM on all working days
- **Active Participation**: Required in all team activities and discussions

## Daily Requirements

### 📝 Pull Requests (PR)

- **Deadline**: Must be raised by end of each day
- **Content**: Include all work completed during the day
- **Consequence**: No PR = Marked absent for that day

### 📋 Status Updates

- Post daily progress in your team channel
- Use the [[../Templates/Daily-Status-Template|Daily Status Template]]
- Be specific about completed tasks and blockers

## Task Management

### Assigned Tasks

- Tasks assigned during morning training sessions
- **Timely Completion**: Critical for your evaluation
- Document challenges and solutions

### Task Tracking

- Update task status regularly
- Communicate blockers immediately
- Seek help when needed

## Evaluation Process

### Weekly Evaluations

- **When**: Every Friday
- **Criteria**:
  - Task completion and quality
  - Collaboration and teamwork
  - Learning progress
  - Professional conduct

### Performance Metrics

- Code quality and best practices
- Meeting deadlines
- Communication effectiveness
- Problem-solving approach

## Communication Channels

### MS Teams Channels

| Channel         | Purpose                                  |
| --------------- | ---------------------------------------- |
| **Internship**  | Key updates and announcements            |
| **Support**     | Cloud resources and technical guidance   |
| **DevOps**      | Deployment assistance and DevOps queries |
| **Team [Name]** | Your team's collaboration space          |

### Email Communication

- **Support Queries**: hr@pearlthoughts.com
- **Topics**: LOA requests, Teams access, evaluation results
- **Important**: Avoid raising these in training sessions or Teams channels

## Termination Policy

### ⚠️ Automatic Termination Triggers

- Missing 3 consecutive training sessions
- Failing to submit PR for 3 consecutive days
- No prior notice will be given

## Professional Conduct

### Expected Behavior

1. **Professionalism**: Maintain professional demeanor in all interactions
2. **Respect**: Treat all team members with respect
3. **Punctuality**: Be on time for all meetings and deadlines
4. **Integrity**: Be honest about your progress and challenges
5. **Collaboration**: Actively help and learn from peers

## Support Resources

### Getting Help

- Technical issues: Post in Support channel
- DevOps help: Use DevOps channel
- Administrative queries: Email hr@pearlthoughts.com
- Task clarification: Ask your mentor during training

## Best Practices

### Code Quality

- Follow project coding standards
- Write clean, documented code
- Test your changes before PR
- Review peers' code constructively

### Documentation

- Document your learning journey
- Share helpful resources with team
- Maintain clear commit messages
- Update project documentation

## Your Journey Starts Here

We are excited to have you on board and look forward to seeing you grow and succeed during your time with us.

**Welcome to PearlThoughts—let's embark on this journey together!**
0d1cc7555f39454c1c2c97444573140074c4bd4e
