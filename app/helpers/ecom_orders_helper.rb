module EcomOrdersHelper
    def sales_channel_icon(ecom_order)
        icon_str = case ecom_order.sales_channel
        when /amazon/
            '<i class="fab fa-amazon"></i>'
        when /ebay/
            '<i class="fab fa-ebay"></i>'
        else
            '<i class="fas fa-question-circle"></i>'
        end

        icon_str.html_safe
    end

    def order_status_icon(ecom_order)
        icon_str = case ecom_order.status
        when /confirmed/
            '<i class="fas fa-money-bill-wave text-info"></i>'
        when /shipped/
            '<i class="fas fa-shipping-fast text-primary"></i>'
        when /delivered/
            '<i class="fas fa-truck-loading text-success"></i>'
        else
            '<i class="fas fa-question-circle"></i>'
        end

        icon_str.html_safe
    end
end
