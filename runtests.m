function success = runtests
  [here, ~, ~] = fileparts(mfilename('fullpath'));
  code = fullfile(here, 'lib');
  tests = fullfile(here, 'tests');

  addpath(code);

  success = moxunit_runtests( ...
    tests, '-with_coverage', ...
    '-cover', code, ...
    '-cover_xml_file', fullfile(tests, 'coverage.xml'), ...
    '-cover_html_dir', fullfile(tests, 'coverage_html'));
end

