FROM registry.redhat.io/ubi8/ubi:latest
USER root
COPY ./etc-pki-entitlement/entitlement /etc/pki/entitlement
# Copy subscription manager configurations
COPY ./rhsm-conf /etc/rhsm
COPY ./rhsm-ca /etc/rhsm/ca
#RUN dnf search kernel-devel --showduplicates && \
#       dnf install -y kernel-devel
#:wqRUN rm -rf /etc/pki/entitlement && \
#    rm -rf /etc/rhsm
