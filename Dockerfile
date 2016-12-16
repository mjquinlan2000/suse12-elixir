FROM mbentley/suse12-build:latest

ENV LC_ALL en_US.utf8

run zypper ar http://download.opensuse.org/repositories/devel:/languages:/erlang/SLE_12/devel:languages:erlang.repo && \
  zypper --no-gpg-checks refresh && \
  zypper install -y erlang && \
  mkdir -p /work && \
  cd /work && \
  git clone https://github.com/elixir-lang/elixir.git && \
  cd elixir && \
  git checkout v1.3.4 && \
  make && \
  make install && \
  cd / && \
  rm -fr /work && \
  echo "elixir installed at: $(which elixir)"

VOLUME /code

CMD ["iex"]
