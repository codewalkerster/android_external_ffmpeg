LOCAL_PATH := $(call my-dir)

FFMPEG_CFLAGS := \
    -DHAVE_AV_CONFIG_H \
    -I$(LOCAL_PATH) \
    -Wno-error=return-type \
    -Wno-missing-field-initializers \
    -Wno-parentheses \
    -Wno-pointer-sign \
    -Wno-sign-compare \
    -Wno-switch

FFMPEG_LDFLAGS := -Wl,--as-needed -Wl,-Bsymbolic -lm

ifeq ($(TARGET_ARCH),arm)
# Generated by configure. Should match the list of source files in
# FFMPEG_LOCAL_SRC_FILES_armv* below. See libavcodec/<arch>/Makefile.
FFMPEG_CFLAGS_armv4t := \
    -DHAVE_ARMV5TE=0 \
    -DHAVE_ARMV6=0 \
    -DHAVE_ARMV6T2=0 \
    -DHAVE_NEON=0
FFMPEG_CFLAGS_armv5te := \
    -DHAVE_ARMV5TE=1 \
    -DHAVE_ARMV6=0 \
    -DHAVE_ARMV6T2=0 \
    -DHAVE_NEON=0
FFMPEG_CFLAGS_armv5te-vfp := \
    -DHAVE_ARMV5TE=1 \
    -DHAVE_ARMV6=0 \
    -DHAVE_ARMV6T2=0 \
    -DHAVE_NEON=0
FFMPEG_CFLAGS_armv7-a := \
    -DHAVE_ARMV5TE=0 \
    -DHAVE_ARMV6=0 \
    -DHAVE_ARMV6T2=1 \
    -DHAVE_NEON=0
FFMPEG_CFLAGS_armv7-a-neon := \
    -DHAVE_ARMV5TE=1 \
    -DHAVE_ARMV6=1 \
    -DHAVE_ARMV6T2=1 \
    -DHAVE_NEON=1
FFMPEG_CFLAGS += \
    -std=c99 \
    -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE \
    -D_ISOC99_SOURCE -D_POSIX_C_SOURCE=200112 \
    ${FFMPEG_CFLAGS_$(TARGET_ARCH_VARIANT)}
endif

##### libavutil

FFMPEG_LIBAVUTIL_SRC_FILES := \
    libavutil/adler32.c \
    libavutil/aes.c \
    libavutil/arm/asm.S \
    libavutil/arm/cpu.c \
    libavutil/arm/float_dsp_init_arm.c \
    libavutil/arm/float_dsp_init_neon.c \
    libavutil/arm/float_dsp_init_vfp.c \
    libavutil/arm/float_dsp_neon.S \
    libavutil/arm/float_dsp_vfp.S \
    libavutil/audio_fifo.c \
    libavutil/avstring.c \
    libavutil/base64.c \
    libavutil/blowfish.c \
    libavutil/bprint.c \
    libavutil/buffer.c \
    libavutil/channel_layout.c \
    libavutil/cpu.c \
    libavutil/crc.c \
    libavutil/des.c \
    libavutil/dict.c \
    libavutil/error.c \
    libavutil/eval.c \
    libavutil/fifo.c \
    libavutil/file.c \
    libavutil/file_open.c \
    libavutil/float_dsp.c \
    libavutil/frame.c \
    libavutil/hash.c \
    libavutil/hmac.c \
    libavutil/imgutils.c \
    libavutil/intfloat_readwrite.c \
    libavutil/intmath.c \
    libavutil/lfg.c \
    libavutil/lls.c \
    libavutil/log.c \
    libavutil/log2_tab.c \
    libavutil/lzo.c \
    libavutil/mathematics.c \
    libavutil/md5.c \
    libavutil/mem.c \
    libavutil/murmur3.c \
    libavutil/opt.c \
    libavutil/parseutils.c \
    libavutil/pixdesc.c \
    libavutil/random_seed.c \
    libavutil/rational.c \
    libavutil/rc4.c \
    libavutil/ripemd.c \
    libavutil/samplefmt.c \
    libavutil/sha.c \
    libavutil/sha512.c \
    libavutil/time.c \
    libavutil/timecode.c \
    libavutil/tree.c \
    libavutil/utils.c \
    libavutil/xga_font_data.c \
    libavutil/xtea.c

##### libavcodec

