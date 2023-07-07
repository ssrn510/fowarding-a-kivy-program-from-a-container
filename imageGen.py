#import os
#os.environ['KIVY_WINDOW'] = 'pygame'
#os.environ['KIVY_TEXT'] = 'pygame'
import kivy
from builtins import print
from builtins import input
from kivy.app import App
from kivy.uix.label import Label
from kivy import Config

Config.set('graphics','multisamples','0')

class ImageApp(App):
    def build(self):
        return Label(text="Hello World!")
        
ImageApp().run()