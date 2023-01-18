# Beauty_Business_DJ
Beauty_Business_DJ

Tareas:

* agregar la venta al recorrido de los stocks OK
* terminar manejo de errores en el html y jinja
* agregar nro de factura
* limitar precios de ventas

dbdiagram.io


products_available = (Stock.objects.values('product_id_id').annotate(total=Sum('amount'), price=Max('sales_price')).order_by())
    print(Stock.objects.filter(amount__gt = 0).values('product_id_id').annotate(total=Sum('amount'), price=Max('sales_price')).order_by().query)