require "spec_helper"

describe Notifications do
  include EmailSpec::Helpers
  include EmailSpec::Matchers
  include Rails.application.routes.url_helpers

  let(:kid)        { kids(:jayda)   }
  let(:to)         { users(:arshia) }
  let(:pickup)     { users(:arshia) }
  let(:who_did_it) { users(:jr)     }

  subject { Notifications.pickup_set(to, pickup, kid, who_did_it) }

  it { should deliver_to(to)                       }
  it { should have_subject   /#{kid.name}/         }
  it { should have_body_text /#{kid.name}/         }
  it { should have_body_text /#{who_did_it.email}/ }
  it { should have_body_text /#{Date.today.to_s}/  }
end
