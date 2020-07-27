@echo off
REM ----------------------------------------------------------------------------
REM Copyright 2020 ARM Limited or its affiliates
REM
REM SPDX-License-Identifier: Apache-2.0
REM
REM Licensed under the Apache License, Version 2.0 (the "License");
REM you may not use this file except in compliance with the License.
REM You may obtain a copy of the License at
REM
REM     http://www.apache.org/licenses/LICENSE-2.0
REM
REM Unless required by applicable law or agreed to in writing, software
REM distributed under the License is distributed on an "AS IS" BASIS,
REM WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
REM See the License for the specific language governing permissions and
REM limitations under the License.
REM ----------------------------------------------------------------------------

REM assumed that following Python versions are installed:
REM - python-3.6.8-amd64.exe
REM - python-3.6.8.exe
REM - python-3.7.7-amd64.exe
REM - python-3.7.7.exe
REM - python-3.8.2-amd64.exe
REM - python-3.8.2.exe


REM python 3.5 is disabled as it requires too old visual studio (2014)

FOR %%V IN (3.6-32  3.6-64 3.7-32 3.7-64 3.8-32 3.8-64) DO (
 py -%%V -m pip install -r requirements.txt
 py -%%V -m pip wheel . --no-deps -w wheelhouse
)

pause