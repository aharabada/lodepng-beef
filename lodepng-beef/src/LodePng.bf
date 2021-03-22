using System.Interop;
using System;

namespace LodePng
{
	public static class LodePng
	{
		// Memory Decode

		[LinkName("lodepng_decode_memory")]
		public static extern uint32 DecodeMemory(uint8** output, uint32* w, uint32* h, uint8* input, uint insize, ColorType colorType, uint32 bitdepth);

		[LinkName("lodepng_decode_memory")]
		public static extern uint32 DecodeMemory<T>(out T* output, out uint32 w, out uint32 h, uint8* input, uint insize, ColorType colorType, uint32 bitdepth) where T: struct;

		[LinkName("lodepng_decode32")]
		public static extern uint32 Decode32(uint8** output, uint32* w, uint32* h, uint8* input, uint insize);
		
		[LinkName("lodepng_decode32")]
		public static extern uint32 Decode32<T>(out T* output, out uint32 w, out uint32 h, uint8* input, uint insize) where T: struct;
		
		[LinkName("lodepng_decode24")]
		public static extern uint32 Decode24(uint8** output, uint32* w, uint32* h, uint8* input, uint insize);

		[LinkName("lodepng_decode24")]
		public static extern uint32 Decode24<T>(out T* output, out uint32 w, out uint32 h, uint8* input, uint insize) where T: struct;

		// File Decode

		[LinkName("lodepng_decode_file")]
		public static extern uint32 DecodeFile(uint8** output, uint32* w, uint32* h, char8* filename, ColorType colortype, uint32 bitdepth);
		
		[LinkName("lodepng_decode_file")]
		public static extern uint32 DecodeFile<T>(out T* output, out uint32 w, out uint32 h, char8* filename, ColorType colortype, uint32 bitdepth) where T: struct;
		
		[LinkName("lodepng_decode32_file")]
		public static extern uint32 Decode32File(uint8** output, uint32* w, uint32* h, char8* filename);

		[LinkName("lodepng_decode32_file")]
		public static extern uint32 Decode32File<T>(out T* output, out uint32 w, out uint32 h, char8* filename) where T: struct;
		
		[LinkName("lodepng_decode24_file")]
		public static extern uint32 Decode24File(uint8** output, uint32* w, uint32* h, char8* filename);

		[LinkName("lodepng_decode24_file")]
		public static extern uint32 Decode24File<T>(out T* output, out uint32 w, out uint32 h, char8* filename) where T: struct;

		// Memory Encode

		[LinkName("lodepng_encode_memory")]
		public static extern uint32 EncodeMemory(uint8** output, uint* outsize, uint8* image, uint32 w, uint32 h, ColorType colorType, uint32 bitdepth);

		[LinkName("lodepng_encode_memory")]
		public static extern uint32 EncodeMemory<T>(uint8** output, uint* outsize, T* image, uint32 w, uint32 h, ColorType colorType, uint32 bitdepth) where T: struct;

		[LinkName("lodepng_encode32")]
		public static extern uint32 Encode32(uint8** output, uint* outsize, uint8* image, uint32 w, uint32 h);

		[LinkName("lodepng_encode32")]
		public static extern uint32 Encode32<T>(uint8** output, uint* outsize, T* image, uint32 w, uint32 h) where T: struct;
		
		[LinkName("lodepng_encode24")]
		public static extern uint32 Encode24(uint8** output, uint* outsize, uint8* image, uint32 w, uint32 h);

		[LinkName("lodepng_encode24")]
		public static extern uint32 Encode24<T>(uint8** output, uint* outsize, T* image, uint32 w, uint32 h) where T: struct;

		// File Encode
		
		[LinkName("lodepng_encode_file")]
		public static extern uint32 EncodeFile(char8* filename, uint8* image, uint32 w, uint32 h, ColorType colorType, uint32 bitdepth);

		[LinkName("lodepng_encode_file")]
		public static extern uint32 EncodeFile<T>(char8* filename, T* image, uint32 w, uint32 h, ColorType colorType, uint32 bitdepth) where T: struct;

		[LinkName("lodepng_encode32_file")]
		public static extern uint32 Encode32File(char8* filename, uint8* image, uint32 w, uint32 h);

		[LinkName("lodepng_encode32_file")]
		public static extern uint32 Encode32File<T>(char8* filename, T* image, uint32 w, uint32 h) where T: struct;

		[LinkName("lodepng_encode24_file")]
		public static extern uint32 Encode24File(char8* filename, uint8* image, uint32 w, uint32 h);

		[LinkName("lodepng_encode24_file")]
		public static extern uint32 Encode24File<T>(char8* filename, T* image, uint32 w, uint32 h) where T: struct;

		[LinkName("lodepng_error_text")]
		public static extern char8* ErrorText(uint32 code);
		
		[LinkName("free")]
		public static extern void Free(void* ptr);

		// line: 262
	}
}
