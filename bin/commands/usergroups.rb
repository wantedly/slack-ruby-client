# This file was auto-generated by lib/slack/web/api/tasks/generate.rake

desc 'Usergroups methods.'
command 'usergroups' do |g|
  g.desc 'This method is used to create a user group.'
  g.long_desc %( This method is used to create a user group. )
  g.command 'create' do |c|
    c.flag 'name', desc: 'A name for the user group. Must be unique among user groups.'
    c.flag 'handle', desc: 'A mention handle. Must be unique among channels, users and user groups.'
    c.flag 'description', desc: 'A short description of the user group.'
    c.flag 'channels', desc: 'A comma separated string of encoded channel IDs for which the user group uses as a default.'
    c.flag 'include_count', desc: 'Include the number of users in each user group.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.usergroups_create(options))
    end
  end

  g.desc 'This method disables an existing user group.'
  g.long_desc %( This method disables an existing user group. )
  g.command 'disable' do |c|
    c.flag 'usergroup', desc: 'The encoded ID of the user group to disable.'
    c.flag 'include_count', desc: 'Include the number of users in the user group.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.usergroups_disable(options))
    end
  end

  g.desc 'This method enables a user group which was previously disabled.'
  g.long_desc %( This method enables a user group which was previously disabled. )
  g.command 'enable' do |c|
    c.flag 'usergroup', desc: 'The encoded ID of the user group to enable.'
    c.flag 'include_count', desc: 'Include the number of users in the user group.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.usergroups_enable(options))
    end
  end

  g.desc 'This method returns a list of all user groups in the team. This can optionally include disabled user groups.'
  g.long_desc %( This method returns a list of all user groups in the team. This can optionally include disabled user groups. )
  g.command 'list' do |c|
    c.flag 'include_disabled', desc: 'Include disabled user groups.'
    c.flag 'include_count', desc: 'Include the number of users in each user group.'
    c.flag 'include_users', desc: 'Include the list of users for each user group.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.usergroups_list(options))
    end
  end

  g.desc 'This method updates the properties of an existing user group.'
  g.long_desc %( This method updates the properties of an existing user group. )
  g.command 'update' do |c|
    c.flag 'usergroup', desc: 'The encoded ID of the user group to update.'
    c.flag 'name', desc: 'A name for the user group. Must be unique among user groups.'
    c.flag 'handle', desc: 'A mention handle. Must be unique among channels, users and user groups.'
    c.flag 'description', desc: 'A short description of the user group.'
    c.flag 'channels', desc: 'A comma separated string of encoded channel IDs for which the user group uses as a default.'
    c.flag 'include_count', desc: 'Include the number of users in the user group.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.usergroups_update(options))
    end
  end

  g.desc 'This method updates the list of users that belong to a user group. This method replaces all users in a user group with the list of users provided in the users parameter.'
  g.long_desc %( This method updates the list of users that belong to a user group. This method replaces all users in a user group with the list of users provided in the users parameter. )
  g.command 'users' do |c|
    c.flag 'usergroup', desc: 'The encoded ID of the user group to update.'
    c.flag 'users', desc: 'A comma separated string of encoded user IDs that represent the entire list of users for the user group.'
    c.flag 'include_count', desc: 'Include the number of users in the user group.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.usergroups_users(options))
    end
  end
end
