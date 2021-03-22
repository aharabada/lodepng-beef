using System;
using System.Interop;
using System.Diagnostics;

namespace LodePng
{
	struct Color
	{
		public uint8 R, G, B, A;
	}

	class Program
	{
		static int Main(String[] args)
		{
			/*
			unsigned error;
			unsigned char* image = 0;
			unsigned width, height;

			error = lodepng_decode32_file(&image, &width, &height, filename);
			if(error) printf("error %u: %s\n", error, lodepng_error_text(error));

			/*use image here*/

			free(image);
			*/

			Color*[100000] images = .();

			bool load = true;

			for(int i = 0; true; i = ++i % 100000)
			{
				if(i == 0)
				{
					load = !load;
				}

				if(load)
				{
					c_uint error;
					Color* image = null;
					uint32 width = ?, height = ?;

					error = LodePng.Decode32File((uint8**)&images[i], &width, &height, "test.png");
					
					if(error != 0)
						Debug.WriteLine($"Error {error}: {LodePng.ErrorText(error)}");
				}
				else
				{
					LodePng.Free(images[i]);
					images[i] = null;
				}
			}

			c_uint error;
			Color* image = null;

			uint32 width = ?, height = ?;

			error = LodePng.Decode32File((uint8**)&image, &width, &height, "test.png");

			if(error != 0)
				Debug.WriteLine($"Error {error}: {LodePng.ErrorText(error)}");

			Color[4] color = *(Color[4]*)image;

			DecodeOneStep("test.png");
			

			LodePng.Free(image);

			Console.Read();

			return 0;
		}

		static void DecodeOneStep(char8* filename)
		{
			let error = LodePng.Decode32File<Color>(let image, let width, let height, filename);
			
			if(error != 0)
				Debug.WriteLine($"Error {error}: {LodePng.ErrorText(error)}");
			
			LodePng.Free(image);
		}
	}
}
