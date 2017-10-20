const fs = require('fs')
const { resolve } = require('path')
const childProcess = require('child_process')

const root = resolve(__dirname, '..')
const source = resolve(root, 'src')

let child

function run() {
  if (child) child.kill()
  child = childProcess.spawn('love', [source])
}

fs.watch(source, { recursive: true }, run)
run()
