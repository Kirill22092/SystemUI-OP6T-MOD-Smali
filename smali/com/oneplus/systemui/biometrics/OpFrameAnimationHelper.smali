.class public Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;
.super Ljava/lang/Object;
.source "OpFrameAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;
    }
.end annotation


# instance fields
.field private mAnimPostDelayTime:J

.field private mAnimationRunning:Z

.field private mAnimationView:Landroid/widget/ImageView;

.field private mBitmapArray:[Landroid/graphics/Bitmap;

.field private mCallback:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

.field private mDecodeIndex:I

.field private mFrames:[I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLoop:Z

.field private mOrder:I

.field private mPlayFrameNum:I

.field private mStartFrameIndex:I

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;[IJII)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mFrames:[I

    const/4 v1, 0x0

    .line 35
    iput v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mOrder:I

    .line 36
    iput v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mDecodeIndex:I

    .line 47
    iput v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mPlayFrameNum:I

    .line 48
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mCallback:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    .line 256
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;-><init>(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->runnable:Ljava/lang/Runnable;

    .line 58
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    move-wide p3, v0

    .line 60
    :goto_0
    iput-wide p3, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimPostDelayTime:J

    .line 62
    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mFrames:[I

    .line 63
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mFrames:[I

    if-eqz p1, :cond_2

    array-length p1, p1

    const/4 p2, 0x1

    if-ge p1, p2, :cond_1

    goto :goto_1

    .line 67
    :cond_1
    iput p5, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mStartFrameIndex:I

    .line 68
    iput p6, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mPlayFrameNum:I

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)Landroid/os/Handler;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)[I
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mFrames:[I

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mLoop:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mLoop:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mCallback:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;)Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mCallback:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mDecodeIndex:I

    return p0
.end method

.method static synthetic access$300(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->decodeBitmap()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mOrder:I

    return p0
.end method

.method static synthetic access$402(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;I)I
    .locals 0

    .line 18
    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mOrder:I

    return p1
.end method

.method static synthetic access$408(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)I
    .locals 2

    .line 18
    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mOrder:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mOrder:I

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mPlayFrameNum:I

    return p0
.end method

.method static synthetic access$600(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)Landroid/widget/ImageView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)[Landroid/graphics/Bitmap;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->runnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimPostDelayTime:J

    return-wide v0
.end method

.method private decodeBitmap()V
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 222
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 224
    iget v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mStartFrameIndex:I

    iget v2, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mPlayFrameNum:I

    add-int/2addr v2, v1

    .line 225
    iget v3, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mDecodeIndex:I

    add-int/2addr v1, v3

    if-lt v1, v2, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v3, 0x1

    .line 231
    iput v2, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mDecodeIndex:I

    .line 232
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mFrames:[I

    aget v1, v2, v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 234
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    if-eqz p0, :cond_2

    .line 235
    aput-object v0, p0, v3

    :cond_2
    return-void
.end method


# virtual methods
.method public isAnimationRunning()Z
    .locals 0

    .line 299
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationRunning:Z

    return p0
.end method

.method public prepareResource()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareResource startFrameIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mStartFrameIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " frameNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mPlayFrameNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameAnimationHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 204
    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mPlayFrameNum:I

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->startHandlerThread()V

    .line 213
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public resetResource()V
    .locals 4

    const-string v0, "FrameAnimationHelper"

    const-string v1, "resetResource"

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 165
    :goto_0
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    if-eqz v2, :cond_0

    .line 166
    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    .line 167
    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_2
    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 180
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    .line 181
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 182
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    .line 185
    iput v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mDecodeIndex:I

    .line 189
    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationRunning:Z

    return-void
.end method

.method public start(Z)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mFrames:[I

    if-eqz v0, :cond_1

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mPlayFrameNum:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "FrameAnimationHelper"

    const-string v2, "start"

    .line 109
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationRunning:Z

    .line 120
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->prepareResource()V

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mOrder:I

    .line 124
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mLoop:Z

    .line 125
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->runnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public startHandlerThread()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 78
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 79
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;-><init>(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mFrames:[I

    if-eqz v0, :cond_1

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "FrameAnimationHelper"

    const-string v1, "stop"

    .line 135
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationRunning:Z

    .line 141
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 143
    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mOrder:I

    .line 144
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mLoop:Z

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mCallback:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    .line 147
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 148
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 149
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_1

    const/16 v0, 0x100

    .line 151
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateAnimPostDelayTime(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide p1, v0

    .line 243
    :goto_0
    iput-wide p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimPostDelayTime:J

    return-void
.end method

.method public waitAnimationFinished(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mCallback:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    .line 250
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mCallback:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mFrames:[I

    if-eqz p1, :cond_0

    array-length p1, p1

    if-nez p1, :cond_1

    .line 251
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mCallback:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    invoke-interface {p0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;->animationFinished()V

    :cond_1
    return-void
.end method
