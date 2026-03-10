"""Cálculo del punto de equilibrio en unidades.

Fórmula:
    Q = CF / (PVU - CVU)

donde:
- CF: costos fijos totales
- PVU: precio de venta unitario
- CVU: costo variable unitario
"""


def calcular_punto_equilibrio(cf: float, pvu: float, cvu: float) -> float:
    """Devuelve la cantidad de unidades para alcanzar el punto de equilibrio."""
    margen_contribucion = pvu - cvu
    if margen_contribucion <= 0:
        raise ValueError(
            "El PVU debe ser mayor que el CVU para calcular un punto de equilibrio válido."
        )
    return cf / margen_contribucion


def main() -> None:
    print("=== Calculadora de Punto de Equilibrio (unidades) ===")
    cf = float(input("Ingrese los costos fijos totales (CF): "))
    pvu = float(input("Ingrese el precio de venta unitario (PVU): "))
    cvu = float(input("Ingrese el costo variable unitario (CVU): "))

    q = calcular_punto_equilibrio(cf, pvu, cvu)
    print(f"\nUnidades a vender para estar en equilibrio: {q:.2f}")


if __name__ == "__main__":
    main()
