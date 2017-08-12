showPage : showPage.c libpage.so
	ghc $^ -no-hs-main -o $@

libpage.so : Page.hs
	ghc -dynamic -shared $< -o $@

.PHONY : clean run

clean :
	rm -f *.so *.hi *.o *.h showPage

run : showPage
	LD_LIBRARY_PATH=`pwd` ./$<
