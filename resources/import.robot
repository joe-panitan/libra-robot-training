*** Settings ***
Library    SeleniumLibrary

Variables   ../../resources/configs/${env}/env_config.yaml
#Resource  ../../resources/configs/${env}/env_config.yaml

*** Variables ***
${env}    alpha
${headless}    false