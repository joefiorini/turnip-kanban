# turnip-kanban

This gem exists to make my workflow for acceptance tests easier. My workflow is:

1. Pull a card into WIP in my Kanban system
2. Work with any necessary stakeholders to get as much understanding of the functionality as possible.
3. Write out all Scenarios to complete the card
4. Tag each Scenario with `@backlog` tag and use RSpec's `filter_tag_excluding` option to keep them from running
5. Pull the first card and mark it as `@wip`
6. When the feature passes remove all tags and commit/push

Repeat steps 5 and 6 for the remaining scenarios. Once all are passing the card should be ready to go.

## What this does

At the moment this is an extremely simple plugin. It has only 2 behaviors:

1. Ignore any Scenarios tagged with `@backlog`
2. If a Scenario is tagged with `@wip` then run only that Scenario

N.B. This does not ignore failing `@wip` scenarios like Cucumber's `--wip` switch. Would that even be posisble in RSpec?

## Usage

In your `spec/turnip_helper.rb`:

```ruby
require "turnip/kanban"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
