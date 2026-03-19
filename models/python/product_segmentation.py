def model(dbt, session):

    df = dbt.ref("dim_products").to_pandas()

    def segment(price):
        if price > 50:
            return "high"
        elif price > 20:
            return "medium"
        else:
            return "low"

    df["price_segment"] = df["UNIT_PRICE"].apply(segment)

    return df
