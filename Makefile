JFLAGS = -g
JC = javac

# Clear any default targets for building .class files from .java files; we
# will provide our own target entry to do this in this makefile.
# make has a set of default targets for different suffixes (like .c.o)
# Currently, clearing the default for .java.class is not necessary since
# make does not have a definition for this target, but later versions of
# make may, so it doesn't hurt to make sure that we clear any default
# definitions for these
.SUFFIXES: .java .class

.java.class:
	$(JC) $(JFLAGS) $*.java

CLASSES = \
		com/craftinginterpreters/lox/TokenType.java \
		com/craftinginterpreters/lox/Token.java \
		com/craftinginterpreters/lox/Scanner.java \
		com/craftinginterpreters/lox/Lox.java

default: classes

classes: $(CLASSES:.java=.class)

clean:
	$(RM) *.class
