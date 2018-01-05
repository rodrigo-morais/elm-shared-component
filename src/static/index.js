const node = document.querySelector('#main')
const flags = { title: 'Title' }
let clicks = 0
const app = Elm.Main.embed(node, flags)

app.ports.changedText.subscribe(newText => {
  console.log(`The text changed to: ${newText}`)
  clicks = clicks + 1
  app.ports.clicks.send(clicks)
})
