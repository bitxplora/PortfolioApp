import { LinkTo } from "@ember/routing";
<template>
  <nav>
    <ul class="social">
      <li>
        <a href="https://github.com/bitxplora">
          <i class="bi bi-github"></i>
        </a>
      </li>
      <li>
        <a href="https://x.com/solutayo">
          <i class="bi bi-twitter-x"></i>
        </a>
      </li>
      <li>
        <LinkTo @route="contact">
          <i class="bi bi-envelope-at-fill"></i>
        </LinkTo>
      </li>
      <li><i class="bi bi-linkedin"></i></li>
    </ul>
  </nav>
  <style>
    .social li a {
      color: #fff;
    }
  </style>
</template>
