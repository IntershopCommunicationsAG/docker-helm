#
# Copyright 2018 Intershop Communications AG.
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
FROM alpine/helm:2.14.0

LABEL maintainer="https://github.com/IntershopCommunicationsAG/docker-helm" \
      license="Apache License 2.0" \
      vendor="Intershop Communications AG"

RUN apk add --no-cache curl

#secure - SSL ca certificates
RUN apk update \
  && apk upgrade \
  && apk add --no-cache \
  ca-certificates \
  tzdata \
  && update-ca-certificates 2>/dev/null || true
