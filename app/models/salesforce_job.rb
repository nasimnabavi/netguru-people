class SalesforceJob < ActiveRecord::Base
  validates :operation, inclusion: { in: %w(delete insert upsert update) }
  validates :content_type, inclusion: { in: %w(CSV JSON XML) }
  validates :state, inclusion: { in: %w(open closed) }
end
