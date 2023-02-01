# Beauty_Business_DJ
Beauty_Business_DJ

 ## Proyecto en construcción

Tareas:

* agregar la venta al recorrido de los stocks -> OK
* terminar manejo de errores en el html y jinja -> x
* agregar nro de factura -> x
* limitar precios de ventas -> x


products_available = (Stock.objects.values('product_id_id').annotate(total=Sum('amount'), price=Max('sales_price')).order_by())
print(Stock.objects.filter(amount__gt = 0).values('product_id_id').annotate(total=Sum('amount'), price=Max('sales_price')).order_by().query)