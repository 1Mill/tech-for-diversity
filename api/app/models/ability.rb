class Ability
	include CanCan::Ability

	def initialize(user)
		can :read, :all

		if user.present?
			can :manage, :all, :user_id => user.id
		end
	end

	def to_list
		rules.map do |rule|
			object = { actions: rule.actions, subject: rule.subjects.map{ |s| s.is_a?(Symbol) ? s : s.name } }

			object[:conditions] = rule.conditions unless rule.conditions.blank?

			object[:inverted] = true unless rule.base_behavior

			object
		end
	end
end
