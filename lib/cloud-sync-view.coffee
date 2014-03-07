{View} = require 'atom'

module.exports =
class CloudSyncView extends View
  @content: ->
    @div class: 'cloud-sync overlay from-top', =>
      @div "Syncing Clouds", class: "message", =>
        @span "heh", class: "icon-cloud-upload"

  initialize: (serializeState) ->
    atom.workspaceView.command "cloud-sync:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "CloudSyncView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
