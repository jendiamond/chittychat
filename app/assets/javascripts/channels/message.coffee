App.message = App.cable.subscriptions.create "MessageChannel",
  connected: ->
    console.log('connected')