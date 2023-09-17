require "rails_helper"

RSpec.describe Board::ColumnComponent, type: :component do
  describe 'width css class' do
    it do
      step = Step.new(name: 'dummy', previous: nil)

      base_attrs = { step: step, items: { count: 0 } }
      expect(described_class.new(**base_attrs.merge(column_count: 1)).width).to eq 19.0
      expect(described_class.new(**base_attrs.merge(column_count: 2)).width).to eq 37.5
      expect(described_class.new(**base_attrs.merge(column_count: 3)).width).to eq 56.0
    end
  end
end
