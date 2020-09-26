module Web.View.Posts.New where
import Web.View.Prelude

data NewView = NewView { post :: Post }

instance View NewView ViewContext where
    html NewView { .. } = [hsx|
        <h1>New Post</h1>
        {renderForm post}
    |]

renderForm :: Post -> Html
renderForm post = formFor post [hsx|
    {textField #title}
    {(textField #body) {helpText = "You can use Markdown here."} }
    {submitButton}
|]
