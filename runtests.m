function success = runtests(usemocov)
  [here, ~, ~] = fileparts(mfilename('fullpath'));
  code = fullfile(here, 'lib');
  tests = fullfile(here, 'tests');

  addpath(code);

  if nargin < 1
    usemocov = false;
  end

  if usemocov
    success = moxunit_runtests( ...
      tests, '-with_coverage', ...
      '-cover', code, ...
      '-cover_xml_file', fullfile(tests, 'coverage.xml'), ...
      '-cover_html_dir', fullfile(tests, 'coverage_html'));
  else
    success = moxunit_runtests(tests);
  end
end

