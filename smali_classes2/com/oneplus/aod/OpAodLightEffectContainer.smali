.class public Lcom/oneplus/aod/OpAodLightEffectContainer;
.super Landroid/widget/FrameLayout;
.source "OpAodLightEffectContainer.java"


# instance fields
.field private currentRepeatMode:Z

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
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->animateMCL()V

    .line 42
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->initViews()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->animateMCL()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "n"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->animateMCL()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "n"    # I
    .param p4, "n2"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->animateMCL()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->currentRepeatMode:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/OpAodLightEffectContainer;)V
    .registers 1
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->animateModeRepeat()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/aod/OpAodLightEffectContainer;)V
    .registers 1
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->animateModeRestart()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/aod/OpAodLightEffectContainer;)V
    .registers 1
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->decodeCyBitmap()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/aod/OpAodLightEffectContainer;)I
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 19
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/aod/OpAodLightEffectContainer;)V
    .registers 1
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->decodeBitmap()V

    return-void
.end method

.method private animateMCL()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 61
    iput v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    .line 62
    iput v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    .line 63
    iput v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRepeatCount:I

    .line 65
    iput v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mCustStartAnimationDelay:I

    .line 66
    const/16 v0, 0x10

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFramesDuration:I

    .line 67
    iput-boolean v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->currentRepeatMode:Z

    .line 68
    new-instance v0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpAodLightEffectContainer$1;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    .line 75
    return-void
.end method

.method private animateModeRepeat()V
    .registers 9

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x0

    const v5, -0x712901

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 126
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    if-gt v0, v7, :cond_3d

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3d

    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_3d

    .line 127
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 128
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    .line 169
    :goto_31
    return-void

    .line 131
    :cond_32
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 133
    :cond_3d
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    if-gt v0, v7, :cond_72

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_72

    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_72

    .line 134
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 135
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    goto :goto_31

    .line 138
    :cond_67
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 140
    :cond_72
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    if-lez v0, :cond_b4

    .line 141
    const-string v0, "sys.aod.custom_color_unlock"

    invoke-static {v0, v6}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_a9

    .line 142
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    const-string v1, "tweaks_left_edge_notif_color"

    invoke-static {v1, v5}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 145
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    const-string v1, "tweaks_right_edge_notif_color"

    invoke-static {v1, v5}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 152
    :goto_98
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFramesDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 168
    :cond_a2
    :goto_a2
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    goto :goto_31

    .line 149
    :cond_a9
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 150
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_98

    .line 155
    :cond_b4
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 156
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 157
    const-string v0, "tweaks_edge_notif_repeat_count"

    invoke-static {v0, v3}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_cc

    .line 158
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRepeatCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRepeatCount:I

    .line 160
    :cond_cc
    const-string v0, "tweaks_edge_notif_repeat_count"

    invoke-static {v0, v3}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_de

    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRepeatCount:I

    const-string v1, "tweaks_edge_notif_repeat_count"

    .line 161
    invoke-static {v1, v3}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v1

    if-gt v0, v1, :cond_a2

    .line 163
    :cond_de
    iput v3, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    .line 164
    iput-boolean v6, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->currentRepeatMode:Z

    .line 165
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFramesDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a2
.end method

.method private animateModeRestart()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const v5, -0x712901

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 78
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    if-ltz v0, :cond_3b

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3b

    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_3b

    .line 79
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 80
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    .line 123
    :goto_2f
    return-void

    .line 83
    :cond_30
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    :cond_3b
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    if-ltz v0, :cond_70

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_70

    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_70

    .line 86
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 87
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    goto :goto_2f

    .line 90
    :cond_65
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 92
    :cond_70
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_b4

    .line 93
    const-string v0, "sys.aod.custom_color_unlock"

    invoke-static {v0, v6}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_a9

    .line 94
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    const-string v1, "tweaks_left_edge_notif_color"

    invoke-static {v1, v5}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 97
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    const-string v1, "tweaks_right_edge_notif_color"

    invoke-static {v1, v5}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 104
    :goto_98
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFramesDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    :cond_a2
    :goto_a2
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    goto :goto_2f

    .line 101
    :cond_a9
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 102
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_98

    .line 107
    :cond_b4
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 109
    const-string v0, "tweaks_edge_notif_repeat_count"

    invoke-static {v0, v3}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_cc

    .line 110
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRepeatCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRepeatCount:I

    .line 112
    :cond_cc
    const-string v0, "tweaks_edge_notif_repeat_count"

    invoke-static {v0, v3}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_de

    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRepeatCount:I

    const-string v1, "tweaks_edge_notif_repeat_count"

    .line 113
    invoke-static {v1, v3}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v1

    if-gt v0, v1, :cond_a2

    .line 115
    :cond_de
    const-string v0, "tweak_repeat_mode"

    invoke-static {v0, v6}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_f3

    .line 116
    iput-boolean v3, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->currentRepeatMode:Z

    .line 119
    :goto_e8
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFramesDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a2

    .line 118
    :cond_f3
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    goto :goto_e8
.end method