FFMPEG_LIBAVCODEC_SRC_FILES := \
    libavcodec/012v.c \
    libavcodec/4xm.c \
    libavcodec/8bps.c \
    libavcodec/8svx.c \
    libavcodec/a64multienc.c \
    libavcodec/aac_ac3_parser.c \
    libavcodec/aac_adtstoasc_bsf.c \
    libavcodec/aac_parser.c \
    libavcodec/aacadtsdec.c \
    libavcodec/aaccoder.c \
    libavcodec/aacdec.c \
    libavcodec/aacenc.c \
    libavcodec/aacps.c \
    libavcodec/aacpsdsp.c \
    libavcodec/aacpsy.c \
    libavcodec/aacsbr.c \
    libavcodec/aactab.c \
    libavcodec/aandcttab.c \
    libavcodec/aasc.c \
    libavcodec/ac3.c \
    libavcodec/ac3_parser.c \
    libavcodec/ac3dec.c \
    libavcodec/ac3dec_data.c \
    libavcodec/ac3dsp.c \
    libavcodec/ac3enc.c \
    libavcodec/ac3enc_fixed.c \
    libavcodec/ac3enc_float.c \
    libavcodec/ac3tab.c \
    libavcodec/acelp_filters.c \
    libavcodec/acelp_pitch_delay.c \
    libavcodec/acelp_vectors.c \
    libavcodec/adpcm.c \
    libavcodec/adpcm_data.c \
    libavcodec/adpcmenc.c \
    libavcodec/adx.c \
    libavcodec/adx_parser.c \
    libavcodec/adxdec.c \
    libavcodec/adxenc.c \
    libavcodec/aic.c \
    libavcodec/alac.c \
    libavcodec/alac_data.c \
    libavcodec/alacenc.c \
    libavcodec/allcodecs.c \
    libavcodec/alsdec.c \
    libavcodec/amrwbdec.c \
    libavcodec/anm.c \
    libavcodec/ansi.c \
    libavcodec/apedec.c \
    libavcodec/ass.c \
    libavcodec/ass_split.c \
    libavcodec/assdec.c \
    libavcodec/assenc.c \
    libavcodec/asv.c \
    libavcodec/asvdec.c \
    libavcodec/asvenc.c \
    libavcodec/atrac.c \
    libavcodec/atrac1.c \
    libavcodec/atrac3.c \
    libavcodec/audio_frame_queue.c \
    libavcodec/audioconvert.c \
    libavcodec/aura.c \
    libavcodec/avfft.c \
    libavcodec/avpacket.c \
    libavcodec/avpicture.c \
    libavcodec/avrndec.c \
    libavcodec/avs.c \
    libavcodec/avuidec.c \
    libavcodec/avuienc.c \
    libavcodec/bethsoftvideo.c \
    libavcodec/bfi.c \
    libavcodec/bgmc.c \
    libavcodec/bink.c \
    libavcodec/binkaudio.c \
    libavcodec/binkdsp.c \
    libavcodec/bintext.c \
    libavcodec/bitstream.c \
    libavcodec/bitstream_filter.c \
    libavcodec/bmp.c \
    libavcodec/bmp_parser.c \
    libavcodec/bmpenc.c \
    libavcodec/bmv.c \
    libavcodec/brender_pix.c \
    libavcodec/c93.c \
    libavcodec/cabac.c \
    libavcodec/cavs_parser.c \
    libavcodec/cdgraphics.c \
    libavcodec/cdxl.c \
    libavcodec/celp_filters.c \
    libavcodec/celp_math.c \
    libavcodec/cga_data.c \
    libavcodec/chomp_bsf.c \
    libavcodec/cinepak.c \
    libavcodec/cljr.c \
    libavcodec/cllc.c \
    libavcodec/cngdec.c \
    libavcodec/cngenc.c \
    libavcodec/codec_desc.c \
    libavcodec/cook.c \
    libavcodec/cook_parser.c \
    libavcodec/cpia.c \
    libavcodec/cscd.c \
    libavcodec/cyuv.c \
    libavcodec/dca.c \
    libavcodec/dca_parser.c \
    libavcodec/dcadec.c \
    libavcodec/dcadsp.c \
    libavcodec/dcaenc.c \
    libavcodec/dct.c \
    libavcodec/dct32_fixed.c \
    libavcodec/dct32_float.c \
    libavcodec/dfa.c \
    libavcodec/dirac.c \
    libavcodec/dirac_arith.c \
    libavcodec/dirac_dwt.c \
    libavcodec/dirac_parser.c \
    libavcodec/diracdec.c \
    libavcodec/diracdsp.c \
    libavcodec/dnxhd_parser.c \
    libavcodec/dnxhddata.c \
    libavcodec/dnxhddec.c \
    libavcodec/dnxhdenc.c \
    libavcodec/dpcm.c \
    libavcodec/dpx.c \
    libavcodec/dpx_parser.c \
    libavcodec/dpxenc.c \
    libavcodec/dsicinav.c \
    libavcodec/dsputil.c \
    libavcodec/dump_extradata_bsf.c \
    libavcodec/dv.c \
    libavcodec/dv_profile.c \
    libavcodec/dvbsub.c \
    libavcodec/dvbsub_parser.c \
    libavcodec/dvbsubdec.c \
    libavcodec/dvdata.c \
    libavcodec/dvdec.c \
    libavcodec/dvdsub_parser.c \
    libavcodec/dvd_nav_parser.c \
    libavcodec/dvdsubdec.c \
    libavcodec/dvdsubenc.c \
    libavcodec/dxtory.c \
    libavcodec/eac3_data.c \
    libavcodec/eac3dec.c \
    libavcodec/eac3enc.c \
    libavcodec/eacmv.c \
    libavcodec/eaidct.c \
    libavcodec/eamad.c \
    libavcodec/eatgq.c \
    libavcodec/eatgv.c \
    libavcodec/eatqi.c \
    libavcodec/elbg.c \
    libavcodec/error_resilience.c \
    libavcodec/escape124.c \
    libavcodec/escape130.c \
    libavcodec/evrcdec.c \
    libavcodec/exif.c \
    libavcodec/faandct.c \
    libavcodec/faanidct.c \
    libavcodec/faxcompr.c \
    libavcodec/fft_fixed.c \
    libavcodec/fft_float.c \
    libavcodec/ffv1.c \
    libavcodec/ffv1dec.c \
    libavcodec/ffv1enc.c \
    libavcodec/ffwavesynth.c \
    libavcodec/flac.c \
    libavcodec/flac_parser.c \
    libavcodec/flacdata.c \
    libavcodec/flacdec.c \
    libavcodec/flacdsp.c \
    libavcodec/flicvideo.c \
    libavcodec/flvdec.c \
    libavcodec/flvenc.c \
    libavcodec/fmtconvert.c \
    libavcodec/frame_thread_encoder.c \
    libavcodec/fraps.c \
    libavcodec/frwu.c \
    libavcodec/g722.c \
    libavcodec/g722dec.c \
    libavcodec/g722enc.c \
    libavcodec/g723_1.c \
    libavcodec/g726.c \
    libavcodec/g729dec.c \
    libavcodec/g729postfilter.c \
    libavcodec/gif.c \
    libavcodec/gifdec.c \
    libavcodec/golomb.c \
    libavcodec/gsm_parser.c \
    libavcodec/gsmdec.c \
    libavcodec/gsmdec_data.c \
    libavcodec/h261.c \
    libavcodec/h261_parser.c \
    libavcodec/h261data.c \
    libavcodec/h261dec.c \
    libavcodec/h261enc.c \
    libavcodec/h263.c \
    libavcodec/h263_parser.c \
    libavcodec/h263dec.c \
    libavcodec/h264.c \
    libavcodec/h264_cabac.c \
    libavcodec/h264_cavlc.c \
    libavcodec/h264_direct.c \
    libavcodec/h264_loopfilter.c \
    libavcodec/h264_mp4toannexb_bsf.c \
    libavcodec/h264_parser.c \
    libavcodec/h264_ps.c \
    libavcodec/h264_refs.c \
    libavcodec/h264_sei.c \
    libavcodec/h264chroma.c \
    libavcodec/h264dsp.c \
    libavcodec/h264idct.c \
    libavcodec/h264pred.c \
    libavcodec/h264qpel.c \
    libavcodec/hevc_mvs.c \
    libavcodec/hevc_ps.c \
    libavcodec/hevc_filter.c \
    libavcodec/hevcdsp.c \
    libavcodec/hevc_cabac.c \
    libavcodec/hevc_sei.c \
    libavcodec/hevc_refs.c \
    libavcodec/hevc.c \
    libavcodec/hevcpred.c \
    libavcodec/hevc_parser.c \
    libavcodec/hpeldsp.c \
    libavcodec/huffman.c \
    libavcodec/huffyuv.c \
    libavcodec/huffyuvdec.c \
    libavcodec/huffyuvenc.c \
    libavcodec/idcinvideo.c \
    libavcodec/iff.c \
    libavcodec/iirfilter.c \
    libavcodec/imc.c \
    libavcodec/imgconvert.c \
    libavcodec/imx_dump_header_bsf.c \
    libavcodec/indeo2.c \
    libavcodec/indeo3.c \
    libavcodec/indeo4.c \
    libavcodec/indeo5.c \
    libavcodec/intelh263dec.c \
    libavcodec/interplayvideo.c \
    libavcodec/intrax8.c \
    libavcodec/intrax8dsp.c \
    libavcodec/ituh263dec.c \
    libavcodec/ituh263enc.c \
    libavcodec/ivi_common.c \
    libavcodec/ivi_dsp.c \
    libavcodec/j2kenc.c \
    libavcodec/jacosubdec.c \
    libavcodec/jfdctfst.c \
    libavcodec/jfdctint.c \
    libavcodec/jpegls.c \
    libavcodec/jpeglsdec.c \
    libavcodec/jpeglsenc.c \
    libavcodec/jpeg2000.c \
    libavcodec/jpeg2000dec.c \
    libavcodec/jpeg2000dwt.c \
    libavcodec/jrevdct.c \
    libavcodec/jvdec.c \
    libavcodec/kbdwin.c \
    libavcodec/kgv1dec.c \
    libavcodec/kmvc.c \
    libavcodec/lagarith.c \
    libavcodec/lagarithrac.c \
    libavcodec/latm_parser.c \
    libavcodec/lcldec.c \
    libavcodec/ljpegenc.c \
    libavcodec/loco.c \
    libavcodec/lpc.c \
    libavcodec/lsp.c \
    libavcodec/lzw.c \
    libavcodec/lzwenc.c \
    libavcodec/mace.c \
    libavcodec/mathtables.c \
    libavcodec/mdct_fixed.c \
    libavcodec/mdct_float.c \
    libavcodec/mdec.c \
    libavcodec/metasound.c \
    libavcodec/metasound_data.c \
    libavcodec/microdvddec.c \
    libavcodec/mimic.c \
    libavcodec/mjpeg.c \
    libavcodec/mjpeg2jpeg_bsf.c \
    libavcodec/mjpeg_parser.c \
    libavcodec/mjpega_dump_header_bsf.c \
    libavcodec/mjpegbdec.c \
    libavcodec/mjpegdec.c \
    libavcodec/mjpegenc.c \
    libavcodec/mlp.c \
    libavcodec/mlp_parser.c \
    libavcodec/mlpdec.c \
    libavcodec/mlpdsp.c \
    libavcodec/mmvideo.c \
    libavcodec/motion_est.c \
    libavcodec/motionpixels.c \
    libavcodec/movsub_bsf.c \
    libavcodec/movtextdec.c \
    libavcodec/movtextenc.c \
    libavcodec/mp3_header_compress_bsf.c \
    libavcodec/mp3_header_decompress_bsf.c \
    libavcodec/mpc.c \
    libavcodec/mpc7.c \
    libavcodec/mpc8.c \
    libavcodec/mpeg12.c \
    libavcodec/mpeg12data.c \
    libavcodec/mpeg12dec.c \
    libavcodec/mpeg12enc.c \
    libavcodec/mpeg4audio.c \
    libavcodec/mpeg4video.c \
    libavcodec/mpeg4video_parser.c \
    libavcodec/mpeg4videodec.c \
    libavcodec/mpeg4videoenc.c \
    libavcodec/mpegaudio.c \
    libavcodec/mpegaudio_parser.c \
    libavcodec/mpegaudiodata.c \
    libavcodec/mpegaudiodec.c \
    libavcodec/mpegaudiodec_float.c \
    libavcodec/mpegaudiodecheader.c \
    libavcodec/mpegaudiodsp.c \
    libavcodec/mpegaudiodsp_data.c \
    libavcodec/mpegaudiodsp_fixed.c \
    libavcodec/mpegaudiodsp_float.c \
    libavcodec/mpegaudioenc.c \
    libavcodec/mpegvideo.c \
    libavcodec/mpegvideo_enc.c \
    libavcodec/mpegvideo_motion.c \
    libavcodec/mpegvideo_parser.c \
    libavcodec/mpl2dec.c \
    libavcodec/mqc.c \
    libavcodec/mqcdec.c \
    libavcodec/mqcenc.c \
    libavcodec/msgsmdec.c \
    libavcodec/msmpeg4.c \
    libavcodec/msmpeg4data.c \
    libavcodec/msmpeg4enc.c \
    libavcodec/msmpeg4dec.c \
    libavcodec/msrle.c \
    libavcodec/msrledec.c \
    libavcodec/mss1.c \
    libavcodec/mss12.c \
    libavcodec/mss2.c \
    libavcodec/mss2dsp.c \
    libavcodec/mss3.c \
    libavcodec/mss34dsp.c \
    libavcodec/mss4.c \
    libavcodec/msvideo1.c \
    libavcodec/msvideo1enc.c \
    libavcodec/mvcdec.c \
    libavcodec/mxpegdec.c \
    libavcodec/nellymoser.c \
    libavcodec/nellymoserdec.c \
    libavcodec/nellymoserenc.c \
    libavcodec/noise_bsf.c \
    libavcodec/nuv.c \
    libavcodec/options.c \
    libavcodec/paf.c \
    libavcodec/pamenc.c \
    libavcodec/parser.c \
    libavcodec/pcm.c \
    libavcodec/pcm-bluray.c \
    libavcodec/pcm-dvd.c \
    libavcodec/pcx.c \
    libavcodec/pcxenc.c \
    libavcodec/pgssubdec.c \
    libavcodec/pictordec.c \
    libavcodec/png_parser.c \
    libavcodec/pnm.c \
    libavcodec/pnm_parser.c \
    libavcodec/pnmdec.c \
    libavcodec/pnmenc.c \
    libavcodec/proresdata.c \
    libavcodec/proresdec2.c \
    libavcodec/proresdec_lgpl.c \
    libavcodec/proresdsp.c \
    libavcodec/proresenc_anatoliy.c \
    libavcodec/proresenc_kostya.c \
    libavcodec/psymodel.c \
    libavcodec/pthread.c \
    libavcodec/ptx.c \
    libavcodec/qcelpdec.c \
    libavcodec/qdm2.c \
    libavcodec/qdrw.c \
    libavcodec/qpeg.c \
    libavcodec/qtrle.c \
    libavcodec/qtrleenc.c \
    libavcodec/r210dec.c \
    libavcodec/r210enc.c \
    libavcodec/ra144.c \
    libavcodec/ra144dec.c \
    libavcodec/ra144enc.c \
    libavcodec/ra288.c \
    libavcodec/ralf.c \
    libavcodec/rangecoder.c \
    libavcodec/ratecontrol.c \
    libavcodec/raw.c \
    libavcodec/rawdec.c \
    libavcodec/rawenc.c \
    libavcodec/rdft.c \
    libavcodec/realtextdec.c \
    libavcodec/remove_extradata_bsf.c \
    libavcodec/resample.c \
    libavcodec/resample2.c \
    libavcodec/rl2.c \
    libavcodec/rle.c \
    libavcodec/roqaudioenc.c \
    libavcodec/roqvideo.c \
    libavcodec/roqvideodec.c \
    libavcodec/roqvideoenc.c \
    libavcodec/rpza.c \
    libavcodec/rtjpeg.c \
    libavcodec/rv10.c \
    libavcodec/rv10enc.c \
    libavcodec/rv20enc.c \
    libavcodec/rv30.c \
    libavcodec/rv30dsp.c \
    libavcodec/rv34.c \
    libavcodec/rv34_parser.c \
    libavcodec/rv34dsp.c \
    libavcodec/rv40.c \
    libavcodec/rv40dsp.c \
    libavcodec/s302m.c \
    libavcodec/s302menc.c \
    libavcodec/s3tc.c \
    libavcodec/samidec.c \
    libavcodec/sanm.c \
    libavcodec/sbrdsp.c \
    libavcodec/sgidec.c \
    libavcodec/sgienc.c \
    libavcodec/sgirledec.c \
    libavcodec/shorten.c \
    libavcodec/simple_idct.c \
    libavcodec/sinewin.c \
    libavcodec/sipr.c \
    libavcodec/sipr16k.c \
    libavcodec/smacker.c \
    libavcodec/smc.c \
    libavcodec/smvjpegdec.c \
    libavcodec/snow.c \
    libavcodec/snow_dwt.c \
    libavcodec/snowdec.c \
    libavcodec/snowenc.c \
    libavcodec/sonic.c \
    libavcodec/sp5xdec.c \
    libavcodec/srtdec.c \
    libavcodec/srtenc.c \
    libavcodec/subviewerdec.c \
    libavcodec/sunrast.c \
    libavcodec/sunrastenc.c \
    libavcodec/svq1.c \
    libavcodec/svq13.c \
    libavcodec/svq1dec.c \
    libavcodec/svq1enc.c \
    libavcodec/svq3.c \
    libavcodec/synth_filter.c \
    libavcodec/tak.c \
    libavcodec/tak_parser.c \
    libavcodec/takdec.c \
    libavcodec/targa.c \
    libavcodec/targa_y216dec.c \
    libavcodec/targaenc.c \
    libavcodec/textdec.c \
    libavcodec/tiertexseqv.c \
    libavcodec/tiff.c \
    libavcodec/tiff_common.c \
    libavcodec/tiff_data.c \
    libavcodec/tiffenc.c \
    libavcodec/timecode.c \
    libavcodec/tmv.c \
    libavcodec/truemotion1.c \
    libavcodec/truemotion2.c \
    libavcodec/truespeech.c \
    libavcodec/tscc2.c \
    libavcodec/tta.c \
    libavcodec/ttadata.c \
    libavcodec/ttaenc.c \
    libavcodec/twinvq.c \
    libavcodec/twinvqdec.c \
    libavcodec/txd.c \
    libavcodec/ulti.c \
    libavcodec/utils.c \
    libavcodec/utvideo.c \
    libavcodec/utvideodec.c \
    libavcodec/utvideoenc.c \
    libavcodec/v210dec.c \
    libavcodec/v210enc.c \
    libavcodec/v210x.c \
    libavcodec/v308dec.c \
    libavcodec/v308enc.c \
    libavcodec/v408dec.c \
    libavcodec/v408enc.c \
    libavcodec/v410dec.c \
    libavcodec/v410enc.c \
    libavcodec/vb.c \
    libavcodec/vble.c \
    libavcodec/vc1.c \
    libavcodec/vc1_parser.c \
    libavcodec/vc1data.c \
    libavcodec/vc1dec.c \
    libavcodec/vc1dsp.c \
    libavcodec/vcr1.c \
    libavcodec/videodsp.c \
    libavcodec/vima.c \
    libavcodec/vmdav.c \
    libavcodec/vmnc.c \
    libavcodec/vorbis.c \
    libavcodec/vorbis_data.c \
    libavcodec/vorbis_parser.c \
    libavcodec/vorbisdec.c \
    libavcodec/vorbisdsp.c \
    libavcodec/vorbisenc.c \
    libavcodec/vp3.c \
    libavcodec/vp3_parser.c \
    libavcodec/vp3dsp.c \
    libavcodec/vp5.c \
    libavcodec/vp56.c \
    libavcodec/vp56data.c \
    libavcodec/vp56dsp.c \
    libavcodec/vp56rac.c \
    libavcodec/vp6.c \
    libavcodec/vp6dsp.c \
    libavcodec/vp8.c \
    libavcodec/vp8_parser.c \
    libavcodec/vp8dsp.c \
    libavcodec/vp9.c \
    libavcodec/vp9dsp.c \
    libavcodec/vqavideo.c \
    libavcodec/wavpack.c \
    libavcodec/wavpackenc.c \
    libavcodec/webvttdec.c \
    libavcodec/webp.c \
    libavcodec/wma.c \
    libavcodec/wma_common.c \
    libavcodec/wmadec.c \
    libavcodec/wmaenc.c \
    libavcodec/wmalosslessdec.c \
    libavcodec/wmaprodec.c \
    libavcodec/wmavoice.c \
    libavcodec/wmv2.c \
    libavcodec/wmv2dec.c \
    libavcodec/wmv2dsp.c \
    libavcodec/wmv2enc.c \
    libavcodec/wnv1.c \
    libavcodec/ws-snd1.c \
    libavcodec/xan.c \
    libavcodec/xbmdec.c \
    libavcodec/xbmenc.c \
    libavcodec/xface.c \
    libavcodec/xfacedec.c \
    libavcodec/xfaceenc.c \
    libavcodec/xiph.c \
    libavcodec/xl.c \
    libavcodec/xsubdec.c \
    libavcodec/xsubenc.c \
    libavcodec/xwddec.c \
    libavcodec/xwdenc.c \
    libavcodec/xxan.c \
    libavcodec/y41pdec.c \
    libavcodec/y41penc.c \
    libavcodec/yop.c \
    libavcodec/yuv4dec.c \
    libavcodec/yuv4enc.c

