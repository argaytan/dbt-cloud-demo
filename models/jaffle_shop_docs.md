{% docs order_status %}



- [x] Write the press release
- [ ] Update the website
- [ ] Contact the media 

# H1
## H2
### H3

**bold text**

*italicized text*

> blockquote this is just a quote

1. First item
2. Second item
3. Third item

---

- First item
- Second item
- Third item

 
```shell
$ dbt run --select [...] --defer --state path/to/artifacts
$ dbt test --select [...] --defer --state path/to/artifacts
```
 
 ```sql
 select
    id as customer_id,
    first_name,
    last_name

from RAW.jaffle_shop.customers
```

The events in this table are recorded by Snowplow and piped into the warehouse on an hourly basis. The following pages of the marketing site are tracked:
 - /
 - /about
 - /team
 - /contact-us

 Our dbt project heavily uses this suite of utility macros, especially:
- `surrogate_key`
- `test_equality`
- `pivot`
 
One of the following values:

| status         | definition                                       |
| -------------- | ------------------------------------------------ |
| placed         | Order placed, not yet shipped                    |
| shipped        | Order has been shipped, not yet been delivered   |
| completed      | Order has been received by customers             |
| return pending | Customer indicated they want to return this item |
| returned       | Item has been returned                           |

{% enddocs %}
