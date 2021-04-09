# frozen_string_literal: true

module MyApp
  module PermissionSets
    class CustomUserManagement < Spree::PermissionSets::Base
      def activate!
        can :manage, Spree::User do |user|
          Spree::User.admin.exclude? user
        end
        can :manage, Spree::Role, name: "fulfillment"
      end
    end
  end
end