FFMPEG_LOCAL_SRC_FILES_armv4t := \
    libavcodec/arm/aacpsdsp_init_arm.c \
    libavcodec/arm/ac3dsp_arm.S \
    libavcodec/arm/ac3dsp_init_arm.c \
    libavcodec/arm/dcadsp_init_arm.c \
    libavcodec/arm/dsputil_arm.S \
    libavcodec/arm/dsputil_init_arm.c \
    libavcodec/arm/dsputil_init_vfp.c \
    libavcodec/arm/dsputil_vfp.S \
    libavcodec/arm/fft_fixed_init_arm.c \
    libavcodec/arm/fft_init_arm.c \
    libavcodec/arm/flacdsp_arm.S \
    libavcodec/arm/flacdsp_init_arm.c \
    libavcodec/arm/fmtconvert_init_arm.c \
    libavcodec/arm/h264dsp_init_arm.c \
    libavcodec/arm/h264pred_init_arm.c \
    libavcodec/arm/jrevdct_arm.S \
    libavcodec/arm/mpegaudiodsp_init_arm.c \
    libavcodec/arm/mpegvideo_arm.c \
    libavcodec/arm/rv34dsp_init_arm.c \
    libavcodec/arm/rv40dsp_init_arm.c \
    libavcodec/arm/sbrdsp_init_arm.c \
    libavcodec/arm/simple_idct_arm.S \
    libavcodec/arm/videodsp_init_arm.c \
    libavcodec/arm/vp3dsp_init_arm.c \
    libavcodec/arm/vp56dsp_init_arm.c \
    libavcodec/arm/vp8dsp_init_arm.c

FFMPEG_LOCAL_SRC_FILES_armv5te :=\
    libavcodec/arm/aacpsdsp_init_arm.c \
    libavcodec/arm/ac3dsp_arm.S \
    libavcodec/arm/ac3dsp_init_arm.c \
    libavcodec/arm/dcadsp_init_arm.c \
    libavcodec/arm/dsputil_arm.S \
    libavcodec/arm/dsputil_init_arm.c \
    libavcodec/arm/dsputil_init_armv5te.c \
    libavcodec/arm/dsputil_init_vfp.c \
    libavcodec/arm/dsputil_vfp.S \
    libavcodec/arm/fft_fixed_init_arm.c \
    libavcodec/arm/fft_init_arm.c \
    libavcodec/arm/flacdsp_arm.S \
    libavcodec/arm/flacdsp_init_arm.c \
    libavcodec/arm/fmtconvert_init_arm.c \
    libavcodec/arm/h264dsp_init_arm.c \
    libavcodec/arm/h264pred_init_arm.c \
    libavcodec/arm/jrevdct_arm.S \
    libavcodec/arm/mpegaudiodsp_init_arm.c \
    libavcodec/arm/mpegvideo_arm.c \
    libavcodec/arm/mpegvideo_armv5te.c \
    libavcodec/arm/mpegvideo_armv5te_s.S \
    libavcodec/arm/rv34dsp_init_arm.c \
    libavcodec/arm/rv40dsp_init_arm.c \
    libavcodec/arm/sbrdsp_init_arm.c \
    libavcodec/arm/simple_idct_arm.S \
    libavcodec/arm/simple_idct_armv5te.S \
    libavcodec/arm/videodsp_armv5te.S \
    libavcodec/arm/videodsp_init_arm.c \
    libavcodec/arm/videodsp_init_armv5te.c \
    libavcodec/arm/vp3dsp_init_arm.c \
    libavcodec/arm/vp56dsp_init_arm.c \
    libavcodec/arm/vp8dsp_init_arm.c

