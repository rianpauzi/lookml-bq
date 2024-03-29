# The name of this view in Looker is "Training Data"
view: training_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `retail_banking.training_data` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Card Transactions Amount" in Explore.

  dimension: card_transactions_amount {
    type: number
    sql: ${TABLE}.card_transactions_amount ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_card_transactions_amount {
    type: sum
    sql: ${card_transactions_amount} ;;  }
  measure: average_card_transactions_amount {
    type: average
    sql: ${card_transactions_amount} ;;  }

  dimension: card_transactions_transaction_distance {
    type: number
    sql: ${TABLE}.card_transactions_transaction_distance ;;
  }

  dimension: card_transactions_transaction_hour_of_day {
    type: number
    sql: ${TABLE}.card_transactions_transaction_hour_of_day ;;
  }

  dimension: is_fraud {
    type: yesno
    sql: ${TABLE}.is_fraud ;;
  }

  dimension: trans_id {
    type: string
    sql: ${TABLE}.trans_id ;;
  }
  measure: count {
    type: count
  }
}
