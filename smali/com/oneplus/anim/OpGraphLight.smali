.class public Lcom/oneplus/anim/OpGraphLight;
.super Ljava/lang/Object;
.source "OpGraphLight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/anim/OpGraphLight$AnimateImageView;
    }
.end annotation


# instance fields
.field private m2kOr1080p:I

.field private mAnimateImageHeight:I

.field private mAnimateImageView:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

.field private mAnimateImageWidth:I

.field private final mContext:Landroid/content/Context;

.field private mFrontCameraPosistion:I

.field private final mHandler:Landroid/os/Handler;

.field private mShowRunnable:Ljava/lang/Runnable;

.field private mViewAdded:Z

.field private mViewContainer:Landroid/widget/LinearLayout;

.field private final mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/WindowManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1fb

    .line 40
    iput v0, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    const/16 v0, 0x46

    .line 41
    iput v0, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    .line 190
    new-instance v0, Lcom/oneplus/anim/OpGraphLight$1;

    invoke-direct {v0, p0}, Lcom/oneplus/anim/OpGraphLight$1;-><init>(Lcom/oneplus/anim/OpGraphLight;)V

    iput-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mShowRunnable:Ljava/lang/Runnable;

    .line 47
    iput-object p2, p0, Lcom/oneplus/anim/OpGraphLight;->mContext:Landroid/content/Context;

    .line 48
    iput-object p3, p0, Lcom/oneplus/anim/OpGraphLight;->mHandler:Landroid/os/Handler;

    .line 49
    iput-object p1, p0, Lcom/oneplus/anim/OpGraphLight;->mWm:Landroid/view/WindowManager;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/anim/OpGraphLight;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/oneplus/anim/OpGraphLight;->show()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/anim/OpGraphLight;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    return p0
.end method

.method static synthetic access$400(Lcom/oneplus/anim/OpGraphLight;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/oneplus/anim/OpGraphLight;->hide()V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/anim/OpGraphLight;)Landroid/view/WindowManager;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight;->mWm:Landroid/view/WindowManager;

    return-object p0
.end method

.method private hide()V
    .locals 2

    .line 178
    iget-boolean v0, p0, Lcom/oneplus/anim/OpGraphLight;->mViewAdded:Z

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    .line 183
    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/oneplus/anim/OpGraphLight;->mViewAdded:Z

    :cond_2
    return-void
.end method

.method private show()V
    .locals 17

    move-object/from16 v0, p0

    .line 58
    iget-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;-><init>(Lcom/oneplus/anim/OpGraphLight;Landroid/content/Context;)V

    iput-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    .line 61
    :cond_0
    iget-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 63
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 64
    iget-object v3, v0, Lcom/oneplus/anim/OpGraphLight;->mWm:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 65
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 66
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screenHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / screenWidth:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "OpGraphLight"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x438

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v3, :cond_1

    .line 69
    iput v7, v0, Lcom/oneplus/anim/OpGraphLight;->m2kOr1080p:I

    goto :goto_0

    .line 71
    :cond_1
    iput v6, v0, Lcom/oneplus/anim/OpGraphLight;->m2kOr1080p:I

    .line 74
    :goto_0
    sget v3, Lcom/android/systemui/R$drawable;->op_front_camera_animation_graph:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 75
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 76
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iput v8, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    .line 77
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iput v8, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    if-eqz v3, :cond_2

    .line 80
    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    if-eqz v4, :cond_3

    .line 86
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 90
    :cond_3
    iget v3, v0, Lcom/oneplus/anim/OpGraphLight;->m2kOr1080p:I

    if-ne v3, v7, :cond_4

    .line 91
    iget v3, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    int-to-double v3, v3

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v3, v8

    double-to-int v3, v3

    iput v3, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    .line 92
    iget v3, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    int-to-double v3, v3

    const-wide v8, 0x3fe7f559b3d07c85L    # 0.7487

    mul-double/2addr v3, v8

    double-to-int v3, v3

    iput v3, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    .line 95
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAnimateImageWidth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / mAnimateImageHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget v3, Lcom/android/systemui/R$dimen;->op_front_camera_animation_front_camera_posistion:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistion:I

    .line 98
    iget-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mWm:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-nez v1, :cond_5

    return-void

    .line 102
    :cond_5
    iget-object v3, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    if-nez v3, :cond_6

    .line 103
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, v0, Lcom/oneplus/anim/OpGraphLight;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    .line 105
    :cond_6
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in first show() / rotation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget v3, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    iget v4, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 108
    iget v4, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    iget v5, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 109
    iget v5, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistion:I

    const/4 v8, 0x0

    if-eqz v1, :cond_a

    if-eq v1, v7, :cond_9

    const/4 v9, 0x2

    if-eq v1, v9, :cond_8

    const/4 v9, 0x3

    if-eq v1, v9, :cond_7

    goto/16 :goto_3

    .line 140
    :cond_7
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v6, v1, v3

    .line 142
    iget-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 143
    iget-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 144
    iget-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 145
    iget-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    int-to-float v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    move v13, v5

    goto :goto_2

    .line 130
    :cond_8
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v1, v5

    sub-int v6, v1, v3

    .line 131
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v1, v4

    .line 132
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 133
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 134
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 135
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    int-to-float v5, v3

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 136
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    int-to-float v5, v4

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    goto :goto_1

    .line 123
    :cond_9
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v1, v5

    sub-int/2addr v1, v4

    .line 124
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 125
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 126
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    const/high16 v5, -0x3d4c0000    # -90.0f

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 127
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    int-to-float v5, v4

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    :goto_1
    move v13, v1

    :goto_2
    move v12, v6

    goto :goto_4

    .line 114
    :cond_a
    iget-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 115
    iget-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 116
    iget-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 117
    iget-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    :goto_3
    move v12, v5

    move v13, v6

    .line 151
    :goto_4
    iget-boolean v1, v0, Lcom/oneplus/anim/OpGraphLight;->mViewAdded:Z

    if-nez v1, :cond_b

    .line 152
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    .line 153
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 154
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/16 v14, 0x7de

    const/16 v15, 0x518

    const/16 v16, -0x3

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const/4 v2, -0x3

    .line 162
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const-string v2, "GraphLight"

    .line 163
    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v2, 0x33

    .line 164
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 166
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 167
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mWm:Landroid/view/WindowManager;

    iget-object v3, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    iget v3, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 169
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 170
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 172
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iput-boolean v7, v0, Lcom/oneplus/anim/OpGraphLight;->mViewAdded:Z

    :cond_b
    return-void
.end method


# virtual methods
.method public postShow()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/anim/OpGraphLight;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight;->mShowRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
