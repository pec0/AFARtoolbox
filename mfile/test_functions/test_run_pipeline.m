% Testing runZface.m
if ismac
    video_dir    = '/Users/wanqiaod/workspace/data/test_video';
    output_dir   = '/Users/wanqiaod/workspace/data/test_out';
    zface_folder = '/Users/wanqiaod/workspace/pipeline/zface';
    FETA_folder  = '/Users/wanqiaod/workspace/pipeline/FETA';
    AU_folder    = '/Users/wanqiaod/workspace/pipeline/AU_detector';
else
    video_dir  = '/run/user/1435550896/gvfs/smb-share:server=136.142.40.131,share=raw_data/TPOT/Video_Data/CameraA/converted';
    output_dir = '/etc/VOLUME1/WanqiaoDing/TPOT_out';
    zface_folder = '/home/wanqiao/workspace/pipeline/zface';
    FETA_folder  = '/home/wanqiao/workspace/pipeline/FETA';
    AU_folder    = '/home/wanqiao/workspace/pipeline/AU_detector';
end

run_zface    = true;
run_FETA     = false;
run_AU       = false;
create_out   = false;

runPipeline(video_dir,output_dir,zface_folder,FETA_folder,AU_folder,...
            run_zface,run_FETA,run_AU,create_out);

