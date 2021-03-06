namespace :abilities do
  desc 'Update name_downcase column'
  task update_name_downcase: :environment do
    Ability.find_each { |ability| ability.update(name_downcase: ability.name.downcase) }
  end
end
