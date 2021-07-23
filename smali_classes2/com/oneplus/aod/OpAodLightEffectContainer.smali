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

.field private mFrameRunnable:Ljava/lang/Runnable;

.field private mFramesDuration:I

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
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->animateMCL()V

    .line 41
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->initViews()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->animateMCL()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "n"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->animateMCL()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "n"    # I
    .param p4, "n2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->animateMCL()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 19
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/oneplus/aod/OpAodLightEffectContainer;I)I
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    return p1
.end method

.method static synthetic access$008(Lcom/oneplus/aod/OpAodLightEffectContainer;)I
    .registers 3
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 19
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 19
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    return v0
.end method

.method static synthetic access$1100(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oneplus/aod/OpAodLightEffectContainer;)V
    .registers 1
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->decodeBitmap()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/aod/OpAodLightEffectContainer;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/aod/OpAodLightEffectContainer;)I
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 19
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFramesDuration:I

    return v0
.end method

.method static synthetic access$700(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/aod/OpAodLightEffectContainer;)I
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 19
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRepeatCount:I

    return v0
.end method

.method static synthetic access$808(Lcom/oneplus/aod/OpAodLightEffectContainer;)I
    .registers 3
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 19
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRepeatCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRepeatCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/oneplus/aod/OpAodLightEffectContainer;)V
    .registers 1
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->decodeCyBitmap()V

    return-void
.end method

.method private animateMCL()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 60
    iput v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    .line 61
    iput v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    .line 62
    iput v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRepeatCount:I

    .line 64
    iput v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mCustStartAnimationDelay:I

    .line 65
    const/16 v0, 0x10

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFramesDuration:I

    .line 66
    new-instance v0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpAodLightEffectContainer$1;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    .line 118
    return-void
.end method

