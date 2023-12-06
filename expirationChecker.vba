'Checks if document dates are expired
=IF(
    AND(
        DATE(YEAR([Primary Training Cert Date]) + 1, MONTH([Primary Training Cert Date]), DAY([Primary Training Cert Date])) > NOW(),
        DATE(YEAR([Alternate Training Date]) + 1, MONTH([Alternate Training Date]), DAY([Alternate Training Date])) > NOW(),
        DATE(YEAR([Appointment Letter Date]) + 1, MONTH([Appointment Letter Date]), DAY([Appointment Letter Date])) > NOW(),
        DATE(YEAR([Hardware Inventory Date]) + 1, MONTH([Hardware Inventory Date]), DAY([Hardware Inventory Date])) > NOW()
    ),
    "ACTIVE",
    "FROZEN"
)