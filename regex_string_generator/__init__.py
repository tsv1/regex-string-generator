from blahblah import RegexGenerator, Random

__all__ = ("generate_string",)
__version__ = "0.0.1"


def generate_string(pattern: str) -> str:
    return RegexGenerator(Random()).generate(pattern)
