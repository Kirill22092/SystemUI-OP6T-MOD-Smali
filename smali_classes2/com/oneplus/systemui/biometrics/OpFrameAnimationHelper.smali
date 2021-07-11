.class public Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;
.super Ljava/lang/Object;
.source "OpFrameAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$DecodeBitmapTask;,
        Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;
    }
.end annotation


# instance fields
.field private mAnimPostDelayTime:J

.field private mAnimationRunning:Z

.field mAnimationView:Landroid/widget/ImageView;

.field mBitmapArray:[Landroid/graphics/Bitmap;

.field private mCallback:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

.field mExecutorService:Ljava/util/concurrent/ExecutorService;

.field mFrames:[I

.field private mLoop:Z

.field private mOrder:I

.field mPlayFrameNum:I

.field mStartFrameIndex:I

.field mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;[IJII)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mFrames:[I

    const/4 v1, 0x0

    .line 42
    iput v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mOrder:I

    .line 52
    iput v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mPlayFrameNum:I

    .line 53
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mCallback:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 217
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;-><init>(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->runnable:Ljava/lang/Runnable;

    .line 67
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    move-wide p3, v0

    .line 69
    :goto_0
    iput-wide p3, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimPostDelayTime:J

    .line 71
    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mFrames:[I

    if-eqz p2, :cond_2

    .line 72
    array-length p1, p2

    const/4 p2, 0x1

    if-ge p1, p2, :cond_1

    goto :goto_1

    .line 76
    :cond_1
    iput p5, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mStartFrameIndex:I

    .line 77
    iput p6, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mPlayFrameNum:I

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mOrder:I

    return p0
.end method

.method static synthetic access$002(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mOrder:I

    return p1
.end method

.method static synthetic access$008(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)I
    .locals 2

    .line 24
    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mOrder:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mOrder:I

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->runnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimPostDelayTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mLoop:Z

    return p0
.end method

.method static synthetic access$302(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mLoop:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mCallback:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    return-object p0
.end method

.method static synthetic access$402(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;)Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mCallback:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    return-object p1
.end method


# virtual methods
.method public isAnimationRunning()Z
    .locals 0

    .line 260
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationRunning:Z

    return p0
.end method

.method public prepareResource()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 184
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

    .line 190
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 191
    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mPlayFrameNum:I

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 199
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->startExecutor()V

    return-void
.end method

.method public resetResource()V
    .locals 4

    const-string v0, "FrameAnimationHelper"

    const-string v1, "resetResource"

    .line 149
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 156
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 158
    :goto_0
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    if-eqz v2, :cond_0

    .line 159
    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    .line 160
    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 167
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 168
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 169
    iput-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 171
    :cond_2
    iput-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    .line 172
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 173
    iput-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    .line 176
    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationRunning:Z

    return-void
.end method

.method public start(Z)V
    .locals 3

    .line 100
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

    .line 104
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationRunning:Z

    .line 115
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->prepareResource()V

    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mOrder:I

    .line 119
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mLoop:Z

    .line 120
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->runnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public startExecutor()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 89
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 92
    :goto_0
    iget v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mPlayFrameNum:I

    if-ge v0, v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$DecodeBitmapTask;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$DecodeBitmapTask;-><init>(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mFrames:[I

    if-eqz v0, :cond_1

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "FrameAnimationHelper"

    const-string v1, "stop"

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationRunning:Z

    .line 136
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 138
    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mOrder:I

    .line 139
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mLoop:Z

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mCallback:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    .line 142
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 143
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 144
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

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

    .line 204
    :goto_0
    iput-wide p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimPostDelayTime:J

    return-void
.end method

.method public waitAnimationFinished(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mCallback:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    if-eqz p1, :cond_1

    .line 211
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mFrames:[I

    if-eqz p1, :cond_0

    array-length p1, p1

    if-nez p1, :cond_1

    .line 212
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mCallback:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    invoke-interface {p0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;->animationFinished()V

    :cond_1
    return-void
.end method
