# DotVue

Implement `.vue` single-file component with server-side ViewModel in a `.ascx` file.


```HTML
<script runat="server">

    public class LoginVM : ViewModel
    {
        public Username { get; set; }
        public Password { get; set; }
        public Message { get; set; }

        public void Login()
        {
            Message = AuthServie.Login(Username, Password);
        }
    }
    
</script>

<template>
    <div class="login-box">
        <label>Username</label>
        <input type="text" v-model="Username" />
        <label>Password</label>
        <input type="password" v-model="Password" />
        <button @click="Login()">Login</button>
        <a @click="Clear()">Clear</a>
        <div v-show="Message" class="alert">{{ Message }}</div>
    </div>
</template>

<style lang="less">
    @import "base.less";
    .login-box {
        border: 1px solid @line-color;
        button { display: block; }
        .alert { ... }
    }
</style>

<script>
    // Vue mixin (client only)
    return {
        methods: {
            Clear: function() {
               this.Username = "";
               this.Password = "";
            }
        }
    }
</script>
```

# Features

- Server based ViewModel with attributes decorations: methods, watchs and props
- Render in `.ascx` or `.vue` file in a single javascript Vue component
- Bootstrap and discover all components
- Support custom tag compiler (like LESS for style or TypeScript)


# TODO

- Support 2 ways to client script:
```
    <script> (render before vue {..}, to create custom methods)
    <script mixin> (x1)
```   
   
- VueList<T> : IList<T> (capture changes)    
    - Add(T item)
    - Set(int index, Action<T> fn)
    - Remove(int index)
    - Length
    
- Support to external "src" in tags
