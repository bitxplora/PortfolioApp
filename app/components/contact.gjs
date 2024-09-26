import Component from "@glimmer/component";

export default class Contact extends Component {
  doSubmit = (event) => {
    event.preventDefault();
    let form = document.getElementById("form-contact");
    let messageData = new FormData(form);
    let message = Object.fromEntries(messageData.entries());
    return message;
  };

  <template>
    <div>
      <form class="form-contact" id="form-contact" name="form-contact" action="mailto:info@olutayo.dev">
        <label for="nameInput" class="form-label">Name</label>
        <input type="text" class="form-control" id="nameInput" name="nameInput" aria-describedby="name" placeholder=" Enter your name" aria-required="true" required>
        <label for="emailInput" class="form-label">Email</label>
        <input type="email" class="form-control" id="emailInput" name="emailInput" aria-describedby="email" placeholder=" Enter your name" aria-required="true" required >
        <label for="messageInput" class="form-label">Message</label>
        <textarea class="form-control" id="messageInput" name="messageInput" aria-describedby="message" placeholder=" Enter your message" aria-required="true" required rows="10" ></textarea>
        <div class="container-button">
          <button type="submit" class="button-submit">Submit</button>
        </div>
        <div class="form-text">
          You can also contact me directly via info@olutayo.dev
        </div>
      </form>
    </div>
  </template>
}
