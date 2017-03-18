from splinter import Browser
browser = Browser()

def before_all(context):
    print("Executing before all")

def before_feature(context, feature):
    print("Before feature\n")

#Scenario level objects are popped off context when scenario exits
def before_scenario(context,scenario):
    browser.visit('http://google.com')
    print("Before scenario\n")

def after_scenario(context,scenario):
    browser.quit()
    print("After scenario\n")

def after_feature(context,feature):
    print("\nAfter feature")

def after_all(context):
    print("Executing after all")

