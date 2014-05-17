$ ->
  ($ 'form').on 'submit', (e) ->
    e.preventDefault()
    age = +$('#age').val()
    message = if age < 5
      "Tu serais pas un peu jeune toi ?!"
    else if age > 80
      "Ah oui mode vétéran là tout de même"
    else
      "Pas de souci Robert…"
    alert message
