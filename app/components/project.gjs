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
      <nav class="project-link">
        <ul class="social-project">
          <li>
            <a href="https://github.com/bitxplora/{{@github}}">
              <i class="bi bi-github"></i>
            </a>
          </li>
          <li>
            <a href="https://{{@globe}}">
              <i class="bi {{if @globe "bi-globe"}}"></i>
            </a>
          </li>
        </ul>
      </nav>
  </section>
</template>