.method private animateNotification()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 122
    const-string v1, "tweaks_edge_notif_repeat_count"

    invoke-static {v1, v4}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    .line 123
    .local v0, "dbIntForKey":I
    new-array v1, v5, [F

    fill-array-data v1, :array_4c

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 124
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oneplus/aod/OpAodLightEffectContainer$2;

    invoke-direct {v2, p0}, Lcom/oneplus/aod/OpAodLightEffectContainer$2;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 138
    if-nez v0, :cond_3e

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 140
    :goto_2a
    const-string v1, "tweak_repeat_mode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_46

    .line 141
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 143
    :goto_38
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 144
    return-void

    .line 139
    :cond_3e
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    goto :goto_2a

    .line 142
    :cond_46
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    goto :goto_38

    .line 123
    :array_4c
    .array-data 4
        0x0
        0x40000000    # 2.0f
    .end array-data
.end method

.method private decodeBitmap()V
    .registers 11

    .prologue
    .line 147
    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    if-nez v4, :cond_9

    .line 162
    :cond_8
    :goto_8
    return-void

    .line 150
    :cond_9
    iget v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    .line 151
    .local v1, "mDecodeIndex":I
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 152
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aod_light_my_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%02d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, "sb2":Ljava/lang/String;
    const-string v4, "drawable"

    invoke-static {v3, v4}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 155
    .local v0, "decodeResource":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 156
    iget v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    goto :goto_8

    .line 159
    :cond_4d
    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    aput-object v0, v4, v1

    .line 160
    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->flip(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, v1

    .line 161
    iget v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    goto :goto_8
.end method

.method private decodeCyBitmap()V
    .registers 16

    .prologue
    .line 166
    iget-object v9, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    if-nez v9, :cond_9

    .line 201
    :cond_8
    :goto_8
    return-void

    .line 169
    :cond_9
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 170
    .local v6, "resources":Landroid/content/res/Resources;
    const/4 v5, 0x0

    .line 171
    .local v5, "openRawResource":Ljava/io/InputStream;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_f
    const/16 v9, 0x64

    if-ge v2, v9, :cond_99

    .line 172
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "aod_light_cy_l_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%02d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 173
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 174
    .local v7, "string":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "aod_light_cy_r_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%02d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 175
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 176
    .local v8, "string2":Ljava/lang/String;
    const-string v9, "drawable"

    invoke-static {v7, v9}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 177
    .local v3, "identifier":I
    const-string v9, "drawable"

    invoke-static {v8, v9}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 178
    .local v4, "identifier2":I
    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    .line 181
    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    .local v0, "decodeStream":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_8

    .line 185
    :cond_7d
    iget-object v9, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    aput-object v0, v9, v2

    .line 186
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 187
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 188
    .local v1, "decodeStream2":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_91

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_8

    .line 191
    :cond_91
    iget-object v9, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    aput-object v1, v9, v2

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    .line 193
    .end local v0    # "decodeStream":Landroid/graphics/Bitmap;
    .end local v1    # "decodeStream2":Landroid/graphics/Bitmap;
    .end local v3    # "identifier":I
    .end local v4    # "identifier2":I
    .end local v7    # "string":Ljava/lang/String;
    .end local v8    # "string2":Ljava/lang/String;
    :cond_99
    if-eqz v5, :cond_8

    .line 197
    :try_start_9b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_a0

    goto/16 :goto_8

    .line 199
    :catch_a0
    move-exception v9

    goto/16 :goto_8
.end method

.method private flip(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v7, 0x0

    .line 204
    if-eqz p1, :cond_2a

    .line 206
    :try_start_3
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 207
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 208
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_17

    move-object v0, v7

    .line 218
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :goto_16
    return-object v0

    .line 211
    .restart local v5    # "matrix":Landroid/graphics/Matrix;
    :cond_17
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_26} :catch_29

    move-result-object p1

    move-object v0, p1

    .line 212
    goto :goto_16

    .line 214
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :catch_29
    move-exception v0

    :cond_2a
    move-object v0, v7

    .line 218
    goto :goto_16
.end method

.method private initViews()V
    .registers 3

    .prologue
    .line 222
    const-string v0, "notification_animation_left"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    .line 223
    const-string v0, "notification_animation_right"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    .line 224
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->relayoutViews()V

    .line 225
    return-void
.end method

.method private loadResources()V
    .registers 5

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "aod_notification_light_right"

    const-string v3, "drawable"

    invoke-static {v2, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgRight:Landroid/graphics/Bitmap;

    .line 229
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "aod_notification_light_left"

    const-string v3, "drawable"

    invoke-static {v2, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 230
    .local v0, "decodeResource":Landroid/graphics/Bitmap;
    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    .line 231
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 232
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgRight:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 233
    return-void
.end method

.method private prepareResources()V
    .registers 3

    .prologue
    const/16 v1, 0x64

    .line 236
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_a

    .line 237
    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    .line 239
    :cond_a
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_12

    .line 240
    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    .line 242
    :cond_12
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1d

    .line 243
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    .line 245
    :cond_1d
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->startHandlerThread()V

    .line 246
    return-void
.end method

.method private relayoutViews()V
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 249
    iget v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 250
    .local v2, "mLightIndex":I
    const/16 v7, 0xa

    if-eq v2, v7, :cond_e

    const/16 v7, 0x14

    if-ne v2, v7, :cond_48

    :cond_e
    move v0, v6

    .line 251
    .local v0, "b":Z
    :goto_f
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 253
    .local v4, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_4a

    .line 254
    const-string v7, "op_aod_light_effect_my_width"

    const-string v8, "dimen"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 259
    .local v3, "n":I
    :goto_1d
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 260
    .local v1, "dimensionPixelSize":I
    iget-object v7, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v1, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 261
    iget-object v7, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v1, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 262
    if-eqz v0, :cond_53

    .line 263
    invoke-virtual {p0, v9}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setScaleY(F)V

    .line 264
    invoke-virtual {p0, v9}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setAlpha(F)V

    .line 265
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 266
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 272
    :cond_47
    :goto_47
    return-void

    .end local v0    # "b":Z
    .end local v1    # "dimensionPixelSize":I
    .end local v3    # "n":I
    .end local v4    # "resources":Landroid/content/res/Resources;
    :cond_48
    move v0, v5

    .line 250
    goto :goto_f

    .line 257
    .restart local v0    # "b":Z
    .restart local v4    # "resources":Landroid/content/res/Resources;
    :cond_4a
    const-string v7, "op_aod_light_effect_width"

    const-string v8, "dimen"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .restart local v3    # "n":I
    goto :goto_1d

    .line 268
    .restart local v1    # "dimensionPixelSize":I
    :cond_53
    new-array v6, v6, [I

    const/16 v7, 0x143

    aput v7, v6, v5

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-nez v5, :cond_47

    .line 269
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 270
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_47
.end method

.method private startHandlerThread()V
    .registers 5

    .prologue
    .line 275
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v2, :cond_28

    .line 276
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "HandlerThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 277
    new-instance v0, Lcom/oneplus/aod/OpAodLightEffectContainer$3;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/oneplus/aod/OpAodLightEffectContainer$3;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;Landroid/os/Looper;)V

    .line 292
    .local v0, "mBgHandler":Landroid/os/Handler;
    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    .line 293
    iget v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 294
    .local v1, "mLightIndex":I
    const/16 v2, 0xa

    if-ne v1, v2, :cond_29

    .line 295
    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 301
    .end local v0    # "mBgHandler":Landroid/os/Handler;
    .end local v1    # "mLightIndex":I
    :cond_28
    :goto_28
    return-void

    .line 297
    .restart local v0    # "mBgHandler":Landroid/os/Handler;
    .restart local v1    # "mLightIndex":I
    :cond_29
    const/16 v2, 0x14

    if-ne v1, v2, :cond_28

    .line 298
    const/16 v2, 0x110

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_28
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 304
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 305
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->initViews()V

    .line 306
    return-void
.end method

.method public resetNotificationAnimView()V
    .registers 16

    .prologue
    .line 309
    iget v11, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 310
    .local v11, "mLightIndex":I
    const/16 v13, 0xa

    if-eq v11, v13, :cond_12

    const/16 v13, 0x14

    if-eq v11, v13, :cond_12

    .line 311
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setScaleY(F)V

    .line 312
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setAlpha(F)V

    .line 314
    :cond_12
    iget-object v14, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    const/4 v13, 0x0

    check-cast v13, Landroid/graphics/Bitmap;

    invoke-virtual {v14, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 315
    iget-object v14, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    const/4 v13, 0x0

    check-cast v13, Landroid/graphics/Bitmap;

    invoke-virtual {v14, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 316
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgRight:Landroid/graphics/Bitmap;

    .line 317
    .local v5, "mAnimationBgRight":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_2c

    .line 318
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 319
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgRight:Landroid/graphics/Bitmap;

    .line 321
    :cond_2c
    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    .line 322
    .local v4, "mAnimationBgLeft":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_36

    .line 323
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 324
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    .line 326
    :cond_36
    iget-object v6, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    .line 327
    .local v6, "mBgHandler":Landroid/os/Handler;
    if-eqz v6, :cond_49

    .line 328
    const/16 v13, 0x100

    invoke-virtual {v6, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 329
    iget-object v13, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    const/16 v14, 0x110

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 330
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    .line 332
    :cond_49
    iget-object v10, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 333
    .local v10, "mHandlerThread":Landroid/os/HandlerThread;
    if-eqz v10, :cond_57

    .line 334
    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Looper;->quit()V

    .line 335
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 337
    :cond_57
    iget-object v9, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    .line 338
    .local v9, "mHandler":Landroid/os/Handler;
    if-eqz v9, :cond_63

    .line 339
    iget-object v13, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v13}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 340
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    .line 342
    :cond_63
    const/4 v12, 0x0

    .line 343
    .local v12, "n":I
    const/4 v13, 0x0

    iput v13, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    .line 344
    const/4 v13, 0x0

    iput v13, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    .line 345
    iget-object v7, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    .line 346
    .local v7, "mBitmapLeft":[Landroid/graphics/Bitmap;
    if-eqz v7, :cond_7c

    .line 347
    array-length v14, v7

    const/4 v13, 0x0

    :goto_70
    if-ge v13, v14, :cond_7c

    aget-object v0, v7, v13

    .line 348
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_79

    .line 349
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 347
    :cond_79
    add-int/lit8 v13, v13, 0x1

    goto :goto_70

    .line 353
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_7c
    iget-object v8, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    .line 354
    .local v8, "mBitmapRight":[Landroid/graphics/Bitmap;
    if-eqz v8, :cond_8e

    .line 355
    array-length v3, v8

    .local v3, "length2":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_82
    if-ge v2, v3, :cond_8e

    .line 356
    aget-object v1, v8, v2

    .line 357
    .local v1, "bitmap2":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_8b

    .line 358
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 355
    :cond_8b
    add-int/lit8 v2, v2, 0x1

    goto :goto_82

    .line 362
    .end local v1    # "bitmap2":Landroid/graphics/Bitmap;
    .end local v2    # "j":I
    .end local v3    # "length2":I
    :cond_8e
    return-void
.end method

.method public setLightIndex(I)V
    .registers 10
    .param p1, "n"    # I

    .prologue
    const/16 v7, 0x14

    const/16 v6, 0xa

    .line 365
    iget v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    if-eq v4, p1, :cond_a

    .line 366
    if-ne p1, v6, :cond_b

    .line 390
    :cond_a
    :goto_a
    return-void

    .line 369
    :cond_b
    iget v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 370
    .local v2, "mLightIndex":I
    if-ne v2, v6, :cond_30

    .line 371
    const/16 v4, 0x10

    iput v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFramesDuration:I

    .line 376
    :cond_13
    :goto_13
    const/4 v0, 0x0

    .line 377
    .local v0, "b":Z
    const-string v4, "sys.debug.notify.light.frames"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 378
    .local v1, "int1":I
    if-eqz v1, :cond_1f

    .line 379
    iput v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFramesDuration:I

    .line 381
    :cond_1f
    iget v3, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 382
    .local v3, "mLightIndex2":I
    if-eq v3, v6, :cond_27

    if-eq v3, v7, :cond_27

    if-ne p1, v7, :cond_28

    .line 383
    :cond_27
    const/4 v0, 0x1

    .line 385
    :cond_28
    iput p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 386
    if-eqz v0, :cond_a

    .line 387
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->relayoutViews()V

    goto :goto_a

    .line 373
    .end local v0    # "b":Z
    .end local v1    # "int1":I
    .end local v3    # "mLightIndex2":I
    :cond_30
    if-ne v2, v7, :cond_13

    .line 374
    const/16 v4, 0x28

    iput v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFramesDuration:I

    goto :goto_13
.end method

.method public showLight()V
    .registers 9

    .prologue
    .line 393
    iget v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 394
    .local v2, "mLightIndex":I
    const/16 v3, 0xa

    if-eq v2, v3, :cond_20

    const/16 v3, 0x14

    if-eq v2, v3, :cond_20

    .line 395
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setAlpha(F)V

    .line 396
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    .line 397
    .local v1, "mLightAnimator":Landroid/animation/ValueAnimator;
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 398
    :cond_19
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->loadResources()V

    .line 399
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->animateNotification()V

    .line 414
    .end local v1    # "mLightAnimator":Landroid/animation/ValueAnimator;
    :cond_1f
    :goto_1f
    return-void

    .line 403
    :cond_20
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->prepareResources()V

    .line 404
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    .line 405
    .local v0, "mAnimateIndex":I
    if-lez v0, :cond_2b

    const/16 v3, 0x64

    if-lt v0, v3, :cond_1f

    .line 406
    :cond_2b
    iget v3, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mCustStartAnimationDelay:I

    if-nez v3, :cond_41

    .line 407
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "cust_aod_notification_start_animation_delay"

    const-string v5, "integer"

    invoke-static {v4, v5}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mCustStartAnimationDelay:I

    .line 409
    :cond_41
    const/4 v3, 0x1

    iput v3, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRepeatCount:I

    .line 410
    iget-object v3, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 411
    iget-object v3, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    iget v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mCustStartAnimationDelay:I

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1f
.end method
