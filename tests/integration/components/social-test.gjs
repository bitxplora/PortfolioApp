import Social from 'portfolio-app/components/social';
import { module, test } from 'qunit';
import { setupRenderingTest } from 'portfolio-app/tests/helpers';
import { render, pauseTest } from '@ember/test-helpers';

module('Integration | Component | social', function (hooks) {
  setupRenderingTest(hooks);

  test('it renders', async function (assert) {

    await render(<template><Social /></template>);

    assert.dom('[data-test-social]').exists("The projects navigation exists.");
    // await pauseTest();
    assert.dom('[data-test-social]').hasClass('social');
    assert.dom('[data-test-social]').exists('The project link container exists.');
    assert.dom('[data-test-social] li:nth-child(1)').exists('The github link container exists.');
    assert.dom('[data-test-social] li:nth-child(1) a').exists('The github link exists.');
    assert.dom('[data-test-social] li:nth-child(1) a').hasAttribute('href', 'https://github.com/bitxplora');
    assert.dom('[data-test-social] li:nth-child(2)').exists('The X link exists.');
    assert.dom('[data-test-social] li:nth-child(2) a').hasAttribute('href', 'https://x.com/solutayo');
    assert.dom('[data-test-social] li:nth-child(3)').exists('The mailto link exists.');
    assert.dom('[data-test-social] li:nth-child(3) a').hasAttribute('href', '/contact');
  });
});
