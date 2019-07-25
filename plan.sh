pkg_name=lens-gitbook
pkg_origin=holo
pkg_version="0.1.0"
pkg_maintainer="Chris Alfano <chris@jarv.us>"
pkg_license=("MIT")

pkg_deps=(
  core/bash
  jarvus/hologit
  jarvus/gitbook
)

pkg_bin_dirs=(bin)


do_build() {
  return 0
}

do_install() {
  build_line "Generating lens script"

  pushd "${pkg_prefix}" > /dev/null
  cp "${PLAN_CONTEXT}/"{build-book,lens-tree} "bin/"
  fix_interpreter "bin/*" core/bash bin/bash
  chmod +x "bin/"*
  popd > /dev/null
}

do_strip() {
  return 0
}
