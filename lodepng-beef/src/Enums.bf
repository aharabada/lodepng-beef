namespace LodePng
{
	/// The PNG color types (also used for raw image).
	public enum ColorType : int32
	{
		/// grayscale: 1,2,4,8,16 bit
		Grey = 0,
		/// RGB: 8,16 bit
		RGB = 2,
		/// palette: 1,2,4,8 bit
		Palette = 3,
		/// grayscale with alpha: 8,16 bit
		GreyAlpha = 4,
		/// RGB with alpha: 8,16 bit
		RGBA = 6,
		MaxOctetValue = 255
	}
}
