# Reference
## Auth
<details><summary><code>client.auth.<a href="/lib/forum/auth/client.rb">register</a>(request) -> Forum::Auth::Types::PostAuthRegisterResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.auth.register(
  username: 'username',
  email: 'email',
  password: 'password'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**username:** `String` — Username
    
</dd>
</dl>

<dl>
<dd>

**email:** `String` — Email
    
</dd>
</dl>

<dl>
<dd>

**display_name:** `String` — Display Name
    
</dd>
</dl>

<dl>
<dd>

**password:** `String` — Password (min 8 chars)
    
</dd>
</dl>

<dl>
<dd>

**roles:** `Internal::Types::Array[String]` — Roles
    
</dd>
</dl>

<dl>
<dd>

**bio:** `String` — Bio
    
</dd>
</dl>

<dl>
<dd>

**extended_data:** `Internal::Types::Hash[String, Object]` — Extended data
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Auth::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.auth.<a href="/lib/forum/auth/client.rb">login</a>(request) -> Forum::Auth::Types::PostAuthLoginResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.auth.login(
  login: 'login',
  password: 'password'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**login:** `String` — Username or Email
    
</dd>
</dl>

<dl>
<dd>

**password:** `String` — Password
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Auth::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.auth.<a href="/lib/forum/auth/client.rb">get_current_user</a>() -> Forum::Auth::Types::GetAuthMeResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.auth.get_current_user();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Forum::Auth::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.auth.<a href="/lib/forum/auth/client.rb">request_password_reset</a>(request) -> Forum::Auth::Types::PostAuthForgotPasswordResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.auth.request_password_reset(email: 'email');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**email:** `String` — User Email
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Auth::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.auth.<a href="/lib/forum/auth/client.rb">reset_password</a>(request) -> Forum::Auth::Types::PostAuthResetPasswordResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.auth.reset_password(password: 'password');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**password:** `String` — New Password (min 8 chars)
    
</dd>
</dl>

<dl>
<dd>

**old_password:** `String` — Old Password (for change password)
    
</dd>
</dl>

<dl>
<dd>

**email:** `String` — Email (required if using oldPassword)
    
</dd>
</dl>

<dl>
<dd>

**token:** `String` — Reset Token
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Auth::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Tags
<details><summary><code>client.tags.<a href="/lib/forum/tags/client.rb">list_all_tags</a>() -> Forum::Tags::Types::GetTagsResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.tags.list_all_tags();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**search:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Tags::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tags.<a href="/lib/forum/tags/client.rb">create_a_tag</a>(request) -> Forum::Tags::Types::PostTagsResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.tags.create_a_tag(name: 'name');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**name:** `String` — Tag name
    
</dd>
</dl>

<dl>
<dd>

**slug:** `String` — Tag slug (unique identifier)
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` — Tag description
    
</dd>
</dl>

<dl>
<dd>

**color:** `String` — Hex color code
    
</dd>
</dl>

<dl>
<dd>

**extended_data:** `Internal::Types::Hash[String, Object]` — Extended data
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Tags::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tags.<a href="/lib/forum/tags/client.rb">get_a_tag</a>(id) -> Forum::Tags::Types::GetTagsIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.tags.get_a_tag(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Tags::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tags.<a href="/lib/forum/tags/client.rb">delete_a_tag</a>(id) -> Forum::Tags::Types::DeleteTagsIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.tags.delete_a_tag(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Tags::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tags.<a href="/lib/forum/tags/client.rb">update_a_tag</a>(id, request) -> Forum::Tags::Types::PatchTagsIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.tags.update_a_tag(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — Tag name
    
</dd>
</dl>

<dl>
<dd>

**slug:** `String` — Tag slug (unique identifier)
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` — Tag description
    
</dd>
</dl>

<dl>
<dd>

**color:** `String` — Hex color code
    
</dd>
</dl>

<dl>
<dd>

**extended_data:** `Internal::Types::Hash[String, Object]` — Extended data
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Tags::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tags.<a href="/lib/forum/tags/client.rb">list_tag_subscribers</a>(id) -> Forum::Tags::Types::GetTagsIDSubscribersResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.tags.list_tag_subscribers(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Tag ID
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `String` — Pagination cursor
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` — Items per page
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Tags::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tags.<a href="/lib/forum/tags/client.rb">get_a_subscriber_from_tag</a>(id, sub_id) -> Forum::Tags::Types::GetTagsIDSubscribersSubIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.tags.get_a_subscriber_from_tag(
  id: 'id',
  sub_id: 'subId'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Tag ID
    
</dd>
</dl>

<dl>
<dd>

**sub_id:** `String` — Subscriber ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Tags::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tags.<a href="/lib/forum/tags/client.rb">delete_a_subscriber_from_tag</a>(id, sub_id) -> Forum::Tags::Types::DeleteTagsIDSubscribersSubIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.tags.delete_a_subscriber_from_tag(
  id: 'id',
  sub_id: 'subId'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Tag ID
    
</dd>
</dl>

<dl>
<dd>

**sub_id:** `String` — Subscriber ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Tags::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Threads
<details><summary><code>client.threads.<a href="/lib/forum/threads/client.rb">list_all_threads</a>() -> Forum::Threads::Types::GetThreadsResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.threads.list_all_threads();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**search:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Threads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.threads.<a href="/lib/forum/threads/client.rb">create_a_thread</a>(request) -> Forum::Threads::Types::PostThreadsResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.threads.create_a_thread(
  title: 'title',
  body: 'body'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**title:** `String` — Thread title
    
</dd>
</dl>

<dl>
<dd>

**body:** `String` — Thread content (Markdown supported)
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — Author user ID (required for API key auth, ignored for JWT auth)
    
</dd>
</dl>

<dl>
<dd>

**tags:** `Internal::Types::Array[String]` — List of tag slugs, names, or IDs to attach
    
</dd>
</dl>

<dl>
<dd>

**poll:** `Forum::Threads::Types::PostThreadsRequestPoll` — Poll data
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Threads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.threads.<a href="/lib/forum/threads/client.rb">get_a_thread</a>(id) -> Forum::Threads::Types::GetThreadsIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.threads.get_a_thread(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Threads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.threads.<a href="/lib/forum/threads/client.rb">delete_a_thread</a>(id) -> Forum::Threads::Types::DeleteThreadsIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.threads.delete_a_thread(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Threads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.threads.<a href="/lib/forum/threads/client.rb">update_a_thread</a>(id, request) -> Forum::Threads::Types::PatchThreadsIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.threads.update_a_thread(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — New title
    
</dd>
</dl>

<dl>
<dd>

**body:** `String` — New content
    
</dd>
</dl>

<dl>
<dd>

**locked:** `Internal::Types::Boolean` — Lock/unlock thread
    
</dd>
</dl>

<dl>
<dd>

**pinned:** `Internal::Types::Boolean` — Pin/unpin thread
    
</dd>
</dl>

<dl>
<dd>

**tags:** `Internal::Types::Array[String]` — Update tags by slug, name, or ID
    
</dd>
</dl>

<dl>
<dd>

**extended_data:** `Internal::Types::Hash[String, Object]` — Update extended data
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Threads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.threads.<a href="/lib/forum/threads/client.rb">list_thread_posts</a>(id) -> Forum::Threads::Types::GetThreadsIDPostsResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.threads.list_thread_posts(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Thread ID
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `String` — Pagination cursor
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` — Items per page
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Threads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.threads.<a href="/lib/forum/threads/client.rb">get_a_post_from_thread</a>(id, sub_id) -> Forum::Threads::Types::GetThreadsIDPostsSubIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.threads.get_a_post_from_thread(
  id: 'id',
  sub_id: 'subId'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Thread ID
    
</dd>
</dl>

<dl>
<dd>

**sub_id:** `String` — Post ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Threads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.threads.<a href="/lib/forum/threads/client.rb">delete_a_post_from_thread</a>(id, sub_id) -> Forum::Threads::Types::DeleteThreadsIDPostsSubIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.threads.delete_a_post_from_thread(
  id: 'id',
  sub_id: 'subId'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Thread ID
    
</dd>
</dl>

<dl>
<dd>

**sub_id:** `String` — Post ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Threads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.threads.<a href="/lib/forum/threads/client.rb">list_thread_reactions</a>(id) -> Forum::Threads::Types::GetThreadsIDReactionsResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.threads.list_thread_reactions(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Thread ID
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `String` — Pagination cursor
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` — Items per page
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Threads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.threads.<a href="/lib/forum/threads/client.rb">create_a_reaction_in_thread</a>(id, request) -> Forum::Threads::Types::PostThreadsIDReactionsResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.threads.create_a_reaction_in_thread(
  id: 'id',
  type: 'LIKE'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Thread ID
    
</dd>
</dl>

<dl>
<dd>

**type:** `Forum::Threads::Types::PostThreadsIDReactionsRequestType` — Type of reaction
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — User ID (required for API key auth, ignored for JWT auth)
    
</dd>
</dl>

<dl>
<dd>

**extended_data:** `Internal::Types::Hash[String, Object]` — Additional custom data
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Threads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.threads.<a href="/lib/forum/threads/client.rb">remove_your_reaction_from_thread</a>(id) -> Forum::Threads::Types::DeleteThreadsIDReactionsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes the authenticated user's reaction. No subId needed.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.threads.remove_your_reaction_from_thread(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Thread ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Threads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.threads.<a href="/lib/forum/threads/client.rb">get_a_reaction_from_thread</a>(id, sub_id) -> Forum::Threads::Types::GetThreadsIDReactionsSubIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.threads.get_a_reaction_from_thread(
  id: 'id',
  sub_id: 'subId'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Thread ID
    
</dd>
</dl>

<dl>
<dd>

**sub_id:** `String` — Reaction ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Threads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.threads.<a href="/lib/forum/threads/client.rb">delete_a_reaction_from_thread</a>(id, sub_id) -> Forum::Threads::Types::DeleteThreadsIDReactionsSubIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.threads.delete_a_reaction_from_thread(
  id: 'id',
  sub_id: 'subId'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Thread ID
    
</dd>
</dl>

<dl>
<dd>

**sub_id:** `String` — Reaction ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Threads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.threads.<a href="/lib/forum/threads/client.rb">list_thread_subscribers</a>(id) -> Forum::Threads::Types::GetThreadsIDSubscribersResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.threads.list_thread_subscribers(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Thread ID
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `String` — Pagination cursor
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` — Items per page
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Threads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.threads.<a href="/lib/forum/threads/client.rb">get_a_subscriber_from_thread</a>(id, sub_id) -> Forum::Threads::Types::GetThreadsIDSubscribersSubIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.threads.get_a_subscriber_from_thread(
  id: 'id',
  sub_id: 'subId'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Thread ID
    
</dd>
</dl>

<dl>
<dd>

**sub_id:** `String` — Subscriber ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Threads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.threads.<a href="/lib/forum/threads/client.rb">delete_a_subscriber_from_thread</a>(id, sub_id) -> Forum::Threads::Types::DeleteThreadsIDSubscribersSubIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.threads.delete_a_subscriber_from_thread(
  id: 'id',
  sub_id: 'subId'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Thread ID
    
</dd>
</dl>

<dl>
<dd>

**sub_id:** `String` — Subscriber ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Threads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.threads.<a href="/lib/forum/threads/client.rb">get_thread_poll</a>(id) -> Forum::Threads::Types::GetThreadsIDPollResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.threads.get_thread_poll(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Thread ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Threads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.threads.<a href="/lib/forum/threads/client.rb">create_thread_poll</a>(id, request) -> Forum::Threads::Types::PostThreadsIDPollResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.threads.create_thread_poll(
  id: 'id',
  title: 'title',
  options: [{
    title: 'title'
  }]
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Thread ID
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — Poll question/title
    
</dd>
</dl>

<dl>
<dd>

**options:** `Internal::Types::Array[Forum::Threads::Types::PostThreadsIDPollRequestOptionsItem]` — Poll options (2-20)
    
</dd>
</dl>

<dl>
<dd>

**expires_at:** `String` — Optional expiration time
    
</dd>
</dl>

<dl>
<dd>

**extended_data:** `Internal::Types::Hash[String, Object]` — Additional custom data
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Threads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.threads.<a href="/lib/forum/threads/client.rb">update_thread_poll</a>(id, request) -> Forum::Threads::Types::PatchThreadsIDPollResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.threads.update_thread_poll(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Thread ID
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — Poll question/title
    
</dd>
</dl>

<dl>
<dd>

**closed:** `Internal::Types::Boolean` — Close the poll
    
</dd>
</dl>

<dl>
<dd>

**expires_at:** `String` — Optional expiration time
    
</dd>
</dl>

<dl>
<dd>

**extended_data:** `Internal::Types::Hash[String, Object]` — Additional custom data
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Threads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Posts
<details><summary><code>client.posts.<a href="/lib/forum/posts/client.rb">list_all_posts</a>() -> Forum::Posts::Types::GetPostsResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.posts.list_all_posts();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**search:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Posts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.posts.<a href="/lib/forum/posts/client.rb">create_a_post</a>(request) -> Forum::Posts::Types::PostPostsResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.posts.create_a_post(
  thread_id: 'threadId',
  body: 'body'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**thread_id:** `String` — Thread ID to post in
    
</dd>
</dl>

<dl>
<dd>

**body:** `String` — Post content (Markdown supported)
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — Author user ID (required for API key auth, ignored for JWT auth)
    
</dd>
</dl>

<dl>
<dd>

**parent_id:** `String` — Parent post ID for threading
    
</dd>
</dl>

<dl>
<dd>

**extended_data:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Posts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.posts.<a href="/lib/forum/posts/client.rb">get_a_post</a>(id) -> Forum::Posts::Types::GetPostsIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.posts.get_a_post(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Posts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.posts.<a href="/lib/forum/posts/client.rb">delete_a_post</a>(id) -> Forum::Posts::Types::DeletePostsIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.posts.delete_a_post(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Posts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.posts.<a href="/lib/forum/posts/client.rb">update_a_post</a>(id, request) -> Forum::Posts::Types::PatchPostsIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.posts.update_a_post(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**body:** `String` — Updated post content
    
</dd>
</dl>

<dl>
<dd>

**thread_id:** `String` — Move post to another thread
    
</dd>
</dl>

<dl>
<dd>

**parent_id:** `String` — Change parent post
    
</dd>
</dl>

<dl>
<dd>

**extended_data:** `Internal::Types::Hash[String, Object]` — Update extended data
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Posts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.posts.<a href="/lib/forum/posts/client.rb">list_post_reactions</a>(id) -> Forum::Posts::Types::GetPostsIDReactionsResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.posts.list_post_reactions(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Post ID
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `String` — Pagination cursor
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` — Items per page
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Posts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.posts.<a href="/lib/forum/posts/client.rb">create_a_reaction_in_post</a>(id, request) -> Forum::Posts::Types::PostPostsIDReactionsResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.posts.create_a_reaction_in_post(
  id: 'id',
  type: 'LIKE'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Post ID
    
</dd>
</dl>

<dl>
<dd>

**type:** `Forum::Posts::Types::PostPostsIDReactionsRequestType` — Type of reaction
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — User ID (required for API key auth, ignored for JWT auth)
    
</dd>
</dl>

<dl>
<dd>

**extended_data:** `Internal::Types::Hash[String, Object]` — Additional custom data
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Posts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.posts.<a href="/lib/forum/posts/client.rb">remove_your_reaction_from_post</a>(id) -> Forum::Posts::Types::DeletePostsIDReactionsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes the authenticated user's reaction. No subId needed.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.posts.remove_your_reaction_from_post(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Post ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Posts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.posts.<a href="/lib/forum/posts/client.rb">get_a_reaction_from_post</a>(id, sub_id) -> Forum::Posts::Types::GetPostsIDReactionsSubIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.posts.get_a_reaction_from_post(
  id: 'id',
  sub_id: 'subId'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Post ID
    
</dd>
</dl>

<dl>
<dd>

**sub_id:** `String` — Reaction ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Posts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.posts.<a href="/lib/forum/posts/client.rb">delete_a_reaction_from_post</a>(id, sub_id) -> Forum::Posts::Types::DeletePostsIDReactionsSubIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.posts.delete_a_reaction_from_post(
  id: 'id',
  sub_id: 'subId'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Post ID
    
</dd>
</dl>

<dl>
<dd>

**sub_id:** `String` — Reaction ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Posts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.posts.<a href="/lib/forum/posts/client.rb">list_post_posts</a>(id) -> Forum::Posts::Types::GetPostsIDPostsResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.posts.list_post_posts(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Post ID
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `String` — Pagination cursor
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` — Items per page
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Posts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.posts.<a href="/lib/forum/posts/client.rb">get_a_post_from_post</a>(id, sub_id) -> Forum::Posts::Types::GetPostsIDPostsSubIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.posts.get_a_post_from_post(
  id: 'id',
  sub_id: 'subId'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Post ID
    
</dd>
</dl>

<dl>
<dd>

**sub_id:** `String` — Post ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Posts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.posts.<a href="/lib/forum/posts/client.rb">delete_a_post_from_post</a>(id, sub_id) -> Forum::Posts::Types::DeletePostsIDPostsSubIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.posts.delete_a_post_from_post(
  id: 'id',
  sub_id: 'subId'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Post ID
    
</dd>
</dl>

<dl>
<dd>

**sub_id:** `String` — Post ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Posts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## PrivateMessages
<details><summary><code>client.private_messages.<a href="/lib/forum/private_messages/client.rb">list_all_private_messages</a>() -> Forum::PrivateMessages::Types::GetPrivateMessagesResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.private_messages.list_all_private_messages();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**search:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::PrivateMessages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.private_messages.<a href="/lib/forum/private_messages/client.rb">create_a_private_message</a>(request) -> Forum::PrivateMessages::Types::PostPrivateMessagesResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.private_messages.create_a_private_message(
  recipient_id: 'recipientId',
  body: 'body'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**recipient_id:** `String` — Recipient User ID
    
</dd>
</dl>

<dl>
<dd>

**sender_id:** `String` — Sender user ID (required for API key auth, ignored for JWT auth)
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — Message title (optional for replies)
    
</dd>
</dl>

<dl>
<dd>

**body:** `String` — Message content
    
</dd>
</dl>

<dl>
<dd>

**parent_id:** `String` — Parent Message ID (for replies)
    
</dd>
</dl>

<dl>
<dd>

**extended_data:** `Internal::Types::Hash[String, Object]` — Extended data
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::PrivateMessages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.private_messages.<a href="/lib/forum/private_messages/client.rb">get_a_private_message</a>(id) -> Forum::PrivateMessages::Types::GetPrivateMessagesIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.private_messages.get_a_private_message(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::PrivateMessages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.private_messages.<a href="/lib/forum/private_messages/client.rb">delete_a_private_message</a>(id) -> Forum::PrivateMessages::Types::DeletePrivateMessagesIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.private_messages.delete_a_private_message(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::PrivateMessages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.private_messages.<a href="/lib/forum/private_messages/client.rb">list_private_message_replies</a>(id) -> Forum::PrivateMessages::Types::GetPrivateMessagesIDRepliesResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.private_messages.list_private_message_replies(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Private Message ID
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `String` — Pagination cursor
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` — Items per page
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::PrivateMessages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.private_messages.<a href="/lib/forum/private_messages/client.rb">create_a_reply_in_private_message</a>(id, request) -> Forum::PrivateMessages::Types::PostPrivateMessagesIDRepliesResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.private_messages.create_a_reply_in_private_message(
  id: 'id',
  recipient_id: 'recipientId',
  body: 'body'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Private Message ID
    
</dd>
</dl>

<dl>
<dd>

**recipient_id:** `String` — Recipient User ID
    
</dd>
</dl>

<dl>
<dd>

**sender_id:** `String` — Sender user ID (required for API key auth, ignored for JWT auth)
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — Message title (optional for replies)
    
</dd>
</dl>

<dl>
<dd>

**body:** `String` — Message content
    
</dd>
</dl>

<dl>
<dd>

**parent_id:** `String` — Parent Message ID (for replies)
    
</dd>
</dl>

<dl>
<dd>

**extended_data:** `Internal::Types::Hash[String, Object]` — Extended data
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::PrivateMessages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.private_messages.<a href="/lib/forum/private_messages/client.rb">get_a_reply_from_private_message</a>(id, sub_id) -> Forum::PrivateMessages::Types::GetPrivateMessagesIDRepliesSubIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.private_messages.get_a_reply_from_private_message(
  id: 'id',
  sub_id: 'subId'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Private Message ID
    
</dd>
</dl>

<dl>
<dd>

**sub_id:** `String` — Reply ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::PrivateMessages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.private_messages.<a href="/lib/forum/private_messages/client.rb">delete_a_reply_from_private_message</a>(id, sub_id) -> Forum::PrivateMessages::Types::DeletePrivateMessagesIDRepliesSubIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.private_messages.delete_a_reply_from_private_message(
  id: 'id',
  sub_id: 'subId'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Private Message ID
    
</dd>
</dl>

<dl>
<dd>

**sub_id:** `String` — Reply ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::PrivateMessages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Users
<details><summary><code>client.users.<a href="/lib/forum/users/client.rb">list_all_users</a>() -> Forum::Users::Types::GetUsersResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.list_all_users();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**search:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Users::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.<a href="/lib/forum/users/client.rb">get_a_user</a>(id) -> Forum::Users::Types::GetUsersIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.get_a_user(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Users::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.<a href="/lib/forum/users/client.rb">delete_a_user</a>(id) -> Forum::Users::Types::DeleteUsersIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.delete_a_user(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Users::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.<a href="/lib/forum/users/client.rb">update_a_user</a>(id, request) -> Forum::Users::Types::PatchUsersIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.update_a_user(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**display_name:** `String` — Display name
    
</dd>
</dl>

<dl>
<dd>

**bio:** `String` — User bio
    
</dd>
</dl>

<dl>
<dd>

**signature:** `String` — Forum signature
    
</dd>
</dl>

<dl>
<dd>

**username:** `String` — Username (letters, numbers, underscores, hyphens)
    
</dd>
</dl>

<dl>
<dd>

**email:** `String` — Email address
    
</dd>
</dl>

<dl>
<dd>

**password:** `String` — New password
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — Website URL
    
</dd>
</dl>

<dl>
<dd>

**extended_data:** `Internal::Types::Hash[String, Object]` — Extended data
    
</dd>
</dl>

<dl>
<dd>

**roles:** `Internal::Types::Array[String]` — Role slugs (admin only)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Users::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.<a href="/lib/forum/users/client.rb">list_user_followers</a>(id) -> Forum::Users::Types::GetUsersIDFollowersResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.list_user_followers(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — User ID
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `String` — Pagination cursor
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` — Items per page
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Users::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.<a href="/lib/forum/users/client.rb">get_a_follower_from_user</a>(id, sub_id) -> Forum::Users::Types::GetUsersIDFollowersSubIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.get_a_follower_from_user(
  id: 'id',
  sub_id: 'subId'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — User ID
    
</dd>
</dl>

<dl>
<dd>

**sub_id:** `String` — Follower ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Users::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.<a href="/lib/forum/users/client.rb">delete_a_follower_from_user</a>(id, sub_id) -> Forum::Users::Types::DeleteUsersIDFollowersSubIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.delete_a_follower_from_user(
  id: 'id',
  sub_id: 'subId'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — User ID
    
</dd>
</dl>

<dl>
<dd>

**sub_id:** `String` — Follower ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Users::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.<a href="/lib/forum/users/client.rb">list_user_following</a>(id) -> Forum::Users::Types::GetUsersIDFollowingResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.list_user_following(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — User ID
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `String` — Pagination cursor
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` — Items per page
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Users::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.<a href="/lib/forum/users/client.rb">get_a_following_from_user</a>(id, sub_id) -> Forum::Users::Types::GetUsersIDFollowingSubIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.get_a_following_from_user(
  id: 'id',
  sub_id: 'subId'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — User ID
    
</dd>
</dl>

<dl>
<dd>

**sub_id:** `String` — Following ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Users::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.<a href="/lib/forum/users/client.rb">delete_a_following_from_user</a>(id, sub_id) -> Forum::Users::Types::DeleteUsersIDFollowingSubIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.delete_a_following_from_user(
  id: 'id',
  sub_id: 'subId'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — User ID
    
</dd>
</dl>

<dl>
<dd>

**sub_id:** `String` — Following ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Users::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Roles
<details><summary><code>client.roles.<a href="/lib/forum/roles/client.rb">list_all_roles</a>() -> Forum::Roles::Types::GetRolesResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.roles.list_all_roles();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**search:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Roles::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.roles.<a href="/lib/forum/roles/client.rb">create_a_role</a>(request) -> Forum::Roles::Types::PostRolesResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.roles.create_a_role(name: 'name');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**name:** `String` — Role name
    
</dd>
</dl>

<dl>
<dd>

**slug:** `String` — Role slug (unique identifier)
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` — Role description
    
</dd>
</dl>

<dl>
<dd>

**color:** `String` — Role color hex
    
</dd>
</dl>

<dl>
<dd>

**extended_data:** `Internal::Types::Hash[String, Object]` — Extended data
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Roles::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.roles.<a href="/lib/forum/roles/client.rb">get_a_role</a>(id) -> Forum::Roles::Types::GetRolesIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.roles.get_a_role(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Roles::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.roles.<a href="/lib/forum/roles/client.rb">delete_a_role</a>(id) -> Forum::Roles::Types::DeleteRolesIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.roles.delete_a_role(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Roles::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.roles.<a href="/lib/forum/roles/client.rb">update_a_role</a>(id, request) -> Forum::Roles::Types::PatchRolesIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.roles.update_a_role(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — Role name
    
</dd>
</dl>

<dl>
<dd>

**slug:** `String` — Role slug (unique identifier)
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` — Role description
    
</dd>
</dl>

<dl>
<dd>

**color:** `String` — Role color hex
    
</dd>
</dl>

<dl>
<dd>

**extended_data:** `Internal::Types::Hash[String, Object]` — Extended data
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Roles::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Reports
<details><summary><code>client.reports.<a href="/lib/forum/reports/client.rb">list_all_reports</a>() -> Forum::Reports::Types::GetReportsResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reports.list_all_reports();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**search:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Reports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/lib/forum/reports/client.rb">create_a_report</a>(request) -> Forum::Reports::Types::PostReportsResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reports.create_a_report(type: 'type');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**type:** `String` — Report type (e.g. spam, abuse)
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` — Reason for reporting
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — Reporter user ID (required for API key auth, ignored for JWT auth)
    
</dd>
</dl>

<dl>
<dd>

**reported_id:** `String` — ID of user being reported
    
</dd>
</dl>

<dl>
<dd>

**thread_id:** `String` — ID of thread being reported
    
</dd>
</dl>

<dl>
<dd>

**post_id:** `String` — ID of post being reported
    
</dd>
</dl>

<dl>
<dd>

**private_message_id:** `String` — ID of private message being reported
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Reports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/lib/forum/reports/client.rb">get_a_report</a>(id) -> Forum::Reports::Types::GetReportsIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reports.get_a_report(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Reports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/lib/forum/reports/client.rb">delete_a_report</a>(id) -> Forum::Reports::Types::DeleteReportsIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reports.delete_a_report(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Reports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Notifications
<details><summary><code>client.notifications.<a href="/lib/forum/notifications/client.rb">list_all_notifications</a>() -> Forum::Notifications::Types::GetNotificationsResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.notifications.list_all_notifications();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**search:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Notifications::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notifications.<a href="/lib/forum/notifications/client.rb">create_a_notification</a>(request) -> Forum::Notifications::Types::PostNotificationsResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.notifications.create_a_notification(
  user_id: 'userId',
  type: 'type'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**user_id:** `String` — Target user ID to receive notification (maps to userId)
    
</dd>
</dl>

<dl>
<dd>

**notifier_id:** `String` — User ID who triggered the notification (optional, defaults to authenticated user)
    
</dd>
</dl>

<dl>
<dd>

**type:** `String` — Notification type (e.g. mention, reply, follow)
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` — Notification text content
    
</dd>
</dl>

<dl>
<dd>

**thread_id:** `String` — Related thread ID
    
</dd>
</dl>

<dl>
<dd>

**post_id:** `String` — Related post ID
    
</dd>
</dl>

<dl>
<dd>

**private_message_id:** `String` — Related private message ID
    
</dd>
</dl>

<dl>
<dd>

**status:** `Forum::Notifications::Types::PostNotificationsRequestStatus` — Initial notification status
    
</dd>
</dl>

<dl>
<dd>

**extended_data:** `Internal::Types::Hash[String, Object]` — Additional notification data
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Notifications::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notifications.<a href="/lib/forum/notifications/client.rb">get_a_notification</a>(id) -> Forum::Notifications::Types::GetNotificationsIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.notifications.get_a_notification(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Notifications::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notifications.<a href="/lib/forum/notifications/client.rb">delete_a_notification</a>(id) -> Forum::Notifications::Types::DeleteNotificationsIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.notifications.delete_a_notification(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Notifications::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notifications.<a href="/lib/forum/notifications/client.rb">update_a_notification</a>(id, request) -> Forum::Notifications::Types::PatchNotificationsIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.notifications.update_a_notification(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `Forum::Notifications::Types::PatchNotificationsIDRequestStatus` — Notification status
    
</dd>
</dl>

<dl>
<dd>

**extended_data:** `Internal::Types::Hash[String, Object]` — Update extended data
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Notifications::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Webhooks
<details><summary><code>client.webhooks.<a href="/lib/forum/webhooks/client.rb">list_all_webhooks</a>() -> Forum::Webhooks::Types::GetWebhooksResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhooks.list_all_webhooks();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**search:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Webhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/lib/forum/webhooks/client.rb">create_a_webhook</a>(request) -> Forum::Webhooks::Types::PostWebhooksResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhooks.create_a_webhook(
  name: 'name',
  url: 'url',
  events: ['events']
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**name:** `String` — Webhook name
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — Target URL
    
</dd>
</dl>

<dl>
<dd>

**events:** `Internal::Types::Array[String]` — List of event types (e.g. post.created)
    
</dd>
</dl>

<dl>
<dd>

**secret:** `String` — Secret for signature verification (auto-generated if missing)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Webhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/lib/forum/webhooks/client.rb">get_a_webhook</a>(id) -> Forum::Webhooks::Types::GetWebhooksIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhooks.get_a_webhook(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Webhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/lib/forum/webhooks/client.rb">delete_a_webhook</a>(id) -> Forum::Webhooks::Types::DeleteWebhooksIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhooks.delete_a_webhook(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Webhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/lib/forum/webhooks/client.rb">list_webhook_deliveries</a>(id) -> Forum::Webhooks::Types::GetWebhooksIDDeliveriesResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhooks.list_webhook_deliveries(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Webhook ID
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `String` — Pagination cursor
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` — Items per page
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Webhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/lib/forum/webhooks/client.rb">get_a_delivery_from_webhook</a>(id, sub_id) -> Forum::Webhooks::Types::GetWebhooksIDDeliveriesSubIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhooks.get_a_delivery_from_webhook(
  id: 'id',
  sub_id: 'subId'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Webhook ID
    
</dd>
</dl>

<dl>
<dd>

**sub_id:** `String` — Delivery ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Webhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/lib/forum/webhooks/client.rb">delete_a_delivery_from_webhook</a>(id, sub_id) -> Forum::Webhooks::Types::DeleteWebhooksIDDeliveriesSubIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhooks.delete_a_delivery_from_webhook(
  id: 'id',
  sub_id: 'subId'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Webhook ID
    
</dd>
</dl>

<dl>
<dd>

**sub_id:** `String` — Delivery ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Webhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Integrations
<details><summary><code>client.integrations.<a href="/lib/forum/integrations/client.rb">list_all_integrations</a>() -> Forum::Integrations::Types::GetIntegrationsResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.integrations.list_all_integrations();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**search:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Integrations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.integrations.<a href="/lib/forum/integrations/client.rb">create_an_integration</a>(request) -> Forum::Integrations::Types::PostIntegrationsResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.integrations.create_an_integration(
  type: 'type',
  config: {}
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**type:** `String` — Integration type (e.g. slack, discord)
    
</dd>
</dl>

<dl>
<dd>

**config:** `Internal::Types::Hash[String, Object]` — JSON configuration
    
</dd>
</dl>

<dl>
<dd>

**enabled:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Integrations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.integrations.<a href="/lib/forum/integrations/client.rb">get_an_integration</a>(id) -> Forum::Integrations::Types::GetIntegrationsIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.integrations.get_an_integration(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Integrations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.integrations.<a href="/lib/forum/integrations/client.rb">delete_an_integration</a>(id) -> Forum::Integrations::Types::DeleteIntegrationsIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.integrations.delete_an_integration(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Integrations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.integrations.<a href="/lib/forum/integrations/client.rb">update_an_integration</a>(id, request) -> Forum::Integrations::Types::PatchIntegrationsIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.integrations.update_an_integration(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — Integration name
    
</dd>
</dl>

<dl>
<dd>

**config:** `Internal::Types::Hash[String, Object]` — JSON configuration (merged with existing)
    
</dd>
</dl>

<dl>
<dd>

**active:** `Internal::Types::Boolean` — Enable/disable integration
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::Integrations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## SsOs
<details><summary><code>client.ss_os.<a href="/lib/forum/ss_os/client.rb">list_all_ss_os</a>() -> Forum::SsOs::Types::GetSSOResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ss_os.list_all_ss_os();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**search:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::SsOs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ss_os.<a href="/lib/forum/ss_os/client.rb">create_an_sso</a>(request) -> Forum::SsOs::Types::PostSSOResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ss_os.create_an_sso(
  name: 'name',
  client_id: 'clientId',
  client_secret: 'clientSecret',
  issuer: 'issuer',
  authorization_endpoint: 'authorizationEndpoint',
  token_endpoint: 'tokenEndpoint',
  user_info_endpoint: 'userInfoEndpoint'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**name:** `String` — Provider name (e.g. Google)
    
</dd>
</dl>

<dl>
<dd>

**client_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**client_secret:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**issuer:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**authorization_endpoint:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**token_endpoint:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**user_info_endpoint:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::SsOs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ss_os.<a href="/lib/forum/ss_os/client.rb">get_an_sso</a>(id) -> Forum::SsOs::Types::GetSsoIdResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ss_os.get_an_sso(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::SsOs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ss_os.<a href="/lib/forum/ss_os/client.rb">delete_an_sso</a>(id) -> Forum::SsOs::Types::DeleteSsoIdResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ss_os.delete_an_sso(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::SsOs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ss_os.<a href="/lib/forum/ss_os/client.rb">update_an_sso</a>(id, request) -> Forum::SsOs::Types::PatchSsoIdResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ss_os.update_an_sso(id: 'id');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — Provider name
    
</dd>
</dl>

<dl>
<dd>

**domain:** `String` — Email domain to match
    
</dd>
</dl>

<dl>
<dd>

**client_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**client_secret:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**issuer:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**authorization_endpoint:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**token_endpoint:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**user_info_endpoint:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**active:** `Internal::Types::Boolean` — Enable/disable provider
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Forum::SsOs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>
