import sys
import pygame
from settings import Settings
from ship import Ship
#Module sys is used to provide a way to exit
#Module pygame handles low-level game element creation and manipulation
#Class Settings regulates all the setting objects

def run_game():
    """This the function of running the game"""
    pygame.init()   #Prepare for the setup of pygame module
    ai_settings = Settings()
    screen = pygame.display.set_mode((ai_settings.screen_width, ai_settings.screen_height))    #Set up the main screen
    pygame.display.set_caption("Alien Invasion")

    ship = Ship(screen)


    while True:     #Updating the game
        screen.fill(ai_settings.bg_color)
        ship.blitme()
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                sys.exit()

        pygame.display.flip()


run_game()