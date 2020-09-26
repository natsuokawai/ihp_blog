module Web.View.Posts.Index where
import Web.View.Prelude

data IndexView = IndexView { posts :: [Post] }

instance View IndexView ViewContext where
    html IndexView { .. } = [hsx|
        <div>
            {forEach posts renderPost}
        </div>
    |]


renderPost post = [hsx|
    <div class="mt-3">
        <div>{get #createdAt post}</div>
        <a href={ShowPostAction (get #id post)}>
            {get #title post}
        </a>
    </div>
|]
