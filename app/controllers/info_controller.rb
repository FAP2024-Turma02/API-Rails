class InfoController < ProductsController
        def show
        shop_info = {
            name: "Rick Tecnology",
            color: "#483D8B",
            owner: "Ricardo José Mendonça Filho",
            department: "Loja de Hardware"
        }
        render json: shop_info
    end
end
