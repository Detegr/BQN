gl        ← •Import "src/glyphs.bqn"
compile   ← gl •Import "src/c.bqn"  # Compiler: source → object code
runtime   ← •Import "rt.bqn"     # Runtime: primitives available to VM
explain   ← •BQN •FChars "src/ea.bqn"
code←⊑•args

out←runtime‿⟨⟩ Compile code
•Out¨out Explain code
