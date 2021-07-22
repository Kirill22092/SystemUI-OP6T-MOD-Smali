.class public Lcom/oneplus/aod/OpAodLightEffectContainer;
.super Landroid/widget/FrameLayout;
.source "OpAodLightEffectContainer.java"


# instance fields
.field private mAnimateIndex:I

.field private mAnimationBgLeft:Landroid/graphics/Bitmap;

.field private mAnimationBgRight:Landroid/graphics/Bitmap;

.field private mBgHandler:Landroid/os/Handler;

.field private mBitmapLeft:[Landroid/graphics/Bitmap;

.field private mBitmapRight:[Landroid/graphics/Bitmap;

.field private mCustStartAnimationDelay:I

.field private mDecodeIndex:I

.field private final mFrameRunnable:Ljava/lang/Runnable;

.field private mFramesDuration:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLeftView:Landroid/widget/ImageView;

.field private mLightAnimator:Landroid/animation/ValueAnimator;

.field private mLightIndex:I

.field private mRightView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    .line 38
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    .line 39
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 40
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mCustStartAnimationDelay:I

    .line 41
    const/16 v0, 0x10

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFramesDuration:I

    .line 42
    new-instance v0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpAodLightEffectContainer$1;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    .line 89
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->initViews()V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    .line 95
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    .line 96
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 97
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mCustStartAnimationDelay:I

    .line 98
    const/16 v0, 0x10

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFramesDuration:I

    .line 99
    new-instance v0, Lcom/oneplus/aod/OpAodLightEffectContainer$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpAodLightEffectContainer$2;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "n"    # I

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 150
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    .line 151
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    .line 152
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 153
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mCustStartAnimationDelay:I

    .line 154
    const/16 v0, 0x10

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFramesDuration:I

    .line 155
    new-instance v0, Lcom/oneplus/aod/OpAodLightEffectContainer$3;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpAodLightEffectContainer$3;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "n"    # I
    .param p4, "n2"    # I

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 206
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    .line 207
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    .line 208
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 209
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mCustStartAnimationDelay:I

    .line 210
    const/16 v0, 0x10

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFramesDuration:I

    .line 211
    new-instance v0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpAodLightEffectContainer$4;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    .line 258
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 16
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    return v0
.end method

.method static synthetic access$008(Lcom/oneplus/aod/OpAodLightEffectContainer;)I
    .registers 3
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 16
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oneplus/aod/OpAodLightEffectContainer;)V
    .registers 1
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->decodeBitmap()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/aod/OpAodLightEffectContainer;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/aod/OpAodLightEffectContainer;)I
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 16
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFramesDuration:I

    return v0
.end method

.method static synthetic access$700(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/aod/OpAodLightEffectContainer;)V
    .registers 1
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->decodeCyBitmap()V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/aod/OpAodLightEffectContainer;)I
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 16
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    return v0
.end method

.method private animateNotification()V
    .registers 5

    .prologue
    .line 261
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_22

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 262
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/aod/OpAodLightEffectContainer$5;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/OpAodLightEffectContainer$5;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 280
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 281
    return-void

    .line 261
    nop

    :array_22
    .array-data 4
        0x0
        0x40000000    # 2.0f
    .end array-data
.end method

