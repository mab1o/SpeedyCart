package fr.epf.min1.speedycart.ui.activities

import android.os.Build
import android.os.Bundle
import android.widget.TextView
import androidx.annotation.RequiresApi
import androidx.appcompat.app.AppCompatActivity
import fr.epf.min1.speedycart.R
import fr.epf.min1.speedycart.data.OrderDTO
import fr.epf.min1.speedycart.data.Product
import fr.epf.min1.speedycart.data.getCompleteAddress
import fr.epf.min1.speedycart.data.getCompleteName
import fr.epf.min1.speedycart.ui.adapters.DELIVERY_EXTRA
import fr.epf.min1.speedycart.ui.fragments.EmptyProductMessageFragment
import fr.epf.min1.speedycart.ui.fragments.NavigationBarFragment
import fr.epf.min1.speedycart.ui.fragments.ProductListFragment

class DeliveryDetailsActivity : AppCompatActivity() {
    @RequiresApi(Build.VERSION_CODES.TIRAMISU)
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_delivery_details)

        // put right info on page
        setInfoOnPage()

        // init product list
        val products = intent.extras?.getParcelable(
            DELIVERY_EXTRA,
            OrderDTO::class.java
        )?.products?.map { it.product }
        if ((products != null)) initProducts(products)

        // put navBar
        if (savedInstanceState == null) { // check navbar not already created
            supportFragmentManager.beginTransaction()
                .replace(R.id.delivery_details_navbar_fragment_container, NavigationBarFragment())
                .commit()
        }
    }

    @RequiresApi(Build.VERSION_CODES.TIRAMISU)
    private fun setInfoOnPage() {
        val shopNameTextView = findViewById<TextView>(R.id.delivery_details_shop_name_textview)
        val clientNameTextView = findViewById<TextView>(R.id.delivery_details_client_name_textview)
        val shopAddressTextView =
            findViewById<TextView>(R.id.delivery_details_shop_address_textview)
        val salaryTextView = findViewById<TextView>(R.id.delivery_details_salary_textview)

        intent.extras?.apply {
            val orderDTO = this.getParcelable(DELIVERY_EXTRA, OrderDTO::class.java)

            orderDTO?.apply {
                val product = this.products[0].product
                val shop = product.shop
                shopNameTextView.text = shop.name
                shopAddressTextView.text = shop.getCompleteAddress()
                clientNameTextView.text = this.order.client.getCompleteName()
                salaryTextView.text =
                    "Remuneration : " + String.format("%.2f", this.order.delivery.fee / 20) + " €"
            }
        }
    }

    private fun initProducts(productList: List<Product>) {
        if (productList.isEmpty()) {
            supportFragmentManager.beginTransaction()
                .replace(
                    R.id.delivery_details_screen_fragment_container,
                    EmptyProductMessageFragment()
                )
                .commit()
        } else {
            val fragment = ProductListFragment()
            supportFragmentManager.beginTransaction()
                .replace(R.id.delivery_details_screen_fragment_container, fragment)
                .commit()
            fragment.setProductList(productList)
        }
    }
}