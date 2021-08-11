.class public Lcom/android/systemui/screenrecord/ScreenMediaRecorder;
.super Ljava/lang/Object;
.source "ScreenMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;
    }
.end annotation


# instance fields
.field private mAudio:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

.field private mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

.field private mContext:Landroid/content/Context;

.field private mInputSurface:Landroid/view/Surface;

.field mListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mMediaProjection:Landroid/media/projection/MediaProjection;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMuxer:Lcom/android/systemui/screenrecord/ScreenRecordingMuxer;

.field private mTempAudioFile:Ljava/io/File;

.field private mTempVideoFile:Ljava/io/File;

.field private mUser:I

.field private mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/screenrecord/ScreenRecordingAudioSource;Landroid/media/MediaRecorder$OnInfoListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mUser:I

    iput-object p4, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mListener:Landroid/media/MediaRecorder$OnInfoListener;

    iput-object p3, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    return-void
.end method

.method private prepare()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "media_projection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mUser:I

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v3}, Landroid/media/projection/IMediaProjectionManager;->createProjection(ILjava/lang/String;IZ)Landroid/media/projection/IMediaProjection;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Landroid/media/projection/MediaProjection;

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/media/projection/MediaProjection;-><init>(Landroid/content/Context;Landroid/media/projection/IMediaProjection;)V

    iput-object v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    const-string/jumbo v1, "temp"

    const-string v2, ".mp4"

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    sget-object v4, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-ne v2, v4, :cond_0

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRefreshRate()F

    move-result v4

    float-to-int v4, v4

    mul-int v5, v9, v8

    mul-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x1e

    mul-int/lit8 v5, v5, 0x6

    iget-object v6, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6, v2}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v6, 0x8

    const/16 v7, 0x2000

    invoke-virtual {v2, v6, v7}, Landroid/media/MediaRecorder;->setVideoEncodingProfileLevel(II)V

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v8, v9}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v5}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v4, 0x36ee80

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide v4, 0x12a05f200L

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    sget-object v4, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    const/4 v5, 0x1

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v5}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v4, 0x2fda0

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v4, 0xac44

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/File;)V

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v12

    iput-object v12, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mInputSurface:Landroid/view/Surface;

    iget-object v6, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    iget v10, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v11, 0x10

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v7, "Recording Display"

    invoke-virtual/range {v6 .. v14}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    sget-object v2, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC_AND_INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-ne v0, v2, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v2, ".aac"

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempAudioFile:Ljava/io/File;

    new-instance v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempAudioFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    iget-object v4, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    sget-object v6, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC_AND_INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-ne v4, v6, :cond_3

    move v3, v5

    :cond_3
    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;-><init>(Ljava/lang/String;Landroid/media/projection/MediaProjection;Z)V

    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudio:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

    :cond_4
    return-void
.end method

.method private recordInternalAudio()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    sget-object v1, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC_AND_INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudio:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->start()V

    :cond_1
    return-void
.end method

.method private stopInternalAudioRecording()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    sget-object v1, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC_AND_INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudio:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudio:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

    :cond_1
    return-void
.end method


# virtual methods
.method end()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mInputSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    invoke-direct {p0}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->stopInternalAudioRecording()V

    const-string p0, "ScreenMediaRecorder"

    const-string v0, "end recording"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected save()Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'screen-\'yyyyMMdd-HHmmss\'.mp4\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_display_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mime_type"

    const-string/jumbo v2, "video/mp4"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "date_added"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "datetaken"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "external_primary"

    invoke-static {v2}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScreenMediaRecorder"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    sget-object v4, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC_AND_INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-eq v2, v4, :cond_0

    sget-object v4, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-ne v2, v4, :cond_1

    :cond_0
    :try_start_0
    const-string v2, "muxing recording"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "temp"

    const-string v4, ".mp4"

    iget-object v5, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-static {v2, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/screenrecord/ScreenRecordingMuxer;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    iget-object v9, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempAudioFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-direct {v4, v8, v5, v6}, Lcom/android/systemui/screenrecord/ScreenRecordingMuxer;-><init>(ILjava/lang/String;[Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMuxer:Lcom/android/systemui/screenrecord/ScreenRecordingMuxer;

    invoke-virtual {v4}, Lcom/android/systemui/screenrecord/ScreenRecordingMuxer;->mux()V

    iget-object v4, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    iput-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "muxing recording "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    const-string/jumbo v2, "w"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/io/OutputStream;)J

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempAudioFile:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v2, Landroid/util/Size;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v2, v3, v0}, Landroid/util/Size;-><init>(II)V

    new-instance v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;

    iget-object v3, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;-><init>(Lcom/android/systemui/screenrecord/ScreenMediaRecorder;Landroid/net/Uri;Ljava/io/File;Landroid/util/Size;)V

    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-object v0
.end method

.method start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "ScreenMediaRecorder"

    const-string/jumbo v1, "start recording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->prepare()V

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    invoke-direct {p0}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->recordInternalAudio()V

    return-void
.end method
