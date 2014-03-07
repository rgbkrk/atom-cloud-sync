CloudSyncView = require './cloud-sync-view'

module.exports =
  cloudSyncView: null

  activate: (state) ->
    @cloudSyncView = new CloudSyncView(state.cloudSyncViewState)

  deactivate: ->
    @cloudSyncView.destroy()

  serialize: ->
    cloudSyncViewState: @cloudSyncView.serialize()
