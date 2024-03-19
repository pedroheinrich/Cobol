       
       IDENTIFICATION DIVISION.
       PROGRAM-ID. aula1.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
       01 SIM-OU-NAO PIC X.
       01 NUM1 PIC 9(3).
       01 NUM2 PIC 9(3).
       01 RESULTADO PIC 9(3).

       PROCEDURE DIVISION.
       
       PERGUNTA.
           PERFORM CONTINUACAO.
           
           IF SIM-OU-NAO = "N" OR SIM-OU-NAO = "n"
               GO TO FINALIZA-PROGRAMA.
           IF SIM-OU-NAO = "S" OR SIM-OU-NAO = "s"
               PERFORM PROGRAMA.

       FINALIZA-PROGRAMA.
           DISPLAY "Programa finalizado!!"
           STOP RUN.

       CONTINUACAO.
           DISPLAY "Executar o programa (S/N) ?"
           ACCEPT SIM-OU-NAO.
       
       PROGRAMA.
           DISPLAY "Digite o primeiro número: "
           ACCEPT NUM1.

           DISPLAY "Digite o segundo número: "
           ACCEPT NUM2.
           
           ADD NUM1 TO NUM2 GIVING RESULTADO.
           DISPLAY "O resultado é: " RESULTADO.
           PERFORM PERGUNTA.
           
       
       END PROGRAM aula1.
