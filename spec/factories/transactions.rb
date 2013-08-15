#
#
# == License:
# Fairnopoly - Fairnopoly is an open-source online marketplace.
# Copyright (C) 2013 Fairnopoly eG
#
# This file is part of Fairnopoly.
#
# Fairnopoly is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# Fairnopoly is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with Fairnopoly.  If not, see <http://www.gnu.org/licenses/>.
#
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :transaction, class: ['PreviewTransaction', 'FixedPriceTransaction', 'MultipleFixedPriceTransaction'].sample do
    article

    factory :super_transaction, class: 'Transaction' do
    end
    factory :preview_transaction, class: 'PreviewTransaction' do
    end
    factory :single_transaction, class: 'FixedPriceTransaction' do
    end
    factory :multiple_transaction, class: 'MultipleFixedPriceTransaction' do
    end

    factory :sold_transaction, class: 'FixedPriceTransaction' do
      buyer
      state 'sold'
    end
    #factory :auction_transaction, :class => 'AuctionTransaction' do
    #   expire    { (rand(10) + 2).hours.from_now }
    #end
  end

end
