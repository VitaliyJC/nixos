{
  disko.devices = {
    disk = {
      sda = {
        type = "disk";
        device = "/dev/sda";
        content = {
          type = "gpt";
          partitions = {
            efi = {
              size = "500M";
              type = "EF00";
              content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
              };
            };

            swap = {
              size = "8G";
              type = "8200";
              content = {
                type = "swap";
              };
            };

            root = {
              size = "100%";
              type = "8300";
              content = {
                type = "btrfs";
                extraArgs = [ "-f" ];
                subvolumes = {
                  "/@root" = {
                    mountpoint = "/";
                  };
                  "/@nix" = {
                    mountpoint = "/nix";
                  };
                  "/@var" = {
                    mountpoint = "/var";
                  };
                  "/@docker" = {
                    mountpoint = "/var/lib/docker";
                  };
                  "/@home" = {
                    mountpoint = "/home";
                  };
                };
              };
            };
          };
        };
      };

      sdb = {
        type = "disk";
        device = "/dev/sdb";
        content = {
          type = "gpt";
          partitions = {
            video = {
              size = "100%";
              type = "8300";
              content = {
                type = "filesystem";
                format = "ext4";
                mountpoint = "/mnt/video";
              };
            };
          };
        };
      };
    };
  };
}
