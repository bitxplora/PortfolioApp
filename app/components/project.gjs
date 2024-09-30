<template>
  <section class="block-layout">
    <div class="block-header">
      <h2>
        {{yield to="header"}}
      </h2>
    </div>
    <div class="block-image">
      <img src="/images/{{@image}}" alt={{@imageAlt}} width="200" height="300" ...attributes>
    </div>
    <div class="block-description">
      <p>
        {{yield to="description"}}
      </p>
    </div>
    <div>
      <nav socialnav>
        <ul class="social-project">
          <li><i class="bi bi-github"></i></li>
          <li><i class="bi bi-globe"></i></li>
        </ul>
      </nav>
    </div>
  </section>
  <style>
    .block-layout {
      padding: 10px 0;
      margin: 30px 0;
      display: grid;
      grid-template-rows: repeat(4, minmax(fit-content, 1fr));
      grid-template-areas:
        "header"
        "image"
        "description";
      place-content: center center;
      place-items: center;
      row-gap: 15px;
      font-family: Roboto, sans-serif;
      font-size: 0.9rem;
    }

    h2 {
      font-family: Poppins, serif;
      font-size: 1.4rem;
    }
  </style>
</template>
