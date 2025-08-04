#!/bin/bash

# Compile all Typst documents in the repository
echo "🚀 Compiling all Typst documents..."

files=(
    "math.typ"
    "english.typ" 
    "408.typ"
    "probability.typ"
    "linear-algebra.typ"
)

for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        echo "📝 Compiling $file..."
        if typst compile "$file"; then
            echo "✅ Successfully compiled $file"
        else
            echo "❌ Failed to compile $file"
        fi
    else
        echo "⚠️  File $file not found"
    fi
done

echo ""
echo "🎉 Compilation complete! Generated PDFs:"
ls -1 *.pdf 2>/dev/null | sed 's/^/  - /' || echo "  No PDF files found"
