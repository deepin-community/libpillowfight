import tempfile
import unittest

import PIL.Image

import pillowfight


class TestMasks(unittest.TestCase):
    def test_masks(self):
        with tempfile.NamedTemporaryFile(suffix='.jpg') as tmpfile:
            in_img = PIL.Image.open("tests/data/black_border_problem2.jpg")
            out_img = pillowfight.unpaper_masks(in_img)
            in_img.close()

            # beware of JPG compression
            self.assertEqual(out_img.mode, "RGB")
            out_img.save(tmpfile.name)
            out_img.close()
            out_img = PIL.Image.open(tmpfile.name)

        expected_img = PIL.Image.open(
            "tests/data/black_border_problem2_masks.jpg"
        )
        self.assertEqual(out_img.tobytes(), expected_img.tobytes())
        expected_img.close()
