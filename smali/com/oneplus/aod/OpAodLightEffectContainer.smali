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

.field private final mFrameRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLeftView:Landroid/widget/ImageView;

.field private mLightAnimator:Landroid/animation/ValueAnimator;

.field private mLightIndex:I

.field private mRepeatCount:I

.field private mRightView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    .line 43
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    .line 44
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRepeatCount:I

    .line 46
    new-instance v0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpAodLightEffectContainer$1;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    .line 52
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->initViews()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    .line 58
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    .line 59
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRepeatCount:I

    .line 61
    new-instance v0, Lcom/oneplus/aod/OpAodLightEffectContainer$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpAodLightEffectContainer$2;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "n"    # I

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    .line 72
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    .line 73
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRepeatCount:I

    .line 75
    new-instance v0, Lcom/oneplus/aod/OpAodLightEffectContainer$3;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpAodLightEffectContainer$3;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    .line 81
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

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 86
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    .line 87
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    .line 88
    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 89
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRepeatCount:I

    .line 90
    new-instance v0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpAodLightEffectContainer$4;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)V
    .registers 1
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->animateMCL()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/aod/OpAodLightEffectContainer;)I
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 23
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/aod/OpAodLightEffectContainer;)V
    .registers 1
    .param p0, "x0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->decodeBitmap()V

    return-void
.end method

.method private animateMCL()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x10

    const v6, -0x712901

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 99
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    if-ltz v0, :cond_1e

    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_1e

    .line 100
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 102
    :cond_1e
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    if-ltz v0, :cond_34

    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_34

    .line 103
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 105
    :cond_34
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_a0

    .line 106
    const-string v0, "sys.aod.app_color_unlock"

    invoke-static {v0, v4}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_4a

    const-string v0, "sys.aod.custom_color_unlock"

    .line 107
    invoke-static {v0, v4}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_95

    .line 108
    :cond_4a
    const-string v0, "sys.aod.app_color_unlock"

    invoke-static {v0, v4}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_72

    .line 109
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    sget v1, Lcom/oneplus/aod/OpSingleNotificationView;->mAppIconColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 111
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    sget v1, Lcom/oneplus/aod/OpSingleNotificationView;->mAppIconColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 126
    :cond_64
    :goto_64
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    :cond_6b
    :goto_6b
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    .line 141
    return-void

    .line 113
    :cond_72
    const-string v0, "sys.aod.custom_color_unlock"

    invoke-static {v0, v4}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_64

    .line 115
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    const-string v1, "tweaks_left_edge_notif_color"

    invoke-static {v1, v6}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 118
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    const-string v1, "tweaks_right_edge_notif_color"

    invoke-static {v1, v6}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_64

    .line 123
    :cond_95
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 124
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_64

    .line 128
    :cond_a0
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 129
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 130
    const-string v0, "tweaks_edge_notif_repeat_count"

    invoke-static {v0, v3}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_b8

    .line 131
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRepeatCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRepeatCount:I

    .line 133
    :cond_b8
    const-string v0, "tweaks_edge_notif_repeat_count"

    invoke-static {v0, v3}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_ca

    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRepeatCount:I

    const-string v1, "tweaks_edge_notif_repeat_count"

    .line 134
    invoke-static {v1, v3}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v1

    if-gt v0, v1, :cond_6b

    .line 136
    :cond_ca
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    .line 137
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6b
.end method

