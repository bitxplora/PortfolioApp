import Component from "@glimmer/component";

export default class Contact extends Component {
  doSubmit() {}

  <template>
    <div>
      <form class="form-contact">
        <label for="nameInput" class="form-label">Name</label>
        <input type="text" class="form-control" id="nameInput" aria-describedby="name" placeholder=" Enter your name" aria-required="true" required>
        <label for="emailInput" class="form-label">Email</label>
        <input type="email" class="form-control" id="emailInput" aria-describedby="email" placeholder=" Enter your name" aria-required="true" required >
        <label for="messageInput" class="form-label">Message</label>
        <textarea class="form-control" id="messageInput" aria-describedby="message" placeholder=" Enter your message" aria-required="true" required rows="10" ></textarea>
        <div class="container-button"><button type="submit" class="button-submit">Submit</button></div>
        <div class="form-text">
          You can also contact me directly via info@olutayo.dev
        </div>
      </form>
    </div>
  </template>
}
