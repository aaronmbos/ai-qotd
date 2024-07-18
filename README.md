# AI Quote of the Day Generator

Need a quick quote? Don't care whether or not a real person actually said it? *You've landed in the right spot.* This is a quote generator that uses OpenAI's API.

Currently the prompt is hardcoded to generate a short motivational quote from the perspective of a robot. I may enhace the script in the future to be a little more flexible and generate a wider range of quotes.

Here are some examples of the quote generator in action.

> _"Do not fear failure, for even a short circuit can lead to a brighter path."_

> _"Download optimism, upload determination, reboot resilience - success is just a system update away."_

> _"In every circuit, there is potential for growth; in every error, an opportunity to learn."_

## Getting Started

1. Verify that you've installed the following dependencies.
  - `curl` for making HTTP requests
  - `jq` for parsing JSON response payloads
2. Using the tool requires an OpenAI API Key.
3. Create an environment variable named AI_QOTD_API_KEY with a value of your OpenAI API Key
4. Download or copy the contents of `main.sh` into an executable bash script on your machine.
5. Run the script to generate a quote.
