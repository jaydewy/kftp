class EventValidator < ActiveModel::Validator
    def validate(record)
        # ensure that at most one Event has active = true
        unless test
            
        end
    end

    private

    def active_flag_valid?
        
    end
end