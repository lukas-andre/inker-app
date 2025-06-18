#!/bin/bash

# Script to detect image_picker usage patterns that need web compatibility updates

echo "=== Image Picker Web Compatibility Detection Script ==="
echo "Finding all patterns that need updates for web support..."
echo ""

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Create results directory
mkdir -p web_migration_results

# Function to search and save results
search_pattern() {
    local pattern="$1"
    local description="$2"
    local output_file="$3"
    
    echo -e "${BLUE}Searching for: ${description}${NC}"
    echo "Pattern: ${pattern}"
    
    # Use rg (ripgrep) for fast searching
    rg -n --type dart "${pattern}" lib/ > "web_migration_results/${output_file}" 2>/dev/null || true
    
    local count=$(wc -l < "web_migration_results/${output_file}" | tr -d ' ')
    
    if [ "$count" -gt 0 ]; then
        echo -e "${RED}Found ${count} occurrences${NC}"
    else
        echo -e "${GREEN}No occurrences found${NC}"
    fi
    echo ""
}

# 1. Find all image_picker imports
echo -e "${YELLOW}=== 1. Image Picker Imports ===${NC}"
search_pattern "import.*image_picker" "image_picker imports" "01_imports.txt"

# 2. Find Image.file usage (needs web compatibility)
echo -e "${YELLOW}=== 2. Image.file Usage (Needs Web Compatibility) ===${NC}"
search_pattern "Image\.file\(" "Image.file() calls" "02_image_file.txt"

# 3. Find File() constructor with picked files
echo -e "${YELLOW}=== 3. File Constructor Usage ===${NC}"
search_pattern "File\(.*\.path\)" "File() with .path" "03_file_constructor.txt"

# 4. Find XFile usage
echo -e "${YELLOW}=== 4. XFile Usage ===${NC}"
search_pattern "XFile" "XFile references" "04_xfile_usage.txt"

# 5. Find .path property access
echo -e "${YELLOW}=== 5. Path Property Access ===${NC}"
search_pattern "\.path[^a-zA-Z]" ".path property access" "05_path_access.txt"

# 6. Find ImagePicker method calls
echo -e "${YELLOW}=== 6. ImagePicker Method Calls ===${NC}"
search_pattern "ImagePicker\(\)\." "ImagePicker method calls" "06_picker_methods.txt"

# 7. Find pickImage calls
echo -e "${YELLOW}=== 7. pickImage Calls ===${NC}"
search_pattern "pickImage\(" "pickImage calls" "07_pick_image.txt"

# 8. Find pickMultiImage calls
echo -e "${YELLOW}=== 8. pickMultiImage Calls ===${NC}"
search_pattern "pickMultiImage\(" "pickMultiImage calls" "08_pick_multi_image.txt"

# 9. Find getImage calls (deprecated pattern)
echo -e "${YELLOW}=== 9. getImage Calls (Deprecated) ===${NC}"
search_pattern "getImage\(" "getImage calls (deprecated)" "09_get_image.txt"

# 10. Find image upload patterns
echo -e "${YELLOW}=== 10. Image Upload Patterns ===${NC}"
search_pattern "upload.*[Ii]mage|[Ii]mage.*upload" "Image upload patterns" "10_upload_patterns.txt"

# 11. Find MultipartFile usage (often used for uploads)
echo -e "${YELLOW}=== 11. MultipartFile Usage ===${NC}"
search_pattern "MultipartFile" "MultipartFile usage" "11_multipart_file.txt"

# 12. Find FormData usage
echo -e "${YELLOW}=== 12. FormData Usage ===${NC}"
search_pattern "FormData" "FormData usage" "12_form_data.txt"

# Generate summary report
echo -e "${YELLOW}=== Generating Summary Report ===${NC}"

cat > web_migration_results/SUMMARY.md << EOF
# Image Picker Web Migration - Detection Results

Generated on: $(date)

## Summary of Findings

EOF

# Add statistics to summary
for file in web_migration_results/*.txt; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        count=$(wc -l < "$file" | tr -d ' ')
        if [ "$count" -gt 0 ]; then
            echo "- **${filename%.txt}**: ${count} occurrences" >> web_migration_results/SUMMARY.md
        fi
    fi
done

echo "" >> web_migration_results/SUMMARY.md
echo "## Files Requiring Updates" >> web_migration_results/SUMMARY.md
echo "" >> web_migration_results/SUMMARY.md

# List unique files that need updates
echo "### Priority 1: Image Display (Image.file usage)" >> web_migration_results/SUMMARY.md
if [ -f "web_migration_results/02_image_file.txt" ] && [ -s "web_migration_results/02_image_file.txt" ]; then
    awk -F: '{print "- " $1 " (line " $2 ")"}' web_migration_results/02_image_file.txt | sort -u >> web_migration_results/SUMMARY.md
fi

echo "" >> web_migration_results/SUMMARY.md
echo "### Priority 2: File Constructor Usage" >> web_migration_results/SUMMARY.md
if [ -f "web_migration_results/03_file_constructor.txt" ] && [ -s "web_migration_results/03_file_constructor.txt" ]; then
    awk -F: '{print "- " $1 " (line " $2 ")"}' web_migration_results/03_file_constructor.txt | sort -u >> web_migration_results/SUMMARY.md
fi

echo "" >> web_migration_results/SUMMARY.md
echo "### All Affected Files" >> web_migration_results/SUMMARY.md
cat web_migration_results/*.txt | awk -F: '{print $1}' | sort -u | while read -r file; do
    echo "- $file" >> web_migration_results/SUMMARY.md
done

echo -e "${GREEN}=== Detection Complete ===${NC}"
echo "Results saved in: web_migration_results/"
echo "Summary report: web_migration_results/SUMMARY.md"
echo ""
echo "Next steps:"
echo "1. Review web_migration_results/SUMMARY.md"
echo "2. Start with Priority 1 files (Image.file usage)"
echo "3. Update each file to support web platform"