FFMPEG_LOCAL_SRC_FILES_armv7-a :=\
    libavcodec/arm/aacpsdsp_init_arm.c \
    libavcodec/arm/ac3dsp_arm.S \
    libavcodec/arm/ac3dsp_init_arm.c \
    libavcodec/arm/dcadsp_init_arm.c \
    libavcodec/arm/dsputil_arm.S \
    libavcodec/arm/dsputil_init_arm.c \
    libavcodec/arm/dsputil_init_vfp.c \
    libavcodec/arm/dsputil_vfp.S \
    libavcodec/arm/fft_fixed_init_arm.c \
    libavcodec/arm/fft_init_arm.c \
    libavcodec/arm/flacdsp_arm.S \
    libavcodec/arm/flacdsp_init_arm.c \
    libavcodec/arm/fmtconvert_init_arm.c \
    libavcodec/arm/h264dsp_init_arm.c \
    libavcodec/arm/h264pred_init_arm.c \
    libavcodec/arm/jrevdct_arm.S \
    libavcodec/arm/mpegaudiodsp_init_arm.c \
    libavcodec/arm/mpegvideo_arm.c \
    libavcodec/arm/rv34dsp_init_arm.c \
    libavcodec/arm/rv40dsp_init_arm.c \
    libavcodec/arm/sbrdsp_init_arm.c \
    libavcodec/arm/simple_idct_arm.S \
    libavcodec/arm/videodsp_init_arm.c \
    libavcodec/arm/vp3dsp_init_arm.c \
    libavcodec/arm/vp56dsp_init_arm.c \
    libavcodec/arm/vp8dsp_init_arm.c

FFMPEG_LOCAL_SRC_FILES_armv7-a-neon :=\
    libavcodec/arm/aacpsdsp_init_arm.c \
    libavcodec/arm/aacpsdsp_neon.S \
    libavcodec/arm/ac3dsp_arm.S \
    libavcodec/arm/ac3dsp_armv6.S \
    libavcodec/arm/ac3dsp_init_arm.c \
    libavcodec/arm/ac3dsp_neon.S \
    libavcodec/arm/dcadsp_init_arm.c \
    libavcodec/arm/dcadsp_neon.S \
    libavcodec/arm/dcadsp_vfp.S \
    libavcodec/arm/dsputil_arm.S \
    libavcodec/arm/dsputil_armv6.S \
    libavcodec/arm/dsputil_init_arm.c \
    libavcodec/arm/dsputil_init_armv5te.c \
    libavcodec/arm/dsputil_init_armv6.c \
    libavcodec/arm/dsputil_init_neon.c \
    libavcodec/arm/dsputil_neon.S \
    libavcodec/arm/fft_fixed_init_arm.c \
    libavcodec/arm/fft_fixed_neon.S \
    libavcodec/arm/fft_init_arm.c \
    libavcodec/arm/fft_neon.S \
    libavcodec/arm/fft_vfp.S \
    libavcodec/arm/flacdsp_arm.S \
    libavcodec/arm/flacdsp_init_arm.c \
    libavcodec/arm/fmtconvert_init_arm.c \
    libavcodec/arm/fmtconvert_neon.S \
    libavcodec/arm/fmtconvert_vfp.S \
    libavcodec/arm/fmtconvert_vfp_armv6.S \
    libavcodec/arm/h264chroma_init_arm.c \
    libavcodec/arm/h264cmc_neon.S \
    libavcodec/arm/h264dsp_armv6.S \
    libavcodec/arm/h264dsp_init_arm.c \
    libavcodec/arm/h264dsp_neon.S \
    libavcodec/arm/h264idct_neon.S \
    libavcodec/arm/h264pred_init_arm.c \
    libavcodec/arm/h264pred_neon.S \
    libavcodec/arm/h264qpel_init_arm.c \
    libavcodec/arm/h264qpel_neon.S \
    libavcodec/arm/hpeldsp_arm.S \
    libavcodec/arm/hpeldsp_armv6.S \
    libavcodec/arm/hpeldsp_init_arm.c \
    libavcodec/arm/hpeldsp_init_armv6.c \
    libavcodec/arm/hpeldsp_init_neon.c \
    libavcodec/arm/hpeldsp_neon.S \
    libavcodec/arm/int_neon.S \
    libavcodec/arm/jrevdct_arm.S \
    libavcodec/arm/mdct_fixed_neon.S \
    libavcodec/arm/mdct_neon.S \
    libavcodec/arm/mdct_vfp.S \
    libavcodec/arm/mpegaudiodsp_fixed_armv6.S \
    libavcodec/arm/mpegaudiodsp_init_arm.c \
    libavcodec/arm/mpegvideo_arm.c \
    libavcodec/arm/mpegvideo_armv5te.c \
    libavcodec/arm/mpegvideo_armv5te_s.S \
    libavcodec/arm/mpegvideo_neon.S \
    libavcodec/arm/neon.S \
    libavcodec/arm/rdft_neon.S \
    libavcodec/arm/rv34dsp_init_arm.c \
    libavcodec/arm/rv34dsp_neon.S \
    libavcodec/arm/rv40dsp_init_arm.c \
    libavcodec/arm/rv40dsp_neon.S \
    libavcodec/arm/sbrdsp_init_arm.c \
    libavcodec/arm/sbrdsp_neon.S \
    libavcodec/arm/simple_idct_arm.S \
    libavcodec/arm/simple_idct_armv5te.S \
    libavcodec/arm/simple_idct_armv6.S \
    libavcodec/arm/simple_idct_neon.S \
    libavcodec/arm/synth_filter_neon.S \
    libavcodec/arm/synth_filter_vfp.S \
    libavcodec/arm/videodsp_armv5te.S \
    libavcodec/arm/videodsp_init_arm.c \
    libavcodec/arm/videodsp_init_armv5te.c \
    libavcodec/arm/vorbisdsp_init_arm.c \
    libavcodec/arm/vorbisdsp_neon.S \
    libavcodec/arm/vp3dsp_init_arm.c \
    libavcodec/arm/vp3dsp_neon.S \
    libavcodec/arm/vp6dsp_init_arm.c \
    libavcodec/arm/vp6dsp_neon.S \
    libavcodec/arm/vp8_armv6.S \
    libavcodec/arm/vp8dsp_armv6.S \
    libavcodec/arm/vp8dsp_init_arm.c \
    libavcodec/arm/vp8dsp_init_armv6.c \
    libavcodec/arm/vp8dsp_init_neon.c \
    libavcodec/arm/vp8dsp_neon.S

##### libavformat

FFMPEG_LIBAVFORMAT_SRC_FILES := \
    libavformat/4xm.c \
    libavformat/a64.c \
    libavformat/aacdec.c \
    libavformat/adif.c \
    libavformat/ac3dec.c \
    libavformat/act.c \
    libavformat/adtsenc.c \
    libavformat/adxdec.c \
    libavformat/adp.c \
    libavformat/aea.c \
    libavformat/afc.c \
    libavformat/aiffdec.c \
    libavformat/aiffenc.c \
    libavformat/allformats.c \
    libavformat/amr.c \
    libavformat/anm.c \
    libavformat/apc.c \
    libavformat/ape.c \
    libavformat/apetag.c \
    libavformat/aqtitledec.c \
    libavformat/asf.c \
    libavformat/asfcrypt.c \
    libavformat/asfdec.c \
    libavformat/asfenc.c \
    libavformat/assdec.c \
    libavformat/assenc.c \
    libavformat/ast.c \
    libavformat/astdec.c \
    libavformat/astenc.c \
    libavformat/au.c \
    libavformat/audiointerleave.c \
    libavformat/avc.c \
    libavformat/avidec.c \
    libavformat/avienc.c \
    libavformat/avio.c \
    libavformat/aviobuf.c \
    libavformat/avlanguage.c \
    libavformat/avr.c \
    libavformat/avs.c \
    libavformat/bethsoftvid.c \
    libavformat/bfi.c \
    libavformat/bink.c \
    libavformat/bintext.c \
    libavformat/bit.c \
    libavformat/bmv.c \
    libavformat/boadec.c \
    libavformat/brstm.c \
    libavformat/c93.c \
    libavformat/cache.c \
    libavformat/caf.c \
    libavformat/cafdec.c \
    libavformat/cafenc.c \
    libavformat/cavsvideodec.c \
    libavformat/cdg.c \
    libavformat/cdxl.c \
    libavformat/concat.c \
    libavformat/concatdec.c \
    libavformat/crcenc.c \
    libavformat/crypto.c \
    libavformat/cutils.c \
    libavformat/data_uri.c \
    libavformat/daud.c \
    libavformat/dfa.c \
    libavformat/diracdec.c \
    libavformat/dnxhddec.c \
    libavformat/dsicin.c \
    libavformat/dtsdec.c \
    libavformat/dtshddec.c \
    libavformat/dv.c \
    libavformat/dvenc.c \
    libavformat/dxa.c \
    libavformat/eacdata.c \
    libavformat/electronicarts.c \
    libavformat/epafdec.c \
    libavformat/ffmdec.c \
    libavformat/ffmenc.c \
    libavformat/ffmetadec.c \
    libavformat/ffmetaenc.c \
    libavformat/format.c \
    libavformat/file.c \
    libavformat/filmstripdec.c \
    libavformat/filmstripenc.c \
    libavformat/flac_picture.c \
    libavformat/flacdec.c \
    libavformat/flacenc.c \
    libavformat/flacenc_header.c \
    libavformat/flic.c \
    libavformat/flvdec.c \
    libavformat/flvenc.c \
    libavformat/framecrcenc.c \
    libavformat/framehash.c \
    libavformat/frmdec.c \
    libavformat/ftp.c \
    libavformat/g722.c \
    libavformat/g723_1.c \
    libavformat/g729dec.c \
    libavformat/gif.c \
    libavformat/gifdec.c \
    libavformat/gopher.c \
    libavformat/gsmdec.c \
    libavformat/gxf.c \
    libavformat/gxfenc.c \
    libavformat/h261dec.c \
    libavformat/h263dec.c \
    libavformat/h264dec.c \
    libavformat/hevcdec.c \
    libavformat/hls.c \
    libavformat/hlsenc.c \
    libavformat/hlsproto.c \
    libavformat/http.c \
    libavformat/httpauth.c \
    libavformat/icodec.c \
    libavformat/icoenc.c \
    libavformat/id3v1.c \
    libavformat/id3v2.c \
    libavformat/id3v2enc.c \
    libavformat/idcin.c \
    libavformat/idroqdec.c \
    libavformat/idroqenc.c \
    libavformat/iff.c \
    libavformat/ilbc.c \
    libavformat/img2.c \
    libavformat/img2dec.c \
    libavformat/img2enc.c \
    libavformat/ingenientdec.c \
    libavformat/ipmovie.c \
    libavformat/ircam.c \
    libavformat/ircamdec.c \
    libavformat/ircamenc.c \
    libavformat/isom.c \
    libavformat/iss.c \
    libavformat/iv8.c \
    libavformat/ivfdec.c \
    libavformat/ivfenc.c \
    libavformat/jacosubdec.c \
    libavformat/jacosubenc.c \
    libavformat/jvdec.c \
    libavformat/latmenc.c \
    libavformat/lmlm4.c \
    libavformat/loasdec.c \
    libavformat/lvfdec.c \
    libavformat/lxfdec.c \
    libavformat/m4vdec.c \
    libavformat/matroska.c \
    libavformat/matroskadec.c \
    libavformat/matroskaenc.c \
    libavformat/md5enc.c \
    libavformat/md5proto.c \
    libavformat/metadata.c \
    libavformat/mgsts.c \
    libavformat/microdvddec.c \
    libavformat/microdvdenc.c \
    libavformat/mkvtimestamp_v2.c \
    libavformat/mm.c \
    libavformat/mmf.c \
    libavformat/mms.c \
    libavformat/mmsh.c \
    libavformat/mmst.c \
    libavformat/mov.c \
    libavformat/mov_chan.c \
    libavformat/movenc.c \
    libavformat/movenchint.c \
    libavformat/mp3dec.c \
    libavformat/mp3enc.c \
    libavformat/mpc.c \
    libavformat/mpc8.c \
    libavformat/mpeg.c \
    libavformat/mpegenc.c \
    libavformat/mpegts.c \
    libavformat/mpegtsenc.c \
    libavformat/mpegvideodec.c \
    libavformat/mpjpeg.c \
    libavformat/mpl2dec.c \
    libavformat/mpsubdec.c \
    libavformat/msnwc_tcp.c \
    libavformat/mtv.c \
    libavformat/mux.c \
    libavformat/mvdec.c \
    libavformat/mvi.c \
    libavformat/mxf.c \
    libavformat/mxfdec.c \
    libavformat/mxfenc.c \
    libavformat/mxg.c \
    libavformat/ncdec.c \
    libavformat/network.c \
    libavformat/nistspheredec.c \
    libavformat/nsvdec.c \
    libavformat/nullenc.c \
    libavformat/nut.c \
    libavformat/nutdec.c \
    libavformat/nutenc.c \
    libavformat/nuv.c \
    libavformat/oggdec.c \
    libavformat/oggenc.c \
    libavformat/oggparsecelt.c \
    libavformat/oggparsedirac.c \
    libavformat/oggparseflac.c \
    libavformat/oggparseogm.c \
    libavformat/oggparseopus.c \
    libavformat/oggparseskeleton.c \
    libavformat/oggparsespeex.c \
    libavformat/oggparsetheora.c \
    libavformat/oggparsevorbis.c \
    libavformat/oma.c \
    libavformat/omadec.c \
    libavformat/omaenc.c \
    libavformat/options.c \
    libavformat/os_support.c \
    libavformat/paf.c \
    libavformat/pcm.c \
    libavformat/pcmdec.c \
    libavformat/pcmenc.c \
    libavformat/pjsdec.c \
    libavformat/pmpdec.c \
    libavformat/psxstr.c \
    libavformat/pva.c \
    libavformat/pvfdec.c \
    libavformat/qcp.c \
    libavformat/r3d.c \
    libavformat/rawdec.c \
    libavformat/rawenc.c \
    libavformat/rawvideodec.c \
    libavformat/rdt.c \
    libavformat/realtextdec.c \
    libavformat/redspark.c \
    libavformat/riff.c \
    libavformat/riffdec.c \
    libavformat/riffenc.c \
    libavformat/rl2.c \
    libavformat/rm.c \
    libavformat/rmdec.c \
    libavformat/rmenc.c \
    libavformat/rmsipr.c \
    libavformat/rpl.c \
    libavformat/rsd.c \
    libavformat/rso.c \
    libavformat/rsodec.c \
    libavformat/rsoenc.c \
    libavformat/rtmphttp.c \
    libavformat/rtmppkt.c \
    libavformat/rtmpproto.c \
    libavformat/rtp.c \
    libavformat/rtpdec.c \
    libavformat/rtpdec_amr.c \
    libavformat/rtpdec_asf.c \
    libavformat/rtpdec_g726.c \
    libavformat/rtpdec_h263.c \
    libavformat/rtpdec_h263_rfc2190.c \
    libavformat/rtpdec_h264.c \
    libavformat/rtpdec_ilbc.c \
    libavformat/rtpdec_jpeg.c \
    libavformat/rtpdec_latm.c \
    libavformat/rtpdec_mpeg4.c \
    libavformat/rtpdec_mpeg12.c \
    libavformat/rtpdec_mpegts.c \
    libavformat/rtpdec_qcelp.c \
    libavformat/rtpdec_qdm2.c \
    libavformat/rtpdec_qt.c \
    libavformat/rtpdec_svq3.c \
    libavformat/rtpdec_vp8.c \
    libavformat/rtpdec_xiph.c \
    libavformat/rtpenc.c \
    libavformat/rtpenc_aac.c \
    libavformat/rtpenc_amr.c \
    libavformat/rtpenc_chain.c \
    libavformat/rtpenc_h263.c \
    libavformat/rtpenc_h263_rfc2190.c \
    libavformat/rtpenc_h264.c \
    libavformat/rtpenc_jpeg.c \
    libavformat/rtpenc_latm.c \
    libavformat/rtpenc_mpv.c \
    libavformat/rtpenc_vp8.c \
    libavformat/rtpenc_xiph.c \
    libavformat/rtpproto.c \
    libavformat/rtsp.c \
    libavformat/rtspdec.c \
    libavformat/rtspenc.c \
    libavformat/samidec.c \
    libavformat/sapdec.c \
    libavformat/sapenc.c \
    libavformat/sauce.c \
    libavformat/sbgdec.c \
    libavformat/sdp.c \
    libavformat/seek.c \
    libavformat/segafilm.c \
    libavformat/segment.c \
    libavformat/sierravmd.c \
    libavformat/siff.c \
    libavformat/smacker.c \
    libavformat/smjpeg.c \
    libavformat/smjpegdec.c \
    libavformat/smjpegenc.c \
    libavformat/smoothstreamingenc.c \
    libavformat/smush.c \
    libavformat/sol.c \
    libavformat/soxdec.c \
    libavformat/soxenc.c \
    libavformat/spdif.c \
    libavformat/spdifdec.c \
    libavformat/spdifenc.c \
    libavformat/srtdec.c \
    libavformat/srtenc.c \
    libavformat/srtp.c \
    libavformat/srtpproto.c \
    libavformat/subtitles.c \
    libavformat/subviewer1dec.c \
    libavformat/subviewerdec.c \
    libavformat/swf.c \
    libavformat/swfdec.c \
    libavformat/swfenc.c \
    libavformat/takdec.c \
    libavformat/tcp.c \
    libavformat/tedcaptionsdec.c \
    libavformat/tee.c \
    libavformat/thp.c \
    libavformat/tiertexseq.c \
    libavformat/tmv.c \
    libavformat/tta.c \
    libavformat/tty.c \
    libavformat/txd.c \
    libavformat/udp.c \
    libavformat/unix.c \
    libavformat/url.c \
    libavformat/urldecode.c \
    libavformat/utils.c \
    libavformat/vc1test.c \
    libavformat/vc1testenc.c \
    libavformat/vivo.c \
    libavformat/voc.c \
    libavformat/vocdec.c \
    libavformat/vocenc.c \
    libavformat/vorbiscomment.c \
    libavformat/vplayerdec.c \
    libavformat/vqf.c \
    libavformat/w64.c \
    libavformat/wavdec.c \
    libavformat/wavenc.c \
    libavformat/wc3movie.c \
    libavformat/webvttdec.c \
    libavformat/webvttenc.c \
    libavformat/westwood_aud.c \
    libavformat/westwood_vqa.c \
    libavformat/wtv_common.c \
    libavformat/wtvdec.c \
    libavformat/wtvenc.c \
    libavformat/wv.c \
    libavformat/wvdec.c \
    libavformat/wvenc.c \
    libavformat/xa.c \
    libavformat/xmv.c \
    libavformat/xwma.c \
    libavformat/yop.c \
    libavformat/yuv4mpeg.c
    