.method private animateNotification()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 172
    const-string v1, "tweaks_edge_notif_repeat_count"

    invoke-static {v1, v4}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    .line 173
    .local v0, "dbIntForKey":I
    new-array v1, v5, [F

    fill-array-data v1, :array_4c

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 174
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oneplus/aod/OpAodLightEffectContainer$2;

    invoke-direct {v2, p0}, Lcom/oneplus/aod/OpAodLightEffectContainer$2;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 188
    if-nez v0, :cond_3e

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 190
    :goto_2a
    const-string v1, "tweak_repeat_mode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_46

    .line 191
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 193
    :goto_38
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 194
    return-void

    .line 189
    :cond_3e
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    goto :goto_2a

    .line 192
    :cond_46
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    goto :goto_38

    .line 173
    :array_4c
    .array-data 4
        0x0
        0x40000000    # 2.0f
    .end array-data
.end method

.method private decodeBitmap()V
    .registers 11

    .prologue
    .line 197
    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    if-nez v4, :cond_9

    .line 212
    :cond_8
    :goto_8
    return-void

    .line 200
    :cond_9
    iget v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    .line 201
    .local v1, "mDecodeIndex":I
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 202
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

    .line 203
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, "sb2":Ljava/lang/String;
    const-string v4, "drawable"

    invoke-static {v3, v4}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 205
    .local v0, "decodeResource":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 206
    iget v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    goto :goto_8

    .line 209
    :cond_4d
    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    aput-object v0, v4, v1

    .line 210
    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->flip(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, v1

    .line 211
    iget v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    goto :goto_8
.end method

.method private decodeCyBitmap()V
    .registers 16

    .prologue
    .line 216
    iget-object v9, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    if-nez v9, :cond_9

    .line 251
    :cond_8
    :goto_8
    return-void

    .line 219
    :cond_9
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 220
    .local v6, "resources":Landroid/content/res/Resources;
    const/4 v5, 0x0

    .line 221
    .local v5, "openRawResource":Ljava/io/InputStream;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_f
    const/16 v9, 0x64

    if-ge v2, v9, :cond_99

    .line 222
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

    .line 223
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 224
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

    .line 225
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 226
    .local v8, "string2":Ljava/lang/String;
    const-string v9, "drawable"

    invoke-static {v7, v9}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 227
    .local v3, "identifier":I
    const-string v9, "drawable"

    invoke-static {v8, v9}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 228
    .local v4, "identifier2":I
    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    .line 231
    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 232
    .local v0, "decodeStream":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_8

    .line 235
    :cond_7d
    iget-object v9, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    aput-object v0, v9, v2

    .line 236
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 237
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 238
    .local v1, "decodeStream2":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_91

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_8

    .line 241
    :cond_91
    iget-object v9, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    aput-object v1, v9, v2

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    .line 243
    .end local v0    # "decodeStream":Landroid/graphics/Bitmap;
    .end local v1    # "decodeStream2":Landroid/graphics/Bitmap;
    .end local v3    # "identifier":I
    .end local v4    # "identifier2":I
    .end local v7    # "string":Ljava/lang/String;
    .end local v8    # "string2":Ljava/lang/String;
    :cond_99
    if-eqz v5, :cond_8

    .line 247
    :try_start_9b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_a0

    goto/16 :goto_8

    .line 249
    :catch_a0
    move-exception v9

    goto/16 :goto_8
.end method

.method private flip(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v7, 0x0

    .line 254
    if-eqz p1, :cond_2a

    .line 256
    :try_start_3
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 257
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 258
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_17

    move-object v0, v7

    .line 268
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :goto_16
    return-object v0

    .line 261
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

    .line 262
    goto :goto_16

    .line 264
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :catch_29
    move-exception v0

    :cond_2a
    move-object v0, v7

    .line 268
    goto :goto_16
.end method

.method private initViews()V
    .registers 3

    .prologue
    .line 272
    const-string v0, "notification_animation_left"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    .line 273
    const-string v0, "notification_animation_right"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    .line 274
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->relayoutViews()V

    .line 275
    return-void
.end method

.method private loadResources()V
    .registers 5

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "aod_notification_light_right"

    const-string v3, "drawable"

    invoke-static {v2, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgRight:Landroid/graphics/Bitmap;

    .line 279
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "aod_notification_light_left"

    const-string v3, "drawable"

    invoke-static {v2, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 280
    .local v0, "decodeResource":Landroid/graphics/Bitmap;
    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    .line 281
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 282
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgRight:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 283
    return-void
.end method

.method private prepareResources()V
    .registers 3

    .prologue
    const/16 v1, 0x64

    .line 286
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_a

    .line 287
    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    .line 289
    :cond_a
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_12

    .line 290
    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    .line 292
    :cond_12
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1d

    .line 293
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    .line 295
    :cond_1d
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->startHandlerThread()V

    .line 296
    return-void
.end method

.method private relayoutViews()V
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 299
    iget v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 300
    .local v2, "mLightIndex":I
    const/16 v7, 0xa

    if-eq v2, v7, :cond_e

    const/16 v7, 0x14

    if-ne v2, v7, :cond_48

    :cond_e
    move v0, v6

    .line 301
    .local v0, "b":Z
    :goto_f
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 303
    .local v4, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_4a

    .line 304
    const-string v7, "op_aod_light_effect_my_width"

    const-string v8, "dimen"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 309
    .local v3, "n":I
    :goto_1d
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 310
    .local v1, "dimensionPixelSize":I
    iget-object v7, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v1, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 311
    iget-object v7, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v1, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 312
    if-eqz v0, :cond_53

    .line 313
    invoke-virtual {p0, v9}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setScaleY(F)V

    .line 314
    invoke-virtual {p0, v9}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setAlpha(F)V

    .line 315
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 316
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 322
    :cond_47
    :goto_47
    return-void

    .end local v0    # "b":Z
    .end local v1    # "dimensionPixelSize":I
    .end local v3    # "n":I
    .end local v4    # "resources":Landroid/content/res/Resources;
    :cond_48
    move v0, v5

    .line 300
    goto :goto_f

    .line 307
    .restart local v0    # "b":Z
    .restart local v4    # "resources":Landroid/content/res/Resources;
    :cond_4a
    const-string v7, "op_aod_light_effect_width"

    const-string v8, "dimen"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .restart local v3    # "n":I
    goto :goto_1d

    .line 318
    .restart local v1    # "dimensionPixelSize":I
    :cond_53
    new-array v6, v6, [I

    const/16 v7, 0x143

    aput v7, v6, v5

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-nez v5, :cond_47

    .line 319
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 320
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_47
.end method

.method private startHandlerThread()V
    .registers 5

    .prologue
    .line 325
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v2, :cond_28

    .line 326
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "HandlerThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 327
    new-instance v0, Lcom/oneplus/aod/OpAodLightEffectContainer$3;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/oneplus/aod/OpAodLightEffectContainer$3;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;Landroid/os/Looper;)V

    .line 342
    .local v0, "mBgHandler":Landroid/os/Handler;
    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    .line 343
    iget v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 344
    .local v1, "mLightIndex":I
    const/16 v2, 0xa

    if-ne v1, v2, :cond_29

    .line 345
    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 351
    .end local v0    # "mBgHandler":Landroid/os/Handler;
    .end local v1    # "mLightIndex":I
    :cond_28
    :goto_28
    return-void

    .line 347
    .restart local v0    # "mBgHandler":Landroid/os/Handler;
    .restart local v1    # "mLightIndex":I
    :cond_29
    const/16 v2, 0x14

    if-ne v1, v2, :cond_28

    .line 348
    const/16 v2, 0x110

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_28
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 354
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 355
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->initViews()V

    .line 356
    return-void
.end method

.method public resetNotificationAnimView()V
    .registers 16

    .prologue
    .line 359
    iget v11, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 360
    .local v11, "mLightIndex":I
    const/16 v13, 0xa

    if-eq v11, v13, :cond_12

    const/16 v13, 0x14

    if-eq v11, v13, :cond_12

    .line 361
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setScaleY(F)V

    .line 362
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setAlpha(F)V

    .line 364
    :cond_12
    iget-object v14, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    const/4 v13, 0x0

    check-cast v13, Landroid/graphics/Bitmap;

    invoke-virtual {v14, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 365
    iget-object v14, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    const/4 v13, 0x0

    check-cast v13, Landroid/graphics/Bitmap;

    invoke-virtual {v14, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 366
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgRight:Landroid/graphics/Bitmap;

    .line 367
    .local v5, "mAnimationBgRight":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_2c

    .line 368
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 369
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgRight:Landroid/graphics/Bitmap;

    .line 371
    :cond_2c
    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    .line 372
    .local v4, "mAnimationBgLeft":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_36

    .line 373
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 374
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    .line 376
    :cond_36
    iget-object v6, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    .line 377
    .local v6, "mBgHandler":Landroid/os/Handler;
    if-eqz v6, :cond_49

    .line 378
    const/16 v13, 0x100

    invoke-virtual {v6, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 379
    iget-object v13, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    const/16 v14, 0x110

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 380
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    .line 382
    :cond_49
    iget-object v10, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 383
    .local v10, "mHandlerThread":Landroid/os/HandlerThread;
    if-eqz v10, :cond_57

    .line 384
    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Looper;->quit()V

    .line 385
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 387
    :cond_57
    iget-object v9, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    .line 388
    .local v9, "mHandler":Landroid/os/Handler;
    if-eqz v9, :cond_63

    .line 389
    iget-object v13, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v13}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 390
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    .line 392
    :cond_63
    const/4 v12, 0x0

    .line 393
    .local v12, "n":I
    const/4 v13, 0x0

    iput v13, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    .line 394
    const/4 v13, 0x0

    iput v13, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    .line 395
    iget-object v7, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    .line 396
    .local v7, "mBitmapLeft":[Landroid/graphics/Bitmap;
    if-eqz v7, :cond_7c

    .line 397
    array-length v14, v7

    const/4 v13, 0x0

    :goto_70
    if-ge v13, v14, :cond_7c

    aget-object v0, v7, v13

    .line 398
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_79

    .line 399
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 397
    :cond_79
    add-int/lit8 v13, v13, 0x1

    goto :goto_70

    .line 403
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_7c
    iget-object v8, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    .line 404
    .local v8, "mBitmapRight":[Landroid/graphics/Bitmap;
    if-eqz v8, :cond_8e

    .line 405
    array-length v3, v8

    .local v3, "length2":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_82
    if-ge v2, v3, :cond_8e

    .line 406
    aget-object v1, v8, v2

    .line 407
    .local v1, "bitmap2":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_8b

    .line 408
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 405
    :cond_8b
    add-int/lit8 v2, v2, 0x1

    goto :goto_82

    .line 412
    .end local v1    # "bitmap2":Landroid/graphics/Bitmap;
    .end local v2    # "j":I
    .end local v3    # "length2":I
    :cond_8e
    return-void
.end method

.method public setLightIndex(I)V
    .registers 10
    .param p1, "i"    # I

    .prologue
    const/16 v7, 0x14

    const/16 v6, 0xa

    .line 415
    iget v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    if-ne v4, p1, :cond_9

    .line 437
    :cond_8
    :goto_8
    return-void

    .line 418
    :cond_9
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 419
    .local v0, "i2":I
    if-ne v0, v6, :cond_30

    .line 420
    const/16 v4, 0x10

    iput v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFramesDuration:I

    .line 424
    :cond_11
    :goto_11
    const/4 v3, 0x0

    .line 425
    .local v3, "z":Z
    const-string v4, "sys.debug.notify.light.frames"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 426
    .local v1, "i3":I
    if-eqz v1, :cond_1d

    .line 427
    iput v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFramesDuration:I

    .line 429
    :cond_1d
    iget v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 430
    .local v2, "i4":I
    if-eq v2, v6, :cond_27

    if-eq p1, v6, :cond_27

    if-eq v2, v7, :cond_27

    if-ne p1, v7, :cond_28

    .line 431
    :cond_27
    const/4 v3, 0x1

    .line 433
    :cond_28
    iput p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 434
    if-eqz v3, :cond_8

    .line 435
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->relayoutViews()V

    goto :goto_8

    .line 421
    .end local v1    # "i3":I
    .end local v2    # "i4":I
    .end local v3    # "z":Z
    :cond_30
    if-ne v0, v7, :cond_11

    .line 422
    const/16 v4, 0x28

    iput v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFramesDuration:I

    goto :goto_11
.end method

.method public showLight()V
    .registers 9

    .prologue
    .line 441
    iget v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 442
    .local v2, "mLightIndex":I
    const/16 v3, 0xa

    if-eq v2, v3, :cond_20

    const/16 v3, 0x14

    if-eq v2, v3, :cond_20

    .line 443
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setAlpha(F)V

    .line 444
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    .line 445
    .local v1, "mLightAnimator":Landroid/animation/ValueAnimator;
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 446
    :cond_19
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->loadResources()V

    .line 447
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->animateNotification()V

    .line 462
    .end local v1    # "mLightAnimator":Landroid/animation/ValueAnimator;
    :cond_1f
    :goto_1f
    return-void

    .line 451
    :cond_20
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->prepareResources()V

    .line 452
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    .line 453
    .local v0, "mAnimateIndex":I
    if-lez v0, :cond_2b

    const/16 v3, 0x64

    if-lt v0, v3, :cond_1f

    .line 454
    :cond_2b
    iget v3, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mCustStartAnimationDelay:I

    if-nez v3, :cond_41

    .line 455
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "cust_aod_notification_start_animation_delay"

    const-string v5, "integer"

    invoke-static {v4, v5}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mCustStartAnimationDelay:I

    .line 457
    :cond_41
    const/4 v3, 0x1

    iput v3, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRepeatCount:I

    .line 458
    iget-object v3, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 459
    iget-object v3, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    iget v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mCustStartAnimationDelay:I

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1f
.end method
