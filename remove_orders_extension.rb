# Uncomment this if you reference any of your controllers in activate
require_dependency 'application'

class RemoveOrdersExtension < Spree::Extension
  version "1.0"
  description "Adds the ability for admin to remove orders"
  url "http://yourwebsite.com/remove_orders"
  
  def activate
    # Attach a delete order method to the admin/order class
    # Currently orders deleted are permanently deleted from the database. 
    # TODO - Check if user has the correct user previlages (ie. admin) to call the function *might be irrelevant*
    #      - Should only enable during development/test ENV?
    #      - When users delete last order on pagination page, it should redirect to previous page, currently just shows nothing.
    #      - Consider adding a (all) or (none) checkbox selector link.
    #      - Refactor code to be a better fit for future releases. 
    Admin::OrdersController.class_eval do
      def destroy 
        if params[:order_ids]
          params[:order_ids].split(",").each do |order_id|
           Order.find(order_id).delete
          end
        end
        
        @orders = collection
        
        respond_to do |format|
          format.js {
            render :update do |page|
              page.select('.index tbody').each {|element| 
                element.update render(:partial => 'admin/orders/order_list', :orders => @orders)
                element.highlight
              }
              # TODO - find out why t() translation function doesn't work, akward en-US 
              page << "if($('notice') != null){"
              page.visual_effect :pulsate, 'notice', {:pulses => 1, :duration => 2}
              page << '}else{'
              page.insert_html :top , 'content', "<div class='flash notice' id='notice'>#{t('delete_orders_successful')}</div>"
              page << '}'
            end
          }
        end
      end 
    end
  end
end