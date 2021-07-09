#!/bin/bash -ex
#
# Copyright (C) 2021 HERE Europe B.V.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# SPDX-License-Identifier: Apache-2.0
# License-Filename: LICENSE

# Script will build olp-cpp-sdk-performance-tests for further execution with CPU/RAM metrics

mkdir -p build && cd build

cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo -DOLP_SDK_NO_EXCEPTION=ON -DBUILD_SHARED_LIBS=ON -DOLP_SDK_ENABLE_TESTING=ON ..

cmake --build . --target olp-cpp-sdk-performance-tests
