#!/usr/bin/env python3
"""
Auth Feature Migration Script
Migrates auth-related features from layer-based to feature-based architecture
"""

import os
import json
import shutil
import subprocess
import re
from pathlib import Path
from typing import Dict, List, Tuple, Set
import argparse
from datetime import datetime

class AuthFeatureMigrator:
    def __init__(self, project_root: str, dry_run: bool = True):
        self.project_root = Path(project_root)
        self.lib_path = self.project_root / "lib"
        self.dry_run = dry_run
        self.backup_dir = self.project_root / f"backup_{datetime.now().strftime('%Y%m%d_%H%M%S')}"
        self.migration_log = []
        self.import_mappings = {}
        
        # Define file mappings
        self.file_mappings = self._define_file_mappings()
        
    def _define_file_mappings(self) -> Dict[str, str]:
        """Define source to destination mappings for all auth files"""
        mappings = {}
        
        # UI - Onboarding
        mappings.update({
            "lib/ui/on_boarding/on_boarding_page.dart": "lib/features/auth/ui/onboarding/onboarding_page.dart",
            "lib/ui/on_boarding/widgets/custom_dots_indicator.dart": "lib/features/auth/ui/onboarding/widgets/custom_dots_indicator.dart",
            "lib/ui/on_boarding/widgets/fixed_components.dart": "lib/features/auth/ui/onboarding/widgets/fixed_components.dart",
            "lib/ui/on_boarding/widgets/on_boarding_background.dart": "lib/features/auth/ui/onboarding/widgets/onboarding_background.dart",
            "lib/ui/on_boarding/widgets/on_boarding_content_page_view.dart": "lib/features/auth/ui/onboarding/widgets/onboarding_content_page_view.dart",
            "lib/ui/on_boarding/widgets/on_boarding_mobile_view.dart": "lib/features/auth/ui/onboarding/widgets/onboarding_mobile_view.dart",
            "lib/ui/on_boarding/widgets/on_boarding_page_number_indicator.dart": "lib/features/auth/ui/onboarding/widgets/onboarding_page_number_indicator.dart",
            "lib/ui/on_boarding/widgets/on_boarding_skip_button.dart": "lib/features/auth/ui/onboarding/widgets/onboarding_skip_button.dart",
            "lib/ui/on_boarding/widgets/on_boarding_web_view.dart": "lib/features/auth/ui/onboarding/widgets/onboarding_web_view.dart",
            "lib/ui/on_boarding/widgets/sing_in_and_register_buttons.dart": "lib/features/auth/ui/onboarding/widgets/signin_and_register_buttons.dart",
        })
        
        # UI - Login
        mappings.update({
            "lib/ui/login/login_page.dart": "lib/features/auth/ui/login/login_page.dart",
            "lib/ui/login/form/login_form.dart": "lib/features/auth/ui/login/form/login_form.dart",
            "lib/ui/login/form/actions_buttons.dart": "lib/features/auth/ui/login/form/actions_buttons.dart",
            "lib/ui/login/form/inputs/identifier_input.dart": "lib/features/auth/ui/login/form/inputs/identifier_input.dart",
            "lib/ui/login/form/inputs/password_input.dart": "lib/features/auth/ui/login/form/inputs/password_input.dart",
            "lib/ui/login/widgets/login_background.dart": "lib/features/auth/ui/login/widgets/login_background.dart",
            "lib/ui/login/widgets/login_header.dart": "lib/features/auth/ui/login/widgets/login_header.dart",
            "lib/ui/login/widgets/login_layout.dart": "lib/features/auth/ui/login/widgets/login_layout.dart",
            "lib/ui/login/widgets/social_button.dart": "lib/features/auth/ui/login/widgets/social_button.dart",
        })
        
        # UI - Register
        mappings.update({
            "lib/ui/register/register_user_by_type_page.dart": "lib/features/auth/ui/register/register_user_by_type_page.dart",
            # Register widgets
            "lib/ui/register/widgets/close_register_button.dart": "lib/features/auth/ui/register/widgets/close_register_button.dart",
            "lib/ui/register/widgets/register_action_button.dart": "lib/features/auth/ui/register/widgets/register_action_button.dart",
            "lib/ui/register/widgets/register_artist_button.dart": "lib/features/auth/ui/register/widgets/register_artist_button.dart",
            "lib/ui/register/widgets/register_back_button.dart": "lib/features/auth/ui/register/widgets/register_back_button.dart",
            "lib/ui/register/widgets/register_custom_subtitle.dart": "lib/features/auth/ui/register/widgets/register_custom_subtitle.dart",
            "lib/ui/register/widgets/register_custom_title.dart": "lib/features/auth/ui/register/widgets/register_custom_title.dart",
            "lib/ui/register/widgets/register_customer_button.dart": "lib/features/auth/ui/register/widgets/register_customer_button.dart",
            "lib/ui/register/widgets/register_progress_indicator.dart": "lib/features/auth/ui/register/widgets/register_progress_indicator.dart",
            "lib/ui/register/widgets/register_user_by_type_button.dart": "lib/features/auth/ui/register/widgets/register_user_by_type_button.dart",
            "lib/ui/register/widgets/register_user_by_type_layout.dart": "lib/features/auth/ui/register/widgets/register_user_by_type_layout.dart",
            "lib/ui/register/widgets/register_user_by_type_subtitle.dart": "lib/features/auth/ui/register/widgets/register_user_by_type_subtitle.dart",
            "lib/ui/register/widgets/register_user_by_type_title.dart": "lib/features/auth/ui/register/widgets/register_user_by_type_title.dart",
        })
        
        # Register Artist
        artist_register_files = [
            ("lib/ui/register/register_artist/register_artist_page_1.dart", "lib/features/auth/ui/register/artist/register_artist_page_1.dart"),
            ("lib/ui/register/register_artist/register_artist_page_2.dart", "lib/features/auth/ui/register/artist/register_artist_page_2.dart"),
            ("lib/ui/register/register_artist/register_artist_page_3.dart", "lib/features/auth/ui/register/artist/register_artist_page_3.dart"),
            ("lib/ui/register/register_artist/register_artist_page_4.dart", "lib/features/auth/ui/register/artist/register_artist_page_4.dart"),
            ("lib/ui/register/register_artist/form/register_artist_form_page_1.dart", "lib/features/auth/ui/register/artist/form/register_artist_form_page_1.dart"),
        ]
        
        # Artist inputs
        artist_input_files = [
            "register_artist_address_extra_input.dart",
            "register_artist_address_input.dart",
            "register_artist_address_type_input.dart",
            "register_artist_confirm_password_input.dart",
            "register_artist_email_input.dart",
            "register_artist_last_name_input.dart",
            "register_artist_name_input.dart",
            "register_artist_password_input.dart",
            "register_artist_phone_number_input.dart",
            "register_artist_username_input.dart",
        ]
        
        for input_file in artist_input_files:
            src = f"lib/ui/register/register_artist/inputs/{input_file}"
            dst = f"lib/features/auth/ui/register/artist/inputs/{input_file}"
            artist_register_files.append((src, dst))
            
        mappings.update(dict(artist_register_files))
        
        # Register Customer
        customer_register_files = [
            ("lib/ui/register/register_customer/register_customer_page_1.dart", "lib/features/auth/ui/register/customer/register_customer_page_1.dart"),
            ("lib/ui/register/register_customer/register_customer_page_2.dart", "lib/features/auth/ui/register/customer/register_customer_page_2.dart"),
            ("lib/ui/register/register_customer/register_customer_page_3.dart", "lib/features/auth/ui/register/customer/register_customer_page_3.dart"),
        ]
        
        # Customer inputs
        customer_input_files = [
            "register_customer_confirm_password_input.dart",
            "register_customer_email_input.dart",
            "register_customer_last_name_input.dart",
            "register_customer_name_input.dart",
            "register_customer_password_input.dart",
            "register_customer_phone_number_input.dart",
        ]
        
        for input_file in customer_input_files:
            src = f"lib/ui/register/register_customer/inputs/{input_file}"
            dst = f"lib/features/auth/ui/register/customer/inputs/{input_file}"
            customer_register_files.append((src, dst))
            
        mappings.update(dict(customer_register_files))
        
        # Password Recovery
        mappings.update({
            "lib/ui/password_recovery/password_recovery_page.dart": "lib/features/auth/ui/password_recovery/password_recovery_page.dart",
            "lib/ui/password_recovery/bloc/password_recovery_bloc.dart": "lib/features/auth/bloc/password_recovery/password_recovery_bloc.dart",
            "lib/ui/password_recovery/bloc/password_recovery_event.dart": "lib/features/auth/bloc/password_recovery/password_recovery_event.dart",
            "lib/ui/password_recovery/bloc/password_recovery_state.dart": "lib/features/auth/bloc/password_recovery/password_recovery_state.dart",
        })
        
        # Account Reactivation
        mappings.update({
            "lib/ui/account_reactivation/account_reactivation_page.dart": "lib/features/auth/ui/account_reactivation/account_reactivation_page.dart",
            "lib/ui/account_reactivation/bloc/account_reactivation_bloc.dart": "lib/features/auth/bloc/account_reactivation/account_reactivation_bloc.dart",
            "lib/ui/account_reactivation/bloc/account_reactivation_event.dart": "lib/features/auth/bloc/account_reactivation/account_reactivation_event.dart",
            "lib/ui/account_reactivation/bloc/account_reactivation_state.dart": "lib/features/auth/bloc/account_reactivation/account_reactivation_state.dart",
        })
        
        # Domain - BLoCs
        mappings.update({
            # Auth BLoC
            "lib/domain/blocs/auth/auth_bloc.dart": "lib/features/auth/bloc/auth/auth_bloc.dart",
            "lib/domain/blocs/auth/auth_event.dart": "lib/features/auth/bloc/auth/auth_event.dart",
            "lib/domain/blocs/auth/auth_state.dart": "lib/features/auth/bloc/auth/auth_state.dart",
            "lib/domain/blocs/auth/auth_status.dart": "lib/features/auth/bloc/auth/auth_status.dart",
            
            # Login BLoC
            "lib/domain/blocs/login/login_bloc.dart": "lib/features/auth/bloc/login/login_bloc.dart",
            "lib/domain/blocs/login/login_event.dart": "lib/features/auth/bloc/login/login_event.dart",
            "lib/domain/blocs/login/login_state.dart": "lib/features/auth/bloc/login/login_state.dart",
            
            # OnBoarding BLoC
            "lib/domain/blocs/on_boarding/on_boarding_bloc.dart": "lib/features/auth/bloc/onboarding/onboarding_bloc.dart",
            "lib/domain/blocs/on_boarding/on_boarding_content.dart": "lib/features/auth/bloc/onboarding/onboarding_content.dart",
            "lib/domain/blocs/on_boarding/on_boarding_event.dart": "lib/features/auth/bloc/onboarding/onboarding_event.dart",
            "lib/domain/blocs/on_boarding/on_boarding_state.dart": "lib/features/auth/bloc/onboarding/onboarding_state.dart",
            
            # Register BLoCs
            "lib/domain/blocs/register/register_bloc.dart": "lib/features/auth/bloc/register/register_bloc.dart",
            "lib/domain/blocs/register/register_event.dart": "lib/features/auth/bloc/register/register_event.dart",
            "lib/domain/blocs/register/register_state.dart": "lib/features/auth/bloc/register/register_state.dart",
            
            # Artist Register BLoC
            "lib/domain/blocs/register/artist/register_artist_bloc.dart": "lib/features/auth/bloc/register/artist/register_artist_bloc.dart",
            "lib/domain/blocs/register/artist/register_artist_event.dart": "lib/features/auth/bloc/register/artist/register_artist_event.dart",
            "lib/domain/blocs/register/artist/register_artist_state.dart": "lib/features/auth/bloc/register/artist/register_artist_state.dart",
            
            # Customer Register BLoC
            "lib/domain/blocs/register/customer/register_customer_bloc.dart": "lib/features/auth/bloc/register/customer/register_customer_bloc.dart",
            "lib/domain/blocs/register/customer/register_customer_event.dart": "lib/features/auth/bloc/register/customer/register_customer_event.dart",
            "lib/domain/blocs/register/customer/register_customer_state.dart": "lib/features/auth/bloc/register/customer/register_customer_state.dart",
            
            # Cubits
            "lib/domain/cubits/login/hide_password_cubit.dart": "lib/features/auth/bloc/login/hide_password_cubit.dart",
            "lib/domain/cubits/login/hide_password_state.dart": "lib/features/auth/bloc/login/hide_password_state.dart",
        })
        
        # Models
        mappings.update({
            "lib/domain/models/login/login_type.dart": "lib/features/auth/models/login/login_type.dart",
            "lib/domain/models/login/social_media_type.dart": "lib/features/auth/models/login/social_media_type.dart",
            "lib/domain/models/user/registered_user_info.dart": "lib/features/auth/models/user/registered_user_info.dart",
            "lib/domain/models/user/user.dart": "lib/features/auth/models/user/user.dart",
            "lib/domain/models/user/user_type.dart": "lib/features/auth/models/user/user_type.dart",
            # Session models are shared but we'll copy for now
            "lib/domain/models/session/session.dart": "lib/features/auth/models/session/session.dart",
        })
        
        # Services
        mappings.update({
            "lib/domain/services/auth/auth_service.dart": "lib/features/auth/services/auth_service.dart",
            "lib/domain/mixins/authentication_handler.dart": "lib/features/auth/mixins/authentication_handler.dart",
        })
        
        # Use Cases
        mappings.update({
            "lib/domain/usescases/auth/google_singin_usecase.dart": "lib/features/auth/usecases/google_signin_usecase.dart",
            "lib/domain/usescases/auth/login_usecase.dart": "lib/features/auth/usecases/login_usecase.dart",
            "lib/domain/usescases/auth/logout_usecase.dart": "lib/features/auth/usecases/logout_usecase.dart",
        })
        
        # Data Layer
        mappings.update({
            "lib/data/api/auth/api_auth_service.dart": "lib/features/auth/data/api/api_auth_service.dart",
            "lib/data/api/auth/dtos/login_request.dart": "lib/features/auth/data/api/dtos/login_request.dart",
            "lib/data/api/auth/dtos/login_response.dart": "lib/features/auth/data/api/dtos/login_response.dart",
            "lib/data/firebase/google_auth_service.dart": "lib/features/auth/data/firebase/google_auth_service.dart",
        })
        
        return mappings
    
    def _build_import_mappings(self):
        """Build import mappings based on file movements"""
        for src, dst in self.file_mappings.items():
            # Convert file paths to import paths
            src_import = src.replace("lib/", "package:inker_studio/").replace(".dart", "")
            dst_import = dst.replace("lib/", "package:inker_studio/").replace(".dart", "")
            self.import_mappings[src_import] = dst_import
            
        # Add directory-level mappings
        dir_mappings = {
            "package:inker_studio/ui/on_boarding": "package:inker_studio/features/auth/ui/onboarding",
            "package:inker_studio/ui/login": "package:inker_studio/features/auth/ui/login",
            "package:inker_studio/ui/register": "package:inker_studio/features/auth/ui/register",
            "package:inker_studio/ui/password_recovery": "package:inker_studio/features/auth/ui/password_recovery",
            "package:inker_studio/ui/account_reactivation": "package:inker_studio/features/auth/ui/account_reactivation",
            "package:inker_studio/domain/blocs/auth": "package:inker_studio/features/auth/bloc/auth",
            "package:inker_studio/domain/blocs/login": "package:inker_studio/features/auth/bloc/login",
            "package:inker_studio/domain/blocs/on_boarding": "package:inker_studio/features/auth/bloc/onboarding",
            "package:inker_studio/domain/blocs/register": "package:inker_studio/features/auth/bloc/register",
            "package:inker_studio/domain/cubits/login": "package:inker_studio/features/auth/bloc/login",
            "package:inker_studio/domain/models/login": "package:inker_studio/features/auth/models/login",
            "package:inker_studio/domain/models/user": "package:inker_studio/features/auth/models/user",
            "package:inker_studio/domain/models/session": "package:inker_studio/features/auth/models/session",
            "package:inker_studio/domain/services/auth": "package:inker_studio/features/auth/services",
            "package:inker_studio/domain/usescases/auth": "package:inker_studio/features/auth/usecases",
            "package:inker_studio/data/api/auth": "package:inker_studio/features/auth/data/api",
            "package:inker_studio/data/firebase/google_auth_service": "package:inker_studio/features/auth/data/firebase/google_auth_service",
            "package:inker_studio/domain/mixins/authentication_handler": "package:inker_studio/features/auth/mixins/authentication_handler",
        }
        self.import_mappings.update(dir_mappings)
    
    def _create_directories(self):
        """Create the new directory structure"""
        directories = [
            "lib/features/auth/ui/onboarding/widgets",
            "lib/features/auth/ui/login/form/inputs",
            "lib/features/auth/ui/login/widgets",
            "lib/features/auth/ui/register/artist/form",
            "lib/features/auth/ui/register/artist/inputs",
            "lib/features/auth/ui/register/customer/inputs",
            "lib/features/auth/ui/register/widgets",
            "lib/features/auth/ui/password_recovery",
            "lib/features/auth/ui/account_reactivation/widgets",
            "lib/features/auth/bloc/auth",
            "lib/features/auth/bloc/login",
            "lib/features/auth/bloc/onboarding",
            "lib/features/auth/bloc/register/artist",
            "lib/features/auth/bloc/register/customer",
            "lib/features/auth/bloc/password_recovery",
            "lib/features/auth/bloc/account_reactivation",
            "lib/features/auth/models/login",
            "lib/features/auth/models/user",
            "lib/features/auth/models/session",
            "lib/features/auth/services",
            "lib/features/auth/usecases",
            "lib/features/auth/data/api/dtos",
            "lib/features/auth/data/firebase",
            "lib/features/auth/mixins",
        ]
        
        for dir_path in directories:
            full_path = self.project_root / dir_path
            if not self.dry_run:
                full_path.mkdir(parents=True, exist_ok=True)
            self.log(f"Created directory: {dir_path}")
    
    def _move_file(self, src: str, dst: str):
        """Move a file using git mv to preserve history"""
        src_path = self.project_root / src
        dst_path = self.project_root / dst
        
        if not src_path.exists():
            self.log(f"WARNING: Source file not found: {src}", level="WARNING")
            return False
            
        if self.dry_run:
            self.log(f"Would move: {src} -> {dst}")
            return True
            
        # Create destination directory
        dst_path.parent.mkdir(parents=True, exist_ok=True)
        
        # Use git mv if in a git repository
        try:
            subprocess.run(["git", "mv", str(src_path), str(dst_path)], 
                         cwd=self.project_root, check=True, capture_output=True)
            self.log(f"Moved (git): {src} -> {dst}")
        except subprocess.CalledProcessError:
            # Fall back to regular move
            shutil.move(str(src_path), str(dst_path))
            self.log(f"Moved: {src} -> {dst}")
            
        return True
    
    def _update_imports_in_file(self, file_path: Path) -> int:
        """Update imports in a single file"""
        if not file_path.exists() or file_path.suffix != '.dart':
            return 0
            
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
            
        original_content = content
        changes = 0
        
        # Sort mappings by length (longest first) to avoid partial replacements
        sorted_mappings = sorted(self.import_mappings.items(), 
                               key=lambda x: len(x[0]), reverse=True)
        
        for old_import, new_import in sorted_mappings:
            # Match import statements
            import_pattern = rf"import\s+['\"]({re.escape(old_import)}[^'\"]*)['\"]"
            matches = re.finditer(import_pattern, content)
            
            for match in reversed(list(matches)):
                old_path = match.group(1)
                new_path = old_path.replace(old_import, new_import)
                old_statement = match.group(0)
                new_statement = old_statement.replace(old_path, new_path)
                
                content = content[:match.start()] + new_statement + content[match.end():]
                changes += 1
        
        if content != original_content:
            if not self.dry_run:
                with open(file_path, 'w', encoding='utf-8') as f:
                    f.write(content)
            self.log(f"Updated {changes} imports in: {file_path.relative_to(self.project_root)}")
            
        return changes
    
    def _update_all_imports(self):
        """Update imports in all Dart files"""
        total_changes = 0
        dart_files = list(self.lib_path.rglob("*.dart"))
        
        self.log(f"Updating imports in {len(dart_files)} Dart files...")
        
        for dart_file in dart_files:
            if ".g.dart" in str(dart_file) or ".freezed.dart" in str(dart_file):
                continue
            changes = self._update_imports_in_file(dart_file)
            total_changes += changes
            
        self.log(f"Total import updates: {total_changes}")
    
    def _create_barrel_exports(self):
        """Create barrel export files for the auth feature"""
        exports = {
            "lib/features/auth/auth_feature.dart": [
                "// Auth Feature - Main barrel export file",
                "",
                "// UI Exports",
                "export 'ui/onboarding/onboarding_page.dart';",
                "export 'ui/login/login_page.dart';",
                "export 'ui/register/register_user_by_type_page.dart';",
                "export 'ui/password_recovery/password_recovery_page.dart';",
                "export 'ui/account_reactivation/account_reactivation_page.dart';",
                "",
                "// BLoC Exports",
                "export 'bloc/auth/auth_bloc.dart';",
                "export 'bloc/login/login_bloc.dart';",
                "export 'bloc/onboarding/onboarding_bloc.dart';",
                "export 'bloc/register/register_bloc.dart';",
                "",
                "// Model Exports",
                "export 'models/user/user.dart';",
                "export 'models/login/login_type.dart';",
                "export 'models/session/session.dart';",
                "",
                "// Service Exports",
                "export 'services/auth_service.dart';",
                "",
                "// UseCase Exports",
                "export 'usecases/login_usecase.dart';",
                "export 'usecases/logout_usecase.dart';",
                "export 'usecases/google_signin_usecase.dart';",
            ]
        }
        
        for file_path, content_lines in exports.items():
            full_path = self.project_root / file_path
            content = "\n".join(content_lines) + "\n"
            
            if not self.dry_run:
                full_path.parent.mkdir(parents=True, exist_ok=True)
                with open(full_path, 'w', encoding='utf-8') as f:
                    f.write(content)
                    
            self.log(f"Created barrel export: {file_path}")
    
    def _validate_migration(self):
        """Validate the migration by checking for missing files and imports"""
        self.log("\nValidating migration...")
        issues = []
        
        # Check all files were moved
        for src in self.file_mappings.keys():
            src_path = self.project_root / src
            if src_path.exists():
                issues.append(f"Source file still exists: {src}")
                
        # Check all destination files exist
        for dst in self.file_mappings.values():
            dst_path = self.project_root / dst
            if not self.dry_run and not dst_path.exists():
                issues.append(f"Destination file missing: {dst}")
                
        if issues:
            self.log("Validation issues found:", level="WARNING")
            for issue in issues:
                self.log(f"  - {issue}", level="WARNING")
        else:
            self.log("Validation passed!")
            
        return len(issues) == 0
    
    def _save_migration_report(self):
        """Save a detailed migration report"""
        report = {
            "timestamp": datetime.now().isoformat(),
            "dry_run": self.dry_run,
            "file_mappings": self.file_mappings,
            "import_mappings": self.import_mappings,
            "log": self.migration_log
        }
        
        report_path = self.project_root / "migration_report.json"
        with open(report_path, 'w', encoding='utf-8') as f:
            json.dump(report, f, indent=2)
            
        self.log(f"Migration report saved to: {report_path}")
    
    def log(self, message: str, level: str = "INFO"):
        """Log a message"""
        timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        log_entry = f"[{timestamp}] [{level}] {message}"
        self.migration_log.append(log_entry)
        print(log_entry)
    
    def migrate(self):
        """Execute the migration"""
        self.log(f"Starting auth feature migration (dry_run={self.dry_run})")
        
        # Build import mappings
        self._build_import_mappings()
        
        # Step 1: Create backup
        if not self.dry_run:
            self.log(f"Creating backup at: {self.backup_dir}")
            shutil.copytree(self.lib_path, self.backup_dir, 
                          ignore=shutil.ignore_patterns('*.g.dart', '*.freezed.dart'))
        
        # Step 2: Create new directory structure
        self.log("\nCreating directory structure...")
        self._create_directories()
        
        # Step 3: Move files
        self.log("\nMoving files...")
        moved_count = 0
        for src, dst in self.file_mappings.items():
            if self._move_file(src, dst):
                moved_count += 1
                
        self.log(f"Moved {moved_count} files")
        
        # Step 4: Update imports
        self.log("\nUpdating imports...")
        self._update_all_imports()
        
        # Step 5: Create barrel exports
        self.log("\nCreating barrel exports...")
        self._create_barrel_exports()
        
        # Step 6: Clean up empty directories
        if not self.dry_run:
            self.log("\nCleaning up empty directories...")
            for dir_path in ["lib/ui/on_boarding", "lib/ui/login", "lib/ui/register",
                           "lib/domain/blocs/auth", "lib/domain/blocs/login", 
                           "lib/domain/blocs/on_boarding", "lib/domain/blocs/register",
                           "lib/domain/cubits/login", "lib/domain/services/auth",
                           "lib/domain/usescases/auth", "lib/domain/models/login",
                           "lib/data/api/auth"]:
                full_path = self.project_root / dir_path
                try:
                    if full_path.exists() and not any(full_path.iterdir()):
                        full_path.rmdir()
                        self.log(f"Removed empty directory: {dir_path}")
                except:
                    pass
        
        # Step 7: Validate
        self._validate_migration()
        
        # Step 8: Save report
        self._save_migration_report()
        
        self.log("\nMigration completed!")
        
        if self.dry_run:
            self.log("\nThis was a DRY RUN. No files were actually moved.")
            self.log("Run with --execute to perform the actual migration.")
        else:
            self.log("\nNext steps:")
            self.log("1. Run 'flutter analyze' to check for any issues")
            self.log("2. Run 'make build' to regenerate code")
            self.log("3. Test the application thoroughly")
            self.log("4. Commit the changes")

def main():
    parser = argparse.ArgumentParser(description="Migrate auth features to feature-based architecture")
    parser.add_argument("--execute", action="store_true", 
                       help="Execute the migration (default is dry-run)")
    parser.add_argument("--project-root", default=".", 
                       help="Project root directory (default: current directory)")
    
    args = parser.parse_args()
    
    migrator = AuthFeatureMigrator(
        project_root=args.project_root,
        dry_run=not args.execute
    )
    
    migrator.migrate()

if __name__ == "__main__":
    main()