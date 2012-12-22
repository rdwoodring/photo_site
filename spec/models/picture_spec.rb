# == Schema Information
#
# Table name: pictures
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  description   :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  image         :string(255)
#  imagecategory :string(255)
#

require 'spec_helper'

describe Picture do
  pending "add some examples to (or delete) #{__FILE__}"
end
