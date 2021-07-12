echo "============"
echo "Developed by ARHAM ZAKKI EDELO"

# PS_VIEWER=ghostview    # Linux, MacOSX
# alias ghostview="open -a Preview"    # MacOSX
# setGMT4    # make sure GMT4 and not GMT5 commands are on path


echo
echo "Generate the model grid"
/home/arhamze/SEMESTER_7/MEQ/NonLinLoc-master/src/bin/Vel2Grid run/nlloc_sample.in
echo
echo "Visualize the model grid"
#/home/arhamze/SEMESTER_7/MEQ/NonLinLoc-master/src/bin/Grid2GMT run/nlloc_sample.in Model/layer.P.mod gmt/ V G 1 0 1 401
#${PS_VIEWER} gmt/layer.P.mod.VG.ps &
echo
echo "Generate and view the travel-time and take-off angle grids "
/home/arhamze/SEMESTER_7/MEQ/NonLinLoc-master/src/bin/Grid2Time run/nlloc_sample.in
echo
echo "Visualize P travel-time grid"
#/home/arhamze/SEMESTER_7/MEQ/NonLinLoc-master/src/bin/Grid2GMT run/nlloc_sample.in time/layer.P.AK_RC01_--.time gmt/ V G 0 0 0 401
#${PS_VIEWER} gmt/layer.P.AK_RC01_--.time.VG.ps &
echo "Visualize P take-off angles grid"
#/home/arhamze/SEMESTER_7/MEQ/NonLinLoc-master/src/bin/Grid2GMT run/nlloc_sample.in time/layer.P.AK_RC01_--.angle gmt/ V G 0 0 0 401
#${PS_VIEWER} gmt/layer.P.AK_RC01_--.angle.VG.ps &
echo
echo "Generate some synthetic arrival times "
/home/arhamze/SEMESTER_7/MEQ/NonLinLoc-master/src/bin/Time2EQ run/nlloc_sample.in
more obs_synth/synth.obs
echo
echo "Do the event Location "
/home/arhamze/SEMESTER_7/MEQ/NonLinLoc-master/src/bin/NLLoc run/nlloc_sample.in
#echo "Plot the first event location with GMT"
#/home/arhamze/SEMESTER_7/MEQ/NonLinLoc-master/src/bin/Grid2GMT run/nlloc_sample.in loc/alaska.20181130.172935.grid0.loc gmt/ L S
#${PS_VIEWER} gmt/alaska.20181130.172935.grid0.loc.LS.ps &
#echo "Plot the combined locations with GMT"
#/home/arhamze/SEMESTER_7/MEQ/NonLinLoc-master/src/bin/LocSum loc/alaska.sum.grid0.loc 1 loc/alaska "loc/alaska.*.*.grid0.loc"
#/home/arhamze/SEMESTER_7/MEQ/NonLinLoc-master/src/bin/Grid2GMT run/nlloc_sample.in loc/alaska gmt/ L E101
#${PS_VIEWER} gmt/alaska.LE_101.ps &
#echo "Visualise the location with Seismicity Viewer (you must have installed Seismicity Viewer, see Seismicity Viewer software guide) "
#java -jar /home/arhamze/SEMESTER_7/MEQ/SeismicityViewer50.jar loc/Sunda.*.*.grid0.loc.hyp