.method private animateNotification()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 144
    const-string v2, "tweaks_edge_notif_repeat_count"

    invoke-static {v2, v6}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    .line 146
    .local v0, "dbIntForKey":I
    new-array v2, v7, [F

    fill-array-data v2, :array_4a

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 147
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/oneplus/aod/OpAodLightEffectContainer$5;

    invoke-direct {v3, p0}, Lcom/oneplus/aod/OpAodLightEffectContainer$5;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 162
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    .line 163
    .local v1, "mLightAnimator":Landroid/animation/ValueAnimator;
    if-nez v0, :cond_3e

    .line 164
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 168
    :goto_2a
    const-string v2, "tweak_repeat_mode"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_44

    .line 169
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 173
    :goto_38
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 174
    return-void

    .line 166
    :cond_3e
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    goto :goto_2a

    .line 171
    :cond_44
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    goto :goto_38

    .line 146
    :array_4a
    .array-data 4
        0x0
        0x40000000    # 2.0f
    .end array-data
.end method

.method private decodeBitmap()V
    .registers 11

    .prologue
    .line 177
    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    if-eqz v4, :cond_51

    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    if-eqz v4, :cond_51

    .line 178
    iget v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    .line 179
    .local v1, "mDecodeIndex":I
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 180
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aod_light_my_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 181
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

    .line 182
    .local v3, "sb":Ljava/lang/String;
    const-string v4, "drawable"

    .line 183
    invoke-static {v3, v4}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 182
    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 184
    .local v0, "decodeResource":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    aput-object v0, v4, v1

    .line 185
    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->flip(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, v1

    .line 186
    iget v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    .line 188
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

    .line 191
    if-eqz p1, :cond_1f

    .line 192
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 193
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 194
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 197
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
    .line 201
    const v0, 0x7f0a0319

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    .line 202
    const v0, 0x7f0a031a

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    .line 203
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->relayoutViews()V

    .line 204
    return-void
.end method

.method private loadResources()V
    .registers 4

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080226

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 209
    .local v0, "decodeResource":Landroid/graphics/Bitmap;
    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgRight:Landroid/graphics/Bitmap;

    .line 210
    invoke-direct {p0, v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->flip(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    .line 211
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 212
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgRight:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 213
    return-void
.end method

.method private prepareResources()V
    .registers 3

    .prologue
    const/16 v1, 0x64

    .line 216
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_a

    .line 217
    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    .line 219
    :cond_a
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_12

    .line 220
    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    .line 222
    :cond_12
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1d

    .line 223
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    .line 225
    :cond_1d
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->startHandlerThread()V

    .line 226
    return-void
.end method

.method private relayoutViews()V
    .registers 8

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 229
    iget v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3d

    const/4 v0, 0x1

    .line 230
    .local v0, "b":Z
    :goto_9
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 232
    .local v3, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_3f

    .line 233
    const v2, 0x7f0704c7

    .line 237
    .local v2, "n":I
    :goto_12
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 238
    .local v1, "dimensionPixelSize":I
    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 239
    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 240
    if-eqz v0, :cond_3c

    .line 241
    invoke-virtual {p0, v6}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setScaleY(F)V

    .line 242
    invoke-virtual {p0, v6}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setAlpha(F)V

    .line 243
    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 244
    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 246
    :cond_3c
    return-void

    .line 229
    .end local v0    # "b":Z
    .end local v1    # "dimensionPixelSize":I
    .end local v2    # "n":I
    .end local v3    # "resources":Landroid/content/res/Resources;
    :cond_3d
    const/4 v0, 0x0

    goto :goto_9

    .line 235
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
    .line 249
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_22

    .line 250
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 251
    new-instance v0, Lcom/oneplus/aod/OpAodLightEffectContainer$6;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/aod/OpAodLightEffectContainer$6;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    const/16 v1, 0x100

    .line 259
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 261
    :cond_22
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 264
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 265
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->initViews()V

    .line 266
    return-void
.end method

.method public resetNotificationAnimView()V
    .registers 15

    .prologue
    .line 269
    iget v12, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    const/16 v13, 0xa

    if-eq v12, v13, :cond_e

    .line 270
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setScaleY(F)V

    .line 271
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setAlpha(F)V

    .line 273
    :cond_e
    iget-object v12, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 274
    iget-object v12, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 275
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgRight:Landroid/graphics/Bitmap;

    .line 276
    .local v5, "mAnimationBgRight":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_24

    .line 277
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 278
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgRight:Landroid/graphics/Bitmap;

    .line 280
    :cond_24
    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    .line 281
    .local v4, "mAnimationBgLeft":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_2e

    .line 282
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 283
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    .line 285
    :cond_2e
    iget-object v6, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    .line 286
    .local v6, "mBgHandler":Landroid/os/Handler;
    if-eqz v6, :cond_3a

    .line 287
    const/16 v12, 0x100

    invoke-virtual {v6, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 288
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    .line 290
    :cond_3a
    iget-object v10, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 291
    .local v10, "mHandlerThread":Landroid/os/HandlerThread;
    if-eqz v10, :cond_48

    .line 292
    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Looper;->quit()V

    .line 293
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 295
    :cond_48
    iget-object v9, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    .line 296
    .local v9, "mHandler":Landroid/os/Handler;
    if-eqz v9, :cond_54

    .line 297
    iget-object v12, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 298
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    .line 300
    :cond_54
    const/4 v11, 0x0

    .line 301
    .local v11, "n":I
    const/4 v12, 0x0

    iput v12, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    .line 302
    const/4 v12, 0x0

    iput v12, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    .line 303
    iget-object v7, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    .line 304
    .local v7, "mBitmapLeft":[Landroid/graphics/Bitmap;
    if-eqz v7, :cond_6d

    .line 305
    array-length v13, v7

    const/4 v12, 0x0

    :goto_61
    if-ge v12, v13, :cond_6d

    aget-object v0, v7, v12

    .line 306
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_6a

    .line 307
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 305
    :cond_6a
    add-int/lit8 v12, v12, 0x1

    goto :goto_61

    .line 311
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6d
    iget-object v8, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    .line 312
    .local v8, "mBitmapRight":[Landroid/graphics/Bitmap;
    if-eqz v8, :cond_7f

    .line 313
    array-length v3, v8

    .local v3, "length2":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_73
    if-ge v2, v3, :cond_7f

    .line 314
    aget-object v1, v8, v2

    .line 315
    .local v1, "bitmap2":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_7c

    .line 316
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 313
    :cond_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_73

    .line 320
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

    .line 323
    iget v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    if-eq v2, p1, :cond_26

    .line 324
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isMCLVersion()Z

    move-result v2

    if-nez v2, :cond_27

    if-ne p1, v3, :cond_27

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set horizon light failed. Invalid index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "sb":Ljava/lang/String;
    const-string v2, "OpAodLightEffectContainer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .end local v1    # "sb":Ljava/lang/String;
    :cond_26
    :goto_26
    return-void

    .line 329
    :cond_27
    const/4 v0, 0x0

    .line 330
    .local v0, "b":Z
    iget v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    if-eq v2, v3, :cond_2e

    if-ne p1, v3, :cond_2f

    .line 331
    :cond_2e
    const/4 v0, 0x1

    .line 333
    :cond_2f
    iput p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    .line 334
    if-eqz v0, :cond_26

    .line 335
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

    .line 341
    iget v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2a

    .line 342
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->prepareResources()V

    .line 343
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    .line 344
    .local v0, "mAnimateIndex":I
    if-lez v0, :cond_17

    const/16 v2, 0x64

    if-lt v0, v2, :cond_29

    .line 345
    :cond_17
    iput v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRepeatCount:I

    .line 346
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 347
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 378
    .end local v0    # "mAnimateIndex":I
    :cond_29
    :goto_29
    return-void

    .line 350
    :cond_2a
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setAlpha(F)V

    .line 351
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    .line 352
    .local v1, "mLightAnimator":Landroid/animation/ValueAnimator;
    if-eqz v1, :cond_39

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_29

    .line 353
    :cond_39
    const-string v2, "sys.aod.app_color_unlock"

    invoke-static {v2, v5}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_49

    const-string v2, "sys.aod.custom_color_unlock"

    .line 354
    invoke-static {v2, v5}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_8d

    .line 356
    :cond_49
    const-string v2, "sys.aod.app_color_unlock"

    invoke-static {v2, v5}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_6a

    .line 357
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    sget v3, Lcom/oneplus/aod/OpSingleNotificationView;->mAppIconColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 359
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    sget v3, Lcom/oneplus/aod/OpSingleNotificationView;->mAppIconColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 374
    :cond_63
    :goto_63
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->loadResources()V

    .line 375
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->animateNotification()V

    goto :goto_29

    .line 361
    :cond_6a
    const-string v2, "sys.aod.custom_color_unlock"

    invoke-static {v2, v5}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_63

    .line 363
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    const-string v3, "tweaks_left_edge_notif_color"

    invoke-static {v3, v6}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 366
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    const-string v3, "tweaks_right_edge_notif_color"

    invoke-static {v3, v6}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_63

    .line 371
    :cond_8d
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 372
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_63
.end method
