# open file change name of file
myFile = open('./ventas_slp_script.sql','w+')
from random import randint
from datetime import timedelta, date

monto = [
    '180',
    '110',
    '90',
    '320',
    '80',
    '160',
    '95',
    '270',
    '92',
    '260',
    '100',
    '240'
]

producto_180 = [
    ['1', '2']
]

producto_110 = [
    ['1', '8', '8'],
    ['1', '7', '9'],
    ['1', '7', '7']
]

producto_90 = [
    ['5'],
    ['3']
]

producto_320 = [
    ['1', '1', '1', '1']
]

producto_80 = [
    ['1']
]

producto_160 = [
    ['1', '1']
]

producto_95 = [
    ['1', '6'],
    ['1', '7'],
    ['1', '8']
]

producto_270 = [
    ['3', '3', '5'] 
]

producto_92 = [
    ['1', '9']
]

producto_260 = [
    ['1', '5', '3']
]

producto_100 = [
    ['4']
]

producto_240 = [
    ['1', '1', '1']
]

# define start and end date
start_date = date(2017, 1, 1)
end_date = date(2017, 3, 26)

#function for calculating interval
def daterange(start_date, end_date):
    for n in range(int ((end_date - start_date).days)):
        yield start_date + timedelta(n)

# myFile.write('insert into e7venta (id, empleado_id, sucursal_id, cliente_id, monto) values (' + '1' + ', 2, 1, 6, 160);')

i = 1
accum = 0
for single_date in daterange(start_date, end_date):
    #day
    d = single_date.strftime("%Y/%m/%d")
    #number of sells in a day
    sells = randint(20, 50)
    accum += sells
    for s in range(1, sells):
        m = randint(0, len(monto) - 1)
        # empleado_id
        e_id = randint(1, 3)
        #cliente_id
        c_id = randint(1, 20)
        if monto[m] == '180':
            p = randint(0, len(producto_180) - 1)
            myFile.write("insert into e7venta (id, empleado_id, sucursal_id, cliente_id, monto, fecha_venta) values (" + str(i) + ", " + str(e_id) + ", 1, " + str(c_id) + ", 180, TO_DATE('" + d + "', 'YYYY/MM/DD'));\n")
            for x in producto_180[p]:
                myFile.write('insert into e7orden (id, producto_id, venta_id, fecha_creacion) values (seq_orden.nextval,' + x + ', ' + str(i) + ", TO_DATE('" + d + "', 'YYYY/MM/DD'));\n")
            myFile.write('\n')
            i += 1            
        elif monto[m] == '90':
            p = randint(0, len(producto_90) - 1)
            myFile.write("insert into e7venta (id, empleado_id, sucursal_id, cliente_id, monto, fecha_venta) values (" + str(i) + ", " + str(e_id) + ", 1, " + str(c_id) + ", 90, TO_DATE('" + d + "', 'YYYY/MM/DD'));\n")
            for x in producto_90[p]:
                myFile.write('insert into e7orden (id, producto_id, venta_id, fecha_creacion) values (seq_orden.nextval,' + x + ', ' + str(i) + ", TO_DATE('" + d + "', 'YYYY/MM/DD'));\n")
            myFile.write('\n')
            i += 1
        elif monto[m] == '110':
            p = randint(0, len(producto_110) - 1)
            myFile.write("insert into e7venta (id, empleado_id, sucursal_id, cliente_id, monto, fecha_venta) values (" + str(i) + ", " + str(e_id) + ", 1, " + str(c_id) + ", 110, TO_DATE('" + d + "', 'YYYY/MM/DD'));\n")
            for x in producto_110[p]:
                myFile.write('insert into e7orden (id, producto_id, venta_id, fecha_creacion) values (seq_orden.nextval,' + x + ', ' + str(i) + ", TO_DATE('" + d + "', 'YYYY/MM/DD'));\n")
            myFile.write('\n')
            i += 1
        elif monto[m] == '320':
            p = randint(0, len(producto_320) - 1)
            myFile.write("insert into e7venta (id, empleado_id, sucursal_id, cliente_id, monto, fecha_venta) values (" + str(i) + ", " + str(e_id) + ", 1, " + str(c_id) + ", 320, TO_DATE('" + d + "', 'YYYY/MM/DD'));\n")
            for x in producto_320[p]:
                myFile.write('insert into e7orden (id, producto_id, venta_id, fecha_creacion) values (seq_orden.nextval,' + x + ', ' + str(i) + ", TO_DATE('" + d + "', 'YYYY/MM/DD'));\n")
            myFile.write('\n')
            i += 1
        elif monto[m] == '80':
            p = randint(0, len(producto_80) - 1)
            myFile.write("insert into e7venta (id, empleado_id, sucursal_id, cliente_id, monto, fecha_venta) values (" + str(i) + ", " + str(e_id) + ", 1, " + str(c_id) + ", 80, TO_DATE('" + d + "', 'YYYY/MM/DD'));\n")
            for x in producto_80[p]:
                myFile.write('insert into e7orden (id, producto_id, venta_id, fecha_creacion) values (seq_orden.nextval,' + x + ', ' + str(i) + ", TO_DATE('" + d + "', 'YYYY/MM/DD'));\n")
            myFile.write('\n')
            i += 1
        elif monto[m] == '160':
            p = randint(0, len(producto_160) - 1)
            myFile.write("insert into e7venta (id, empleado_id, sucursal_id, cliente_id, monto, fecha_venta) values (" + str(i) + ", " + str(e_id) + ", 1, " + str(c_id) + ", 160, TO_DATE('" + d + "', 'YYYY/MM/DD'));\n")
            for x in producto_160[p]:
                myFile.write('insert into e7orden (id, producto_id, venta_id, fecha_creacion) values (seq_orden.nextval,' + x + ', ' + str(i) + ", TO_DATE('" + d + "', 'YYYY/MM/DD'));\n")
            myFile.write('\n')
            i += 1
        elif monto[m] == '95':
            p = randint(0, len(producto_95) - 1)
            myFile.write("insert into e7venta (id, empleado_id, sucursal_id, cliente_id, monto, fecha_venta) values (" + str(i) + ", " + str(e_id) + ", 1, " + str(c_id) + ", 95, TO_DATE('" + d + "', 'YYYY/MM/DD'));\n")
            for x in producto_95[p]:
                myFile.write('insert into e7orden (id, producto_id, venta_id, fecha_creacion) values (seq_orden.nextval,' + x + ', ' + str(i) + ", TO_DATE('" + d + "', 'YYYY/MM/DD'));\n")
            myFile.write('\n')
            i += 1
        elif monto[m] == '270':
            p = randint(0, len(producto_270) - 1)
            myFile.write("insert into e7venta (id, empleado_id, sucursal_id, cliente_id, monto, fecha_venta) values (" + str(i) + ", " + str(e_id) + ", 1, " + str(c_id) + ", 270, TO_DATE('" + d + "', 'YYYY/MM/DD'));\n")
            for x in producto_270[p]:
                myFile.write('insert into e7orden (id, producto_id, venta_id, fecha_creacion) values (seq_orden.nextval,' + x + ', ' + str(i) + ", TO_DATE('" + d + "', 'YYYY/MM/DD'));\n")
            myFile.write('\n')
            i += 1
        elif monto[m] == '92':
            p = randint(0, len(producto_92) - 1)
            myFile.write("insert into e7venta (id, empleado_id, sucursal_id, cliente_id, monto, fecha_venta) values (" + str(i) + ", " + str(e_id) + ", 1, " + str(c_id) + ", 92, TO_DATE('" + d + "', 'YYYY/MM/DD'));\n")
            for x in producto_92[p]:
                myFile.write('insert into e7orden (id, producto_id, venta_id, fecha_creacion) values (seq_orden.nextval,' + x + ', ' + str(i) + ", TO_DATE('" + d + "', 'YYYY/MM/DD'));\n")
            myFile.write('\n')
            i += 1
        elif monto[m] == '260':
            p = randint(0, len(producto_260) - 1)
            myFile.write("insert into e7venta (id, empleado_id, sucursal_id, cliente_id, monto, fecha_venta) values (" + str(i) + ", " + str(e_id) + ", 1, " + str(c_id) + ", 260, TO_DATE('" + d + "', 'YYYY/MM/DD'));\n")
            for x in producto_260[p]:
                myFile.write('insert into e7orden (id, producto_id, venta_id, fecha_creacion) values (seq_orden.nextval,' + x + ', ' + str(i) + ", TO_DATE('" + d + "', 'YYYY/MM/DD'));\n")
            myFile.write('\n')
            i += 1
        elif monto[m] == '100':
            p = randint(0, len(producto_100) - 1)
            myFile.write("insert into e7venta (id, empleado_id, sucursal_id, cliente_id, monto, fecha_venta) values (" + str(i) + ", " + str(e_id) + ", 1, " + str(c_id) + ", 100, TO_DATE('" + d + "', 'YYYY/MM/DD'));\n")
            for x in producto_100[p]:
                myFile.write('insert into e7orden (id, producto_id, venta_id, fecha_creacion) values (seq_orden.nextval,' + x + ', ' + str(i) + ", TO_DATE('" + d + "', 'YYYY/MM/DD'));\n")
            myFile.write('\n')
            i += 1
        elif monto[m] == '240':
            p = randint(0, len(producto_240) - 1)
            myFile.write("insert into e7venta (id, empleado_id, sucursal_id, cliente_id, monto, fecha_venta) values (" + str(i) + ", " + str(e_id) + ", 1, " + str(c_id) + ", 240, TO_DATE('" + d + "', 'YYYY/MM/DD'));\n")
            for x in producto_240[p]:
                myFile.write('insert into e7orden (id, producto_id, venta_id, fecha_creacion) values (seq_orden.nextval,' + x + ', ' + str(i) + ", TO_DATE('" + d + "', 'YYYY/MM/DD'));\n")
            myFile.write('\n')
            i += 1


print accum



