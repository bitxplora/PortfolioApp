<template>
  <section class="block-layout">
    <div class="block-header">
      <h2>
        {{yield to="header"}}
      </h2>
    </div>
    <div class="block-image">
      <img src="/images/{{@image}}" alt={{@imageAlt}} width="150" height="300" ...attributes>
    </div>
    <div class="block-description">
      <p>
        {{yield to="description"}}
      </p>
    </div>
      <nav class="projectLink">
        <ul class="social-project">
          <li>
            <a href="https://github.com/bitxplora/{{@github}}">
              <i class="bi bi-github"></i>
            </a>
          </li>
          <li>
            <a href="{{@globe}}">
              <i class="bi {{if @globe "bi-globe"}}"></i>
            </a>
          </li>
        </ul>
      </nav>
  </section>
  <style>
    .block-layout {
      padding: 10px 0;
      margin: 30px 0;
      display: grid;
      grid-template-areas:
        "header"
        "image"
        "description"
        "social";
      place-content: center space-evenly;
      place-items: center;
      row-gap: 15px;
      font-family: Roboto, sans-serif;
      font-size: 0.9rem;
    }
    .block-header {
      grid-area: header;
    }
    .block-image {
      grid-area: image;
      height: 100%;
    }
    .block-description {
      grid-area: description;
    }
    .block-description span {
      font-size: 0.9rem;
      font-style: oblique;
    }
    .block-projectLink {
      grid-area: projectLink;
    }
    h2 {
      font-family: Poppins, serif;
      font-size: 1.5rem;
      font-weight: 550;
      padding: 30px 0;
    }
    nav.projectLink .social-project li a {
      color: #fff;
    }
    @media only screen and (width >= 900px) {
      .block-layout {
        width: 80%;
        padding: 10px 0;
        margin: 65px 0;
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        grid-template-areas:
          "header  header"
          "image  description"
          "image  social";
        font-size: 1.2rem;
      }
    }
  </style>
</template>