##### libavformat

FFMPEG_LIBSWSCALE_SRC_FILES := \
    libswscale/input.c \
    libswscale/options.c \
    libswscale/output.c \
    libswscale/rgb2rgb.c \
    libswscale/swscale.c \
    libswscale/swscale_unscaled.c \
    libswscale/utils.c \
    libswscale/yuv2rgb.c

include $(CLEAR_VARS)

LOCAL_MODULE := libamffmpeg

LOCAL_MODULE_TAGS := optional

ifeq ($(TARGET_ARCH),arm)
LOCAL_ARM_MODE := arm
endif

LOCAL_CFLAGS := $(FFMPEG_CFLAGS) -DFF_API_AV_GETTIME=0

LOCAL_LDFLAGS += $(FFMPEG_LDFLAGS)

LOCAL_SRC_FILES := \
    $(FFMPEG_LIBAVUTIL_SRC_FILES) \
    $(FFMPEG_LIBAVCODEC_SRC_FILES) \
    ${FFMPEG_LOCAL_SRC_FILES_$(TARGET_ARCH_VARIANT)} \
    $(FFMPEG_LIBAVFORMAT_SRC_FILES) \
    $(FFMPEG_LIBSWSCALE_SRC_FILES)

LOCAL_SHARED_LIBRARIES := libutils liblog

include $(BUILD_SHARED_LIBRARY)
