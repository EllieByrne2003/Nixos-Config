{ config, pkgs, ... }:

{
    services.hypridle = {
        enable = true;

        settings = {
            general = {
                after_sleep_cmd = "hyprctl dispatch dpms on";
                ignore_dbus_inhibit = false;
                lock_cmd = "hyprlock";
            };

            listener = [
                {
                    timeout = 300; # 5 minutes
                    on-timeout = "hyprlock";
                }
                {
                    timeout = 360; # 6 minutes
                    on-timeout = "hyprctl dispatch dpms off";
                    on-resume = "hyprctl dispatch dpms on";
                }
                {
                    timeout = 600; # 10 minutes
                    on-timeout = "systemctl suspend";
                }
            ];
        };
    };
}