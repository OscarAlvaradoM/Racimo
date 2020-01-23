using PiGPIO #Librería para usar los GPIO de la Raspberry Pi

# Asignamos a una variable el número de pin GPIO que se usará
pin1 = 4
pin2 = 2

# Configurando la RPi que se utiliza.
p = Pi()

# Configurando los pines que queremos utilizar como entrada o salida
set_mode(p, pin1, PiGPIO.OUTPUT)
set_mode(p, pin2, PiGPIO.OUTPUT)

i = 1
try
    println("Entró")
    while i == 1

        # Se escribe sobre el pin que querramos las órdenes 
        # de encendido o apagado. Parecido a "digitalwrite"
        # de arduino

        PiGPIO.write(p, pin1, PiGPIO.ON)
        PiGPIO.write(p, pin2, PiGPIO.OFF)
        
        # Es un delay en que continua haciendo lo que se 
        # le había dicho que hiciera. 
        sleep(0.5)

        PiGPIO.write(p, pin1, PiGPIO.OFF)
        PiGPIO.write(p, pin2, PiGPIO.ON)
        sleep(0.5)
    end
finally
    println("Salió")
#    set_mode(p, pin1, PiGPIO.INPUT)
#    set_mode(p, pin2, PiGPIO.INPUT)
end