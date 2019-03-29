<h1>Authentication & Authorization</h1>
<h2>What is authentication and authorization?</h2>

Authentication is a confirmation of user identity, while authorization determines whether you can access a particular resource.

<h2>What is Devise?</h2>

Devise is a popular authentication solution for Rails applications. It provides a full gamut of features, and can be configured to meet all, but the most unusual, requirements.
The Devise gem is built on top of Warden. Warden is a Rack application, which means that it runs as a separate and standalone module, and is (nearly always) executed before the chief Rails application is invoked.
Warden provides the cookie handling that verifies the identity of a logged in user via a (secure) session string, in which the id (primary key) of a particular user is somehow stored and disguised. Warden also provides a hook so your app can deal with users who aren’t currently logged in. These users will either have restricted access, or none at all, except, of course, to sign-in/sign-up pages.
Warden knows nothing about the existence of your Rails app. As a result, Warden does not provide helper methods, controller classes, views, configuration options and log in failure handling. These things are what Devise supplies.
Devise often interacts with Warden using Strategies. (a strategy is a design pattern in which an algorithm is encapsulated within a dedicated class, which implements a method with a commonly shared name. You change the class to vary the algorithm). The Strategies that Devise employs are for encrypting passwords, email confirmations, and for HTTP Authentication. If you need to extend or augment Devise, you can implement a customized Strategy class. But this is an advanced subject, for which there is usually little call.

<h2>What is Rolify and CanCanCan?</h2>
Rolify is Roles library which supporting scope on resource object without any authorization enforcement.
CanCanCan is an authorization library which restricts what resources a given user is allowed to access. All permissions are defined in a single location (the Ability class).

Tutorial: https://www.nopio.com/blog/authentication-authorization-rails/
