#
# Copyright (C) 2020 Lucid Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Branding stuffs
LUCID_VERSION_MAJ := 1
LUCID_VERSION_MIN := 0

LUCID_VERSION_CODE := Queen-Cake

LUCID_BUILD_NUMBER := LPBN.Q0202.$(shell date -u +%d).$(shell date -u +%m)001

ifndef LUCID_BUILDTYPE
  LUCID_BUILDTYPE := unofficial
endif

LUCID_VERSION := $(LUCID_VERSION_MAJ).$(LUCID_VERSION_MIN)-$(shell date -u +%Y%m%d-%H%M%S)-$(LUCID_BUILDTYPE)-$(LUCID_BUILD)
LUCID_DISPLAY_VERSION := $(LUCID_VERSION_MAJ).$(LUCID_VERSION_MIN)

# Branding Props
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.lucid.version=$(LUCID_DISPLAY_VERSION) \
    ro.lucid.version_code=$(LUCID_VERSION_CODE) \
    ro.lucid.device=$(LUCID_BUILD) \
    ro.lucid.display.version=$(LUCID_DISPLAY_VERSION) \
    ro.lucid.releasetype=$(LUCID_BUILDTYPE) \
    ro.lucid.build=$(LUCID_BUILD_NUMBER)
