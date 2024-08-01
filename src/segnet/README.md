# How to run 
```bash
    ./segnet --network=<model> input.jpg output.jpg                  # overlay segmentation on original
    ./segnet --network=<model> --alpha=200 input.jpg output.jpg      # make the overlay less opaque
    ./segnet --network=<model> --visualize=mask input.jpg output.jpg # output the solid segmentation mask
    ./segnet --network=fcn-resnet18-cityscapes /ssd/dev/jetson-ai-labs/img/8_center.jpeg output.jpeg
    ./segnet --network=fcn-resnet18-cityscapes --alpha=200 --visualize=mask /ssd/dev/jetson-ai-labs/img/8_center.jpeg output.jpeg
```