NOME = aula1

all: ${NOME}

${NOME}: ${NOME}.o
	cobc -x -o $@ $< -L/usr/local/lib -lcob

%.o: %.cob
	cobc -x -o $@ $<



