.class public Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;
.super Ljava/lang/Object;
.source "ScreenInternalAudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "ScreenAudioRecorder"


# instance fields
.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mAudioRecordMic:Landroid/media/AudioRecord;

.field private mCodec:Landroid/media/MediaCodec;

.field private mConfig:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;

.field private mMediaProjection:Landroid/media/projection/MediaProjection;

.field private mMic:Z

.field private mMuxer:Landroid/media/MediaMuxer;

.field private mPresentationTime:J

.field private mThread:Ljava/lang/Thread;

.field private mTotalBytes:J

.field private mTrackId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/media/projection/MediaProjection;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;

    invoke-direct {v0}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mConfig:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mTrackId:I

    .line 56
    iput-boolean p3, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMic:Z

    .line 57
    new-instance p3, Landroid/media/MediaMuxer;

    const/4 v0, 0x0

    invoke-direct {p3, p1, v0}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMuxer:Landroid/media/MediaMuxer;

    .line 58
    iput-object p2, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 59
    sget-object p2, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "creating audio file "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->setupSimple()V

    return-void
.end method

.method private addAndConvertBuffers([SI[SI)[B
    .locals 5

    .line 185
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, 0x0

    if-gez p0, :cond_0

    new-array p0, v0, [B

    return-object p0

    :cond_0
    mul-int/lit8 v1, p0, 0x2

    .line 187
    new-array v1, v1, [B

    :goto_0
    if-ge v0, p0, :cond_5

    if-le v0, p2, :cond_1

    .line 191
    aget-short v2, p3, v0

    goto :goto_1

    :cond_1
    if-le v0, p4, :cond_2

    .line 193
    aget-short v2, p1, v0

    goto :goto_1

    .line 195
    :cond_2
    aget-short v2, p1, v0

    aget-short v3, p3, v0

    add-int/2addr v2, v3

    :goto_1
    const/16 v3, 0x7fff

    if-le v2, v3, :cond_3

    move v2, v3

    :cond_3
    const/16 v3, -0x8000

    if-ge v2, v3, :cond_4

    move v2, v3

    :cond_4
    mul-int/lit8 v3, v0, 0x2

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    .line 201
    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 202
    aput-byte v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method private encode([BI)V
    .locals 11

    const/4 v0, 0x0

    :goto_0
    if-lez p2, :cond_2

    .line 211
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-gez v5, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->writeOutput()V

    return-void

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 217
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 218
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-le p2, v2, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, p2

    :goto_1
    add-int/lit8 v2, v7, 0x0

    sub-int/2addr p2, v7

    .line 222
    invoke-virtual {v1, p1, v0, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v0, v7

    .line 224
    iget-object v4, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    iget-wide v8, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mPresentationTime:J

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 225
    iget-wide v3, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mTotalBytes:J

    int-to-long v1, v2

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mTotalBytes:J

    const-wide/32 v1, 0xf4240

    const-wide/16 v5, 0x2

    .line 226
    div-long/2addr v3, v5

    mul-long/2addr v3, v1

    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mConfig:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;

    iget v1, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->sampleRate:I

    int-to-long v1, v1

    div-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mPresentationTime:J

    .line 228
    invoke-direct {p0}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->writeOutput()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private endStream()V
    .locals 10

    .line 233
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    .line 234
    iget-object v3, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    iget-wide v7, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mPresentationTime:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 236
    invoke-direct {p0}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->writeOutput()V

    return-void
.end method

.method private synthetic lambda$setupSimple$0(I)V
    .locals 6

    .line 132
    iget-boolean v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMic:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 133
    div-int/lit8 p1, p1, 0x2

    new-array v0, p1, [S

    .line 134
    new-array p1, p1, [S

    goto :goto_0

    .line 136
    :cond_0
    new-array p1, p1, [B

    move-object v0, v1

    move-object v1, p1

    move-object p1, v0

    .line 143
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMic:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 144
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Landroid/media/AudioRecord;->read([SII)I

    move-result v1

    .line 146
    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecordMic:Landroid/media/AudioRecord;

    array-length v4, p1

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/AudioRecord;->read([SII)I

    move-result v3

    const v2, 0x3fb33333    # 1.4f

    .line 149
    invoke-direct {p0, p1, v3, v2}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->scaleValues([SIF)[S

    .line 151
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    .line 152
    invoke-direct {p0, v0, v1, p1, v3}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->addAndConvertBuffers([SI[SI)[B

    move-result-object v4

    move v5, v3

    move v3, v1

    move-object v1, v4

    move v4, v5

    goto :goto_1

    .line 155
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v4, v1

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/AudioRecord;->read([BII)I

    move-result v2

    move v4, v3

    :goto_1
    if-gez v2, :cond_2

    .line 160
    sget-object p1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "read error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shorts internal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shorts mic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-direct {p0}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->endStream()V

    return-void

    .line 165
    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->encode([BI)V

    goto :goto_0
.end method

.method private scaleValues([SIF)[S
    .locals 3

    const/4 p0, 0x0

    :goto_0
    if-ge p0, p2, :cond_2

    .line 173
    aget-short v0, p1, p0

    .line 174
    aget-short v0, p1, p0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    const/16 v1, -0x8000

    const/16 v2, 0x7fff

    if-le v0, v2, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    if-ge v0, v1, :cond_1

    move v0, v1

    :cond_1
    :goto_1
    int-to-short v0, v0

    .line 180
    aput-short v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private setupSimple()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mConfig:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;

    iget v1, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->sampleRate:I

    iget v2, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->channelInMask:I

    iget v0, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->encoding:I

    invoke-static {v1, v2, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    .line 92
    sget-object v2, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio buffer size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mConfig:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;

    iget v3, v3, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->encoding:I

    .line 95
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mConfig:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;

    iget v3, v3, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->sampleRate:I

    .line 96
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mConfig:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;

    iget v3, v3, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->channelOutMask:I

    .line 97
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 98
    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    .line 100
    new-instance v3, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    iget-object v4, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    invoke-direct {v3, v4}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;-><init>(Landroid/media/projection/MediaProjection;)V

    const/4 v8, 0x1

    .line 102
    invoke-virtual {v3, v8}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 103
    invoke-virtual {v3, v4}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    move-result-object v3

    const/16 v4, 0xe

    .line 104
    invoke-virtual {v3, v4}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    move-result-object v3

    .line 105
    invoke-virtual {v3}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->build()Landroid/media/AudioPlaybackCaptureConfiguration;

    move-result-object v3

    .line 107
    new-instance v4, Landroid/media/AudioRecord$Builder;

    invoke-direct {v4}, Landroid/media/AudioRecord$Builder;-><init>()V

    .line 108
    invoke-virtual {v4, v2}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object v2

    .line 109
    invoke-virtual {v2, v3}, Landroid/media/AudioRecord$Builder;->setAudioPlaybackCaptureConfig(Landroid/media/AudioPlaybackCaptureConfiguration;)Landroid/media/AudioRecord$Builder;

    move-result-object v2

    .line 110
    invoke-virtual {v2}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    .line 112
    iget-boolean v2, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMic:Z

    if-eqz v2, :cond_0

    .line 113
    new-instance v9, Landroid/media/AudioRecord;

    const/4 v3, 0x7

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mConfig:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;

    iget v4, v2, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->sampleRate:I

    const/16 v5, 0x10

    iget v6, v2, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->encoding:I

    move-object v2, v9

    move v7, v0

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v9, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecordMic:Landroid/media/AudioRecord;

    :cond_0
    const-string v2, "audio/mp4a-latm"

    .line 117
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    .line 118
    iget-object v3, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mConfig:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;

    iget v3, v3, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->sampleRate:I

    invoke-static {v2, v3, v8}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "aac-profile"

    .line 120
    invoke-virtual {v2, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 122
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mConfig:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;

    iget v1, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->bitRate:I

    const-string v3, "bitrate"

    invoke-virtual {v2, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 123
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mConfig:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;

    iget v1, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->encoding:I

    const-string v3, "pcm-encoding"

    invoke-virtual {v2, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 124
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 127
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/systemui/screenrecord/-$$Lambda$ScreenInternalAudioRecorder$FTFstmjlXd36MWRTIZuGd5VznkI;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/screenrecord/-$$Lambda$ScreenInternalAudioRecorder$FTFstmjlXd36MWRTIZuGd5VznkI;-><init>(Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mThread:Ljava/lang/Thread;

    return-void
.end method

.method private writeOutput()V
    .locals 5

    .line 241
    :goto_0
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 242
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mTrackId:I

    .line 245
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-void

    .line 251
    :cond_1
    iget v2, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mTrackId:I

    if-gez v2, :cond_2

    return-void

    .line 252
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 254
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v3, :cond_4

    .line 256
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMuxer:Landroid/media/MediaMuxer;

    iget v4, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mTrackId:I

    invoke-virtual {v3, v4, v2, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 258
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public end()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 285
    iget-boolean v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMic:Z

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecordMic:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 289
    iget-boolean v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMic:Z

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecordMic:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 293
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 295
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 297
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 299
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 300
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    const/4 v0, 0x0

    .line 301
    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mThread:Ljava/lang/Thread;

    return-void
.end method

.method public synthetic lambda$setupSimple$0$ScreenInternalAudioRecorder(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->lambda$setupSimple$0(I)V

    return-void
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 268
    sget-object v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->TAG:Ljava/lang/String;

    const-string v1, "a recording is being done in parallel or stop is not called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 271
    iget-boolean v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMic:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecordMic:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 272
    :cond_1
    sget-object v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 277
    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    .line 275
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Audio recording failed to start"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
