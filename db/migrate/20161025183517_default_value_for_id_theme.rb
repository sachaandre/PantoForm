class DefaultValueForIdTheme < ActiveRecord::Migration[5.0]
  def change
    change_column_default :themes, :id, from: nil, to: 100
  end
end
