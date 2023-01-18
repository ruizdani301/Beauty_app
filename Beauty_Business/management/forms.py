from django import forms

class formulario(forms.Form):
    producto = forms.DecimalField(max_length = 100)
    cantidad = forms.DecimalField(max_length = 100)