.method private decodeBitmap()V
    .registers 10

    .prologue
    .line 284
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    if-nez v5, :cond_2b

    .line 285
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v5, "Failed to decodeBitmap. mBitmapLeft="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    const-string v5, " mBitmapRight="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 290
    const-string v5, "OpAodLightEffectContainer"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :goto_2a
    return-void

    .line 293
    :cond_2b
    iget v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    .line 294
    .local v1, "mDecodeIndex":I
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 295
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .local v4, "sb2":Ljava/lang/StringBuilder;
    const-string v5, "aod_light_my_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string v5, "%02d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    invoke-static {v5, v6}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 299
    .local v0, "decodeResource":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_72

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_72

    .line 300
    const-string v5, "OpAodLightEffectContainer"

    const-string v6, "decodeBitmap but recycled"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    goto :goto_2a

    .line 304
    :cond_72
    if-nez v0, :cond_7b

    .line 305
    const-string v5, "OpAodLightEffectContainer"

    const-string v6, "decode bitmap null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_7b
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    aput-object v0, v5, v1

    .line 308
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->flip(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v5, v1

    .line 309
    iget v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    goto :goto_2a
.end method

.method private decodeCyBitmap()V
    .registers 18

    .prologue
    .line 314
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    if-nez v13, :cond_d

    .line 373
    :cond_c
    :goto_c
    return-void

    .line 317
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 318
    .local v7, "resources":Landroid/content/res/Resources;
    const/4 v6, 0x0

    .line 319
    .local v6, "openRawResource":Ljava/io/InputStream;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_13
    const/16 v13, 0x64

    if-ge v3, v13, :cond_f4

    .line 320
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .local v8, "sb":Ljava/lang/StringBuilder;
    const-string v13, "aod_light_cy_l_"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string v13, "%02d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 324
    .local v11, "string":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .local v9, "sb2":Ljava/lang/StringBuilder;
    const-string v13, "aod_light_cy_r_"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v13, "%02d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 328
    .local v12, "string2":Ljava/lang/String;
    const-string v13, "drawable"

    invoke-static {v11, v13}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 329
    .local v4, "identifier":I
    const-string v13, "drawable"

    invoke-static {v12, v13}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 330
    .local v5, "identifier2":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .local v10, "sb3":Ljava/lang/StringBuilder;
    const-string v13, "name_l:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    const-string v13, ", name_r:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const-string v13, ", id_l:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    const-string v13, ", id_r:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    const-string v13, "OpAodLightEffectContainer"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    if-eqz v4, :cond_97

    if-nez v5, :cond_a0

    .line 341
    :cond_97
    const-string v13, "OpAodLightEffectContainer"

    const-string v14, "id_l or id_r 0, end"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 344
    :cond_a0
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v13

    invoke-static {v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 345
    .local v1, "decodeStream":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_b9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v13

    if-eqz v13, :cond_b9

    .line 346
    const-string v13, "OpAodLightEffectContainer"

    const-string v14, "decodeBitmapL but recycled"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 349
    :cond_b9
    if-nez v1, :cond_c2

    .line 350
    const-string v13, "OpAodLightEffectContainer"

    const-string v14, "decode bitmap_l null"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_c2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    aput-object v1, v13, v3

    .line 353
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 354
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 355
    .local v2, "decodeStream2":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_e1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v13

    if-eqz v13, :cond_e1

    .line 356
    const-string v13, "OpAodLightEffectContainer"

    const-string v14, "decodeBitmapR but recycled"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 359
    :cond_e1
    if-nez v2, :cond_ea

    .line 360
    const-string v13, "OpAodLightEffectContainer"

    const-string v14, "decode bitmap_r null"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_ea
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    aput-object v2, v13, v3

    .line 319
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_13

    .line 364
    .end local v1    # "decodeStream":Landroid/graphics/Bitmap;
    .end local v2    # "decodeStream2":Landroid/graphics/Bitmap;
    .end local v4    # "identifier":I
    .end local v5    # "identifier2":I
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "sb2":Ljava/lang/StringBuilder;
    .end local v10    # "sb3":Ljava/lang/StringBuilder;
    .end local v11    # "string":Ljava/lang/String;
    .end local v12    # "string2":Ljava/lang/String;
    :cond_f4
    if-eqz v6, :cond_c

    .line 368
    :try_start_f6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_f9} :catch_fb

    goto/16 :goto_c

    .line 371
    :catch_fb
    move-exception v13

    goto/16 :goto_c
.end method

.method private flip(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v9, 0x0

    .line 376
    if-eqz p1, :cond_4b

    .line 378
    :try_start_3
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 379
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 380
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 381
    const-string v0, "OpAodLightEffectContainer"

    const-string v1, "src is recycled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    .line 394
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :goto_1d
    return-object v0

    .line 384
    .restart local v5    # "matrix":Landroid/graphics/Matrix;
    :cond_1e
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_2d} :catch_30

    move-result-object p1

    move-object v0, p1

    .line 385
    goto :goto_1d

    .line 387
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :catch_30
    move-exception v7

    .line 388
    .local v7, "ex":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .local v8, "sb":Ljava/lang/StringBuilder;
    const-string v0, "flip error: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const-string v0, "OpAodLightEffectContainer"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7    # "ex":Ljava/lang/RuntimeException;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_4b
    move-object v0, v9

    .line 394
    goto :goto_1d
.end method

.method private initViews()V
    .registers 3

    .prologue
    .line 398
    const-string v0, "notification_animation_left"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    .line 399
    const-string v0, "notification_animation_right"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    .line 400
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->relayoutViews()V

    .line 401
    return-void
.end method

.method private loadResources()V
    .registers 5

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "aod_notification_light_right"

    const-string v3, "drawable"

    invoke-static {v2, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgRight:Landroid/graphics/Bitmap;

    .line 405
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "aod_notification_light_left"

    const-string v3, "drawable"

    invoke-static {v2, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 406
    .local v0, "decodeResource":Landroid/graphics/Bitmap;
    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    .line 407
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 408
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgRight:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 409
    return-void
.end method

.method private prepareResources()V
    .registers 4

    .prologue
    const/16 v2, 0x64

    .line 412
    const-string v0, "OpAodLightEffectContainer"

    const-string v1, "prepareResources"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_11

    .line 414
    new-array v0, v2, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    .line 416
    :cond_11
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_19

    .line 417
    new-array v0, v2, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    .line 419
    :cond_19
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_24

    .line 420
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    .line 422
    :cond_24
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->startHandlerThread()V

    .line 423
    return-void
.end method

.method private relayoutViews()V
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 426
    iget v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 427
    .local v2, "mLightIndex":I
    const/16 v7, 0xa

    if-eq v2, v7, :cond_e

    const/16 v7, 0x14

    if-ne v2, v7, :cond_48

    :cond_e
    move v0, v6

    .line 428
    .local v0, "b":Z
    :goto_f
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 430
    .local v4, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_4a

    .line 431
    const-string v7, "op_aod_light_effect_my_width"

    const-string v8, "dimen"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 436
    .local v3, "n":I
    :goto_1d
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 437
    .local v1, "dimensionPixelSize":I
    iget-object v7, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v1, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 438
    iget-object v7, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v1, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 439
    if-eqz v0, :cond_53

    .line 440
    invoke-virtual {p0, v9}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setScaleY(F)V

    .line 441
    invoke-virtual {p0, v9}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setAlpha(F)V

    .line 442
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 443
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 449
    :cond_47
    :goto_47
    return-void

    .end local v0    # "b":Z
    .end local v1    # "dimensionPixelSize":I
    .end local v3    # "n":I
    .end local v4    # "resources":Landroid/content/res/Resources;
    :cond_48
    move v0, v5

    .line 427
    goto :goto_f

    .line 434
    .restart local v0    # "b":Z
    .restart local v4    # "resources":Landroid/content/res/Resources;
    :cond_4a
    const-string v7, "op_aod_light_effect_width"

    const-string v8, "dimen"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .restart local v3    # "n":I
    goto :goto_1d

    .line 445
    .restart local v1    # "dimensionPixelSize":I
    :cond_53
    new-array v6, v6, [I

    const/16 v7, 0x143

    aput v7, v6, v5

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-nez v5, :cond_47

    .line 446
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 447
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_47
.end method

.method private startHandlerThread()V
    .registers 5

    .prologue
    .line 452
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v2, :cond_28

    .line 453
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "HandlerThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 454
    new-instance v0, Lcom/oneplus/aod/OpAodLightEffectContainer$6;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/oneplus/aod/OpAodLightEffectContainer$6;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;Landroid/os/Looper;)V

    .line 469
    .local v0, "mBgHandler":Landroid/os/Handler;
    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    .line 470
    iget v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 471
    .local v1, "mLightIndex":I
    const/16 v2, 0xa

    if-ne v1, v2, :cond_29

    .line 472
    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 478
    .end local v0    # "mBgHandler":Landroid/os/Handler;
    .end local v1    # "mLightIndex":I
    :cond_28
    :goto_28
    return-void

    .line 474
    .restart local v0    # "mBgHandler":Landroid/os/Handler;
    .restart local v1    # "mLightIndex":I
    :cond_29
    const/16 v2, 0x14

    if-ne v1, v2, :cond_28

    .line 475
    const/16 v2, 0x110

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_28
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 481
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 482
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->initViews()V

    .line 483
    return-void
.end method

.method public resetNotificationAnimView()V
    .registers 16

    .prologue
    .line 486
    iget v11, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 487
    .local v11, "mLightIndex":I
    const/16 v13, 0xa

    if-eq v11, v13, :cond_12

    const/16 v13, 0x14

    if-eq v11, v13, :cond_12

    .line 488
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setScaleY(F)V

    .line 489
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setAlpha(F)V

    .line 491
    :cond_12
    const-string v13, "OpAodLightEffectContainer"

    const-string v14, "resetNotificationAnimView"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v14, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    const/4 v13, 0x0

    check-cast v13, Landroid/graphics/Bitmap;

    invoke-virtual {v14, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 493
    iget-object v14, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    const/4 v13, 0x0

    check-cast v13, Landroid/graphics/Bitmap;

    invoke-virtual {v14, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 494
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgRight:Landroid/graphics/Bitmap;

    .line 495
    .local v5, "mAnimationBgRight":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_33

    .line 496
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 497
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgRight:Landroid/graphics/Bitmap;

    .line 499
    :cond_33
    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    .line 500
    .local v4, "mAnimationBgLeft":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_3d

    .line 501
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 502
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    .line 504
    :cond_3d
    iget-object v6, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    .line 505
    .local v6, "mBgHandler":Landroid/os/Handler;
    if-eqz v6, :cond_50

    .line 506
    const/16 v13, 0x100

    invoke-virtual {v6, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 507
    iget-object v13, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    const/16 v14, 0x110

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 508
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    .line 510
    :cond_50
    iget-object v10, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 511
    .local v10, "mHandlerThread":Landroid/os/HandlerThread;
    if-eqz v10, :cond_5e

    .line 512
    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Looper;->quit()V

    .line 513
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 515
    :cond_5e
    iget-object v9, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    .line 516
    .local v9, "mHandler":Landroid/os/Handler;
    if-eqz v9, :cond_6a

    .line 517
    iget-object v13, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v13}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 518
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    .line 520
    :cond_6a
    const/4 v12, 0x0

    .line 521
    .local v12, "n":I
    const/4 v13, 0x0

    iput v13, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    .line 522
    const/4 v13, 0x0

    iput v13, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    .line 523
    iget-object v7, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    .line 524
    .local v7, "mBitmapLeft":[Landroid/graphics/Bitmap;
    if-eqz v7, :cond_83

    .line 525
    array-length v14, v7

    const/4 v13, 0x0

    :goto_77
    if-ge v13, v14, :cond_83

    aget-object v0, v7, v13

    .line 526
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_80

    .line 527
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 525
    :cond_80
    add-int/lit8 v13, v13, 0x1

    goto :goto_77

    .line 531
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_83
    iget-object v8, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    .line 532
    .local v8, "mBitmapRight":[Landroid/graphics/Bitmap;
    if-eqz v8, :cond_95

    .line 533
    array-length v3, v8

    .local v3, "length2":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_89
    if-ge v2, v3, :cond_95

    .line 534
    aget-object v1, v8, v2

    .line 535
    .local v1, "bitmap2":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_92

    .line 536
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 533
    :cond_92
    add-int/lit8 v2, v2, 0x1

    goto :goto_89

    .line 540
    .end local v1    # "bitmap2":Landroid/graphics/Bitmap;
    .end local v2    # "j":I
    .end local v3    # "length2":I
    :cond_95
    return-void
.end method

.method public setLightIndex(I)V
    .registers 12
    .param p1, "n"    # I

    .prologue
    const/16 v9, 0x14

    const/16 v8, 0xa

    .line 543
    iget v6, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    if-eq v6, p1, :cond_20

    .line 544
    if-ne p1, v8, :cond_21

    .line 545
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 546
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v6, "Set horizon light failed. Invalid index: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 548
    const-string v6, "OpAodLightEffectContainer"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_20
    :goto_20
    return-void

    .line 551
    :cond_21
    iget v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 552
    .local v2, "mLightIndex":I
    if-ne v2, v8, :cond_5e

    .line 553
    const/16 v6, 0x10

    iput v6, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFramesDuration:I

    .line 558
    :cond_29
    :goto_29
    const/4 v0, 0x0

    .line 559
    .local v0, "b":Z
    const-string v6, "sys.debug.notify.light.frames"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 560
    .local v1, "int1":I
    if-eqz v1, :cond_35

    .line 561
    iput v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFramesDuration:I

    .line 563
    :cond_35
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 564
    .local v5, "sb2":Ljava/lang/StringBuilder;
    const-string v6, "setLightIndex, mFramesDuration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    iget v6, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFramesDuration:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 566
    const-string v6, "OpAodLightEffectContainer"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget v3, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 568
    .local v3, "mLightIndex2":I
    if-eq v3, v8, :cond_55

    if-eq v3, v9, :cond_55

    if-ne p1, v9, :cond_56

    .line 569
    :cond_55
    const/4 v0, 0x1

    .line 571
    :cond_56
    iput p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 572
    if-eqz v0, :cond_20

    .line 573
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->relayoutViews()V

    goto :goto_20

    .line 555
    .end local v0    # "b":Z
    .end local v1    # "int1":I
    .end local v3    # "mLightIndex2":I
    .end local v5    # "sb2":Ljava/lang/StringBuilder;
    :cond_5e
    if-ne v2, v9, :cond_29

    .line 556
    const/16 v6, 0x28

    iput v6, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFramesDuration:I

    goto :goto_29
.end method

.method public showLight()V
    .registers 9

    .prologue
    .line 579
    iget v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 580
    .local v2, "mLightIndex":I
    const/16 v3, 0xa

    if-eq v2, v3, :cond_22

    const/16 v3, 0x14

    if-eq v2, v3, :cond_22

    .line 581
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setAlpha(F)V

    .line 582
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    .line 583
    .local v1, "mLightAnimator":Landroid/animation/ValueAnimator;
    if-eqz v1, :cond_1b

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-nez v3, :cond_21

    .line 584
    :cond_1b
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->loadResources()V

    .line 585
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->animateNotification()V

    .line 599
    .end local v1    # "mLightAnimator":Landroid/animation/ValueAnimator;
    :cond_21
    :goto_21
    return-void

    .line 589
    :cond_22
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->prepareResources()V

    .line 590
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    .line 591
    .local v0, "mAnimateIndex":I
    if-lez v0, :cond_2d

    const/16 v3, 0x64

    if-lt v0, v3, :cond_21

    .line 592
    :cond_2d
    iget v3, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mCustStartAnimationDelay:I

    if-nez v3, :cond_43

    .line 593
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "cust_aod_notification_start_animation_delay"

    const-string v5, "integer"

    invoke-static {v4, v5}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mCustStartAnimationDelay:I

    .line 595
    :cond_43
    iget-object v3, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 596
    iget-object v3, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    iget v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mCustStartAnimationDelay:I

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_21
.end method
