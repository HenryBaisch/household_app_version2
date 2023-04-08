# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
<div class="container">
    <div class="row">
        <div class="col-md-6 offset-md-3">
        <h1 class="my-4">Group Details</h1>

        <table class="table">
            <tbody>
            <tr>
                <th>Name</th>
                <td><%= @group.name %></td>
            </tr>
            <tr>
                <th>Created At</th>
                <td><%= @group.created_at.strftime("%Y-%m-%d %H:%M") %></td>
            </tr>
            <tr>
                <th>Updated At</th>
                <td><%= @group.updated_at.strftime("%Y-%m-%d %H:%M") %></td>
            </tr>
            </tbody>
        </table>

        <div class="my-3">
            <%= link_to 'Edit Group', edit_group_path(@group), class: 'btn btn-primary' %>
            <%= link_to 'New Expense', new_group_expense_path(@group), class: 'btn btn-primary my-3' %>
            <%= link_to 'Invite Users', search_users_path(group_id: @group.id), class: 'btn btn-primary my-3' %>

            <%= button_to 'Delete Group', group_path(@group), method: :delete, data: { confirm: 'Are you sure?' }, class: 'btn btn-danger' %>
        </div>

        <%= link_to 'Back to Groups', groups_path, class: 'btn btn-secondary' %>
        </div>
    </div>
</div>

<!-- Other content of the show.html.erb file -->
<!-- Other content -->

<h2>Group Members</h2>
<table class="table mt-4">
  <thead>
    <tr>
      <th>Email</th>
    </tr>
  </thead>
  <tbody>
    <% @group.members.each do |member| %>
      <tr>
        <td><%= member.email %></td>
      </tr>
    <% end %>
  </tbody>
</table>
