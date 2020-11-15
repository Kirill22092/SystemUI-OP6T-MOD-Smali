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

.field private mDecodeIndex:I

.field private mFrameRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLeftView:Landroid/widget/ImageView;

.field private mLightAnimator:Landroid/animation/ValueAnimator;

.field private mLightIndex:I

.field private mRepeatCount:I

.field private mRightView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->animateMCL()V

    .line 43
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->initViews()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->animateMCL()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "n"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->animateMCL()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "n"    # I
    .param p4, "n2"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->animateMCL()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 23
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/oneplus/aod/OpAodLightEffectContainer;I)I
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    return p1
.end method

.method static synthetic access$008(Lcom/oneplus/aod/OpAodLightEffectContainer;)I
    .registers 3
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 23
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oneplus/aod/OpAodLightEffectContainer;)V
    .registers 1
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->decodeBitmap()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/aod/OpAodLightEffectContainer;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/aod/OpAodLightEffectContainer;)I
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 23
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRepeatCount:I

    return v0
.end method

.method static synthetic access$708(Lcom/oneplus/aod/OpAodLightEffectContainer;)I
    .registers 3
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 23
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRepeatCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRepeatCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/oneplus/aod/OpAodLightEffectContainer;)I
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 23
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    return v0
.end method

.method static synthetic access$900(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private animateMCL()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    .line 64
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    .line 65
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRepeatCount:I

    .line 67
    new-instance v0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpAodLightEffectContainer$1;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    .line 114
    return-void
.end method

.method private animateNotification()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 117
    const-string v2, "tweaks_edge_notif_repeat_count"

    invoke-static {v2, v6}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    .line 119
    .local v0, "dbIntForKey":I
    new-array v2, v7, [F

    fill-array-data v2, :array_4a

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 120
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/oneplus/aod/OpAodLightEffectContainer$2;

    invoke-direct {v3, p0}, Lcom/oneplus/aod/OpAodLightEffectContainer$2;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 135
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    .line 136
    .local v1, "mLightAnimator":Landroid/animation/ValueAnimator;
    if-nez v0, :cond_3e

    .line 137
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 141
    :goto_2a
    const-string v2, "tweak_repeat_mode"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_44

    .line 142
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 146
    :goto_38
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 147
    return-void

    .line 139
    :cond_3e
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    goto :goto_2a

    .line 144
    :cond_44
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    goto :goto_38

    .line 119
    :array_4a
    .array-data 4
        0x0
        0x40000000    # 2.0f
    .end array-data
.end method

.method private decodeBitmap()V
    .registers 11

    .prologue
    .line 150
    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    if-eqz v4, :cond_51

    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    if-eqz v4, :cond_51

    .line 151
    iget v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    .line 152
    .local v1, "mDecodeIndex":I
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 153
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aod_light_my_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 154
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "%02d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "sb":Ljava/lang/String;
    const-string v4, "drawable"

    .line 156
    invoke-static {v3, v4}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 155
    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    .local v0, "decodeResource":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    aput-object v0, v4, v1

    .line 158
    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->flip(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, v1

    .line 159
    iget v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    .line 161
    .end local v0    # "decodeResource":Landroid/graphics/Bitmap;
    .end local v1    # "mDecodeIndex":I
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v3    # "sb":Ljava/lang/String;
    :cond_51
    return-void
.end method

.method private flip(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 164
    if-eqz p1, :cond_1f

    .line 165
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 166
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 167
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 170
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private initViews()V
    .registers 2

    .prologue
    .line 174
    const v0, 0x7f0a0319

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    .line 175
    const v0, 0x7f0a031a

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    .line 176
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->relayoutViews()V

    .line 177
    return-void
.end method

.method private loadResources()V
    .registers 4

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080226

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    .local v0, "decodeResource":Landroid/graphics/Bitmap;
    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgRight:Landroid/graphics/Bitmap;

    .line 183
    invoke-direct {p0, v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->flip(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    .line 184
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 185
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgRight:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 186
    return-void
.end method

.method private prepareResources()V
    .registers 3

    .prologue
    const/16 v1, 0x64

    .line 189
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_a

    .line 190
    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    .line 192
    :cond_a
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_12

    .line 193
    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    .line 195
    :cond_12
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1d

    .line 196
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    .line 198
    :cond_1d
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->startHandlerThread()V

    .line 199
    return-void
.end method

.method private relayoutViews()V
    .registers 8

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 202
    iget v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3d

    const/4 v0, 0x1

    .line 203
    .local v0, "b":Z
    :goto_9
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 205
    .local v3, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_3f

    .line 206
    const v2, 0x7f0704c7

    .line 210
    .local v2, "n":I
    :goto_12
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 211
    .local v1, "dimensionPixelSize":I
    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 212
    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 213
    if-eqz v0, :cond_3c

    .line 214
    invoke-virtual {p0, v6}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setScaleY(F)V

    .line 215
    invoke-virtual {p0, v6}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setAlpha(F)V

    .line 216
    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 217
    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 219
    :cond_3c
    return-void

    .line 202
    .end local v0    # "b":Z
    .end local v1    # "dimensionPixelSize":I
    .end local v2    # "n":I
    .end local v3    # "resources":Landroid/content/res/Resources;
    :cond_3d
    const/4 v0, 0x0

    goto :goto_9

    .line 208
    .restart local v0    # "b":Z
    .restart local v3    # "resources":Landroid/content/res/Resources;
    :cond_3f
    const v2, 0x7f0704c8

    .restart local v2    # "n":I
    goto :goto_12
.end method

.method private startHandlerThread()V
    .registers 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_22

    .line 223
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 224
    new-instance v0, Lcom/oneplus/aod/OpAodLightEffectContainer$3;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/aod/OpAodLightEffectContainer$3;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    const/16 v1, 0x100

    .line 232
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 234
    :cond_22
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 237
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 238
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->initViews()V

    .line 239
    return-void
.end method

.method public resetNotificationAnimView()V
    .registers 15

    .prologue
    .line 242
    iget v12, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    const/16 v13, 0xa

    if-eq v12, v13, :cond_e

    .line 243
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setScaleY(F)V

    .line 244
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setAlpha(F)V

    .line 246
    :cond_e
    iget-object v12, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 247
    iget-object v12, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 248
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgRight:Landroid/graphics/Bitmap;

    .line 249
    .local v5, "mAnimationBgRight":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_24

    .line 250
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 251
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgRight:Landroid/graphics/Bitmap;

    .line 253
    :cond_24
    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    .line 254
    .local v4, "mAnimationBgLeft":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_2e

    .line 255
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 256
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    .line 258
    :cond_2e
    iget-object v6, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    .line 259
    .local v6, "mBgHandler":Landroid/os/Handler;
    if-eqz v6, :cond_3a

    .line 260
    const/16 v12, 0x100

    invoke-virtual {v6, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 261
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    .line 263
    :cond_3a
    iget-object v10, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 264
    .local v10, "mHandlerThread":Landroid/os/HandlerThread;
    if-eqz v10, :cond_48

    .line 265
    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Looper;->quit()V

    .line 266
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 268
    :cond_48
    iget-object v9, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    .line 269
    .local v9, "mHandler":Landroid/os/Handler;
    if-eqz v9, :cond_54

    .line 270
    iget-object v12, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 271
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    .line 273
    :cond_54
    const/4 v11, 0x0

    .line 274
    .local v11, "n":I
    const/4 v12, 0x0

    iput v12, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    .line 275
    const/4 v12, 0x0

    iput v12, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    .line 276
    iget-object v7, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    .line 277
    .local v7, "mBitmapLeft":[Landroid/graphics/Bitmap;
    if-eqz v7, :cond_6d

    .line 278
    array-length v13, v7

    const/4 v12, 0x0

    :goto_61
    if-ge v12, v13, :cond_6d

    aget-object v0, v7, v12

    .line 279
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_6a

    .line 280
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 278
    :cond_6a
    add-int/lit8 v12, v12, 0x1

    goto :goto_61

    .line 284
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6d
    iget-object v8, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    .line 285
    .local v8, "mBitmapRight":[Landroid/graphics/Bitmap;
    if-eqz v8, :cond_7f

    .line 286
    array-length v3, v8

    .local v3, "length2":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_73
    if-ge v2, v3, :cond_7f

    .line 287
    aget-object v1, v8, v2

    .line 288
    .local v1, "bitmap2":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_7c

    .line 289
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 286
    :cond_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_73

    .line 293
    .end local v1    # "bitmap2":Landroid/graphics/Bitmap;
    .end local v2    # "j":I
    .end local v3    # "length2":I
    :cond_7f
    return-void
.end method

.method public setLightIndex(I)V
    .registers 6
    .param p1, "n"    # I

    .prologue
    const/16 v3, 0xa

    .line 296
    iget v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    if-eq v2, p1, :cond_26

    .line 297
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isMCLVersion()Z

    move-result v2

    if-nez v2, :cond_27

    if-ne p1, v3, :cond_27

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set horizon light failed. Invalid index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "sb":Ljava/lang/String;
    const-string v2, "OpAodLightEffectContainer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .end local v1    # "sb":Ljava/lang/String;
    :cond_26
    :goto_26
    return-void

    .line 302
    :cond_27
    const/4 v0, 0x0

    .line 303
    .local v0, "b":Z
    iget v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    if-eq v2, v3, :cond_2e

    if-ne p1, v3, :cond_2f

    .line 304
    :cond_2e
    const/4 v0, 0x1

    .line 306
    :cond_2f
    iput p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 307
    if-eqz v0, :cond_26

    .line 308
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->relayoutViews()V

    goto :goto_26
.end method

.method public showLight()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const v6, -0x712901

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 314
    iget v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2a

    .line 315
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->prepareResources()V

    .line 316
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    .line 317
    .local v0, "mAnimateIndex":I
    if-lez v0, :cond_17

    const/16 v2, 0x64

    if-lt v0, v2, :cond_29

    .line 318
    :cond_17
    iput v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRepeatCount:I

    .line 319
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 320
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 351
    .end local v0    # "mAnimateIndex":I
    :cond_29
    :goto_29
    return-void

    .line 323
    :cond_2a
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setAlpha(F)V

    .line 324
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    .line 325
    .local v1, "mLightAnimator":Landroid/animation/ValueAnimator;
    if-eqz v1, :cond_39

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_29

    .line 326
    :cond_39
    const-string v2, "sys.aod.app_color_unlock"

    invoke-static {v2, v5}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_49

    const-string v2, "sys.aod.custom_color_unlock"

    .line 327
    invoke-static {v2, v5}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_8d

    .line 329
    :cond_49
    const-string v2, "sys.aod.app_color_unlock"

    invoke-static {v2, v5}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_6a

    .line 330
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    sget v3, Lcom/oneplus/aod/OpSingleNotificationView;->mAppIconColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 332
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    sget v3, Lcom/oneplus/aod/OpSingleNotificationView;->mAppIconColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 347
    :cond_63
    :goto_63
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->loadResources()V

    .line 348
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->animateNotification()V

    goto :goto_29

    .line 334
    :cond_6a
    const-string v2, "sys.aod.custom_color_unlock"

    invoke-static {v2, v5}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_63

    .line 336
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    const-string v3, "tweaks_left_edge_notif_color"

    invoke-static {v3, v6}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 339
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    const-string v3, "tweaks_right_edge_notif_color"

    invoke-static {v3, v6}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_63

    .line 344
    :cond_8d
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 345
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_63
.end method
