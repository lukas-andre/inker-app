#!/usr/bin/env python3
"""
Analyze Auth Feature Dependencies
Identifies files that depend on auth features but aren't part of the migration
"""

import os
import re
from pathlib import Path
from typing import Set, Dict, List
import json

class AuthDependencyAnalyzer:
    def __init__(self, project_root: str):
        self.project_root = Path(project_root)
        self.lib_path = self.project_root / "lib"
        self.auth_imports = set()
        self.external_dependencies = {}
        
    def find_auth_imports(self):
        """Find all auth-related import patterns"""
        auth_patterns = [
            r"package:inker_studio/ui/on_boarding",
            r"package:inker_studio/ui/login",
            r"package:inker_studio/ui/register",
            r"package:inker_studio/ui/password_recovery",
            r"package:inker_studio/ui/account_reactivation",
            r"package:inker_studio/domain/blocs/auth",
            r"package:inker_studio/domain/blocs/login",
            r"package:inker_studio/domain/blocs/on_boarding",
            r"package:inker_studio/domain/blocs/register",
            r"package:inker_studio/domain/cubits/login",
            r"package:inker_studio/domain/models/login",
            r"package:inker_studio/domain/models/user",
            r"package:inker_studio/domain/services/auth",
            r"package:inker_studio/domain/usescases/auth",
            r"package:inker_studio/data/api/auth",
            r"package:inker_studio/data/firebase/google_auth_service",
            r"package:inker_studio/domain/mixins/authentication_handler",
        ]
        
        return auth_patterns
    
    def is_auth_file(self, file_path: Path) -> bool:
        """Check if a file is part of the auth feature"""
        auth_paths = [
            "lib/ui/on_boarding",
            "lib/ui/login", 
            "lib/ui/register",
            "lib/ui/password_recovery",
            "lib/ui/account_reactivation",
            "lib/domain/blocs/auth",
            "lib/domain/blocs/login",
            "lib/domain/blocs/on_boarding",
            "lib/domain/blocs/register",
            "lib/domain/cubits/login",
            "lib/domain/services/auth",
            "lib/domain/usescases/auth",
            "lib/domain/models/login",
            "lib/data/api/auth",
        ]
        
        relative_path = str(file_path.relative_to(self.project_root))
        return any(relative_path.startswith(path) for path in auth_paths)
    
    def analyze_file(self, file_path: Path) -> List[str]:
        """Analyze a single file for auth dependencies"""
        if not file_path.exists() or file_path.suffix != '.dart':
            return []
            
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
            
        auth_imports = []
        auth_patterns = self.find_auth_imports()
        
        for pattern in auth_patterns:
            matches = re.findall(rf"import\s+['\"]({pattern}[^'\"]*)['\"]", content)
            auth_imports.extend(matches)
            
        return auth_imports
    
    def analyze_dependencies(self):
        """Analyze all files for auth dependencies"""
        dart_files = list(self.lib_path.rglob("*.dart"))
        
        print(f"Analyzing {len(dart_files)} Dart files for auth dependencies...")
        
        for dart_file in dart_files:
            # Skip generated files
            if ".g.dart" in str(dart_file) or ".freezed.dart" in str(dart_file):
                continue
                
            # Skip auth files themselves
            if self.is_auth_file(dart_file):
                continue
                
            auth_imports = self.analyze_file(dart_file)
            
            if auth_imports:
                relative_path = str(dart_file.relative_to(self.project_root))
                self.external_dependencies[relative_path] = auth_imports
        
        return self.external_dependencies
    
    def generate_report(self):
        """Generate a detailed dependency report"""
        dependencies = self.analyze_dependencies()
        
        # Group by feature/area
        grouped = {}
        for file_path, imports in dependencies.items():
            # Determine the feature area
            if file_path.startswith("lib/ui/"):
                parts = file_path.split("/")
                if len(parts) > 2:
                    feature = parts[2]
                else:
                    feature = "other_ui"
            elif file_path.startswith("lib/domain/"):
                feature = "domain"
            elif file_path.startswith("lib/data/"):
                feature = "data"
            else:
                feature = "other"
                
            if feature not in grouped:
                grouped[feature] = {}
                
            grouped[feature][file_path] = imports
        
        # Generate report
        report = {
            "total_files_with_auth_dependencies": len(dependencies),
            "dependencies_by_feature": grouped,
            "summary": {
                feature: len(files) 
                for feature, files in grouped.items()
            }
        }
        
        # Save report
        report_path = self.project_root / "auth_dependencies_report.json"
        with open(report_path, 'w', encoding='utf-8') as f:
            json.dump(report, f, indent=2)
            
        # Print summary
        print(f"\nAuth Dependencies Summary:")
        print(f"Total files with auth dependencies: {report['total_files_with_auth_dependencies']}")
        print(f"\nBreakdown by feature:")
        for feature, count in report['summary'].items():
            print(f"  {feature}: {count} files")
            
        print(f"\nDetailed report saved to: {report_path}")
        
        # Print some examples
        print(f"\nExample files that will need import updates:")
        example_count = 0
        for feature, files in grouped.items():
            for file_path, imports in files.items():
                if example_count < 10:
                    print(f"  - {file_path}")
                    for imp in imports[:2]:  # Show first 2 imports
                        print(f"    → {imp}")
                    if len(imports) > 2:
                        print(f"    → ... and {len(imports) - 2} more")
                    example_count += 1
                else:
                    break
            if example_count >= 10:
                break

def main():
    import argparse
    
    parser = argparse.ArgumentParser(description="Analyze auth feature dependencies")
    parser.add_argument("--project-root", default=".", 
                       help="Project root directory (default: current directory)")
    
    args = parser.parse_args()
    
    analyzer = AuthDependencyAnalyzer(project_root=args.project_root)
    analyzer.generate_report()

if __name__ == "__main__":
    main()