mkdir -p cropped

for img in *.{jpg,jpeg,png,JPG,JPEG,PNG}; do
  [ -e "$img" ] || continue
  name="${img%.*}"

  convert "$img" -crop 50%x100% +repage "cropped/${name}_wall_%d.png"
done
