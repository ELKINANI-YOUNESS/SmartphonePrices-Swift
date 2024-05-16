

```markdown
# Smartphone Orders

Ce projet Swift permet de gérer des commandes de smartphones en utilisant un dictionnaire des prix et une classe `SmartphoneOrder`.

## Description

Le projet comprend :
- Un dictionnaire `smartphonePrices` contenant les prix de différents modèles de smartphones.
- Une classe `SmartphoneOrder` avec des attributs pour le modèle de smartphone, la quantité commandée, le nom du client, et un CIN optionnel.
- Des méthodes pour afficher les détails des commandes et calculer le coût total.

## Dictionnaire des prix des smartphones

```swift
let smartphonePrices: [String: Double] = [
    "iPhone 14": 999.99,
    "Samsung Galaxy S21": 849.99,
    "Google Pixel 6": 699.99,
    "OnePlus 9": 729.99
]
```

## Classe `SmartphoneOrder`

### Attributs
- `model`: String - Le modèle du smartphone.
- `quantity`: Int - La quantité commandée.
- `customerName`: String - Le nom du client.
- `customerCIN`: String? - Le CIN du client (optionnel).

### Initialiseur

```swift
init(model: String, quantity: Int, customerName: String, customerCIN: String? = nil)
```

### Méthodes

- `orderDetails()`: Affiche les détails de la commande.
- `totalCost() -> Double`: Calcule et retourne le coût total de la commande en utilisant le dictionnaire.

## Exemple d'utilisation

```swift
let order1 = SmartphoneOrder(model: "iPhone 14", quantity: 2, customerName: "Alice Dupont", customerCIN: "AB123456")
let order2 = SmartphoneOrder(model: "Samsung Galaxy S21", quantity: 1, customerName: "Bob Martin")

order1.orderDetails()
print("Total Cost: \(order1.totalCost())")

print("---")

order2.orderDetails()
print("Total Cost: \(order2.totalCost())")
```

## Sortie attendue

```
Customer Name: Alice Dupont
Customer CIN: AB123456
Model: iPhone 14
Quantity: 2
Total Cost: 1999.98
---
Customer Name: Bob Martin
Model: Samsung Galaxy S21
Quantity: 1
Total Cost: 849.99
```


## Contribuer

Les contributions sont les bienvenues ! Veuillez soumettre une pull request pour toute amélioration ou correction de bug.

