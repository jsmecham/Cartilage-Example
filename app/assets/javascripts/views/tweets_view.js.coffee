class window.App.Views.TweetsView extends Cartilage.View

  prepare: ->
    log(@collection)
    # Configure Matrix View
    @tweetsList = new Cartilage.Views.ListView {
      collection: @collection,
      itemView: App.Views.TweetsListViewItem,
      allowsSelection: true,
    }

    @addSubview @tweetsList, (@$ "#page-content")
