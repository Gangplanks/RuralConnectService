class Scheme < ActiveRecord::Base

	def self.filter(params)
		occupation_matched_schemes = Scheme.where(beneficiaries: params[:beneficiaries])
		age_matched_schemes = filter_by_age(occupation_matched_schemes, params[:age_eligible])
		income_macthed_schemes = filter_by_income(age_matched_schemes, params[:income_eligible])
		community_matched_schemes = filter_by_community(income_macthed_schemes, params[:community_eligible])
		matched_schemes = build_schemes_response(community_matched_schemes)
	end

	def self.fetch_by_category(params)
		scheme_names = Array.new
		schemes = Scheme.where(beneficiaries: params[:beneficiaries])
		schemes.each do |scheme|
			scheme_names.push(scheme.name)
		end
		scheme_names.join(". ")
	end

	private
	def self.filter_by_age(schemes, age)
		age_matched_schemes = Array.new
		schemes.each do |scheme|
			if(scheme.age_eligible == '-' || scheme.age_eligible == age)
				age_matched_schemes.push(scheme)
			end
		end
		age_matched_schemes
	end

	def self.filter_by_income(schemes, income)
		income_macthed_schemes = Array.new
		schemes.each do |scheme|
			if(scheme.income_eligible == '-' || scheme.income_eligible == income)
				income_macthed_schemes.push(scheme)
			end
		end
		income_macthed_schemes
	end

	def self.filter_by_community(schemes, community)
		community_macthed_schemes = Array.new
		schemes.each do |scheme|
			if(scheme.community_eligible == '-' || scheme.community_eligible == community)
				community_macthed_schemes.push(scheme)
			end
		end
		community_macthed_schemes
	end

	def self.build_schemes_response(schemes)
		matched_schemes = Array.new
		schemes.each do |scheme|
			category = Category.where(name: scheme.beneficiaries)
			matched_scheme = {id: scheme.id, name: scheme.name, icon: category[0][:image_name]}
			matched_schemes.push(matched_scheme)
		end
		matched_schemes
	end
end