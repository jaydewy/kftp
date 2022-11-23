class FeeValidator < ActiveModel::Validator
    def validate(record)
        # need to check that there is not another Fee with the same event_id and site_type_id
        unless fee_is_unique_wrt_event_sitetype(record) == 0
            record.errors.add(:site_type, :invalid, message: "This SiteType already has a Fee for this Event.")
        end
    end

    private

    def fee_is_unique_wrt_event_sitetype(record)
        fees = Fee.where(event_id: record.event_id).where(site_type_id: record.site_type_id).where.not(id: record.id)
        fees.length
    end
end