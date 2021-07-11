.class Lcom/android/systemui/wm/DisplayImeController$PerDisplay;
.super Landroid/view/IDisplayWindowInsetsController$Stub;
.source "DisplayImeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wm/DisplayImeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerDisplay"
.end annotation


# instance fields
.field mAnimateAlpha:Z

.field mAnimation:Landroid/animation/ValueAnimator;

.field mAnimationDirection:I

.field final mDisplayId:I

.field final mImeFrame:Landroid/graphics/Rect;

.field mImeShowing:Z

.field mImeSourceControl:Landroid/view/InsetsSourceControl;

.field final mInsetsState:Landroid/view/InsetsState;

.field mRotation:I

.field final synthetic this$0:Lcom/android/systemui/wm/DisplayImeController;


# direct methods
.method constructor <init>(Lcom/android/systemui/wm/DisplayImeController;II)V
    .locals 1

    .line 197
    iput-object p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    invoke-direct {p0}, Landroid/view/IDisplayWindowInsetsController$Stub;-><init>()V

    .line 188
    new-instance p1, Landroid/view/InsetsState;

    invoke-direct {p1}, Landroid/view/InsetsState;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    const/4 p1, 0x0

    .line 189
    iput-object p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    const/4 v0, 0x0

    .line 190
    iput v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimationDirection:I

    .line 191
    iput-object p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    .line 192
    iput v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mRotation:I

    .line 193
    iput-boolean v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeShowing:Z

    .line 194
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 195
    iput-boolean p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimateAlpha:Z

    .line 198
    iput p2, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mDisplayId:I

    .line 199
    iput p3, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mRotation:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wm/DisplayImeController$PerDisplay;ZZ)V
    .locals 0

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->startAnimation(ZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/wm/DisplayImeController$PerDisplay;F)I
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->imeTop(F)I

    move-result p0

    return p0
.end method

.method private calcIsFloating(Landroid/view/InsetsSource;)Z
    .locals 2

    .line 282
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 283
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 291
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController;->mSystemWindows:Lcom/android/systemui/wm/SystemWindows;

    iget-object v0, v0, Lcom/android/systemui/wm/SystemWindows;->mDisplayController:Lcom/android/systemui/wm/DisplayController;

    iget p0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/wm/DisplayController;->getDisplayLayout(I)Lcom/android/systemui/wm/DisplayLayout;

    move-result-object p0

    .line 292
    invoke-virtual {p0}, Lcom/android/systemui/wm/DisplayLayout;->navBarFrameHeight()I

    move-result p0

    if-gt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private imeTop(F)I
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    float-to-int p1, p1

    add-int/2addr p0, p1

    return p0
.end method

.method private synthetic lambda$hideInsets$3()V
    .locals 1

    const/4 v0, 0x0

    .line 263
    invoke-direct {p0, v0, v0}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->startAnimation(ZZ)V

    return-void
.end method

.method private synthetic lambda$insetsChanged$0(Landroid/view/InsetsState;)V
    .locals 5

    .line 208
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v0, p1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xd

    .line 212
    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    .line 213
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    .line 214
    iget-object v3, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v3, v0}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 216
    iget-object v3, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 217
    iget-boolean p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeShowing:Z

    if-eqz p1, :cond_1

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 219
    iget-boolean p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeShowing:Z

    invoke-direct {p0, p1, v4}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->startAnimation(ZZ)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$insetsControlChanged$1(Landroid/view/InsetsSourceControl;)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 237
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 238
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    .line 240
    iget-boolean p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeShowing:Z

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->startAnimation(ZZ)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$showInsets$2()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 254
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->startAnimation(ZZ)V

    return-void
.end method

.method private synthetic lambda$startAnimation$4(FZFFLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    invoke-virtual {v0}, Lcom/android/systemui/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 354
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    .line 355
    iget-object v1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 356
    iget-boolean p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimateAlpha:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    :goto_0
    sub-float p1, p5, p3

    sub-float/2addr p4, p3

    div-float/2addr p1, p4

    .line 358
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {p2}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 359
    iget-object p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget p2, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mDisplayId:I

    invoke-direct {p0, p5}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->imeTop(F)I

    move-result p3

    invoke-static {p1, p2, p3, v0}, Lcom/android/systemui/wm/DisplayImeController;->access$400(Lcom/android/systemui/wm/DisplayImeController;IILandroid/view/SurfaceControl$Transaction;)V

    .line 360
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 361
    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    invoke-virtual {p0, v0}, Lcom/android/systemui/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private setVisibleDirectly(Z)V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 272
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object p1, p1, Lcom/android/systemui/wm/DisplayImeController;->mSystemWindows:Lcom/android/systemui/wm/SystemWindows;

    iget-object p1, p1, Lcom/android/systemui/wm/SystemWindows;->mWmService:Landroid/view/IWindowManager;

    iget v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mDisplayId:I

    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    invoke-interface {p1, v0, p0}, Landroid/view/IWindowManager;->modifyDisplayWindowInsets(ILandroid/view/InsetsState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private startAnimation(ZZ)V
    .locals 16

    move-object/from16 v8, p0

    move/from16 v9, p1

    .line 296
    iget-object v0, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 297
    iget-object v1, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    if-nez v1, :cond_0

    goto/16 :goto_8

    .line 300
    :cond_0
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 301
    invoke-direct {v8, v0}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->calcIsFloating(Landroid/view/InsetsSource;)Z

    move-result v0

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_1

    if-eqz v9, :cond_1

    move v6, v11

    goto :goto_0

    :cond_1
    move v6, v10

    :goto_0
    if-eqz v6, :cond_2

    .line 305
    iget-object v0, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 306
    iget-object v0, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController;->mSystemWindows:Lcom/android/systemui/wm/SystemWindows;

    iget-object v0, v0, Lcom/android/systemui/wm/SystemWindows;->mDisplayController:Lcom/android/systemui/wm/DisplayController;

    iget v1, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mDisplayId:I

    .line 307
    invoke-virtual {v0, v1}, Lcom/android/systemui/wm/DisplayController;->getDisplayLayout(I)Lcom/android/systemui/wm/DisplayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/wm/DisplayLayout;->density()F

    move-result v0

    const/high16 v1, -0x3d600000    # -80.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 309
    iget-object v1, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 310
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_3

    .line 312
    iget-object v0, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    .line 319
    iget v0, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimationDirection:I

    if-ne v0, v11, :cond_4

    if-nez v9, :cond_5

    :cond_4
    iget v0, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimationDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    if-nez v9, :cond_6

    :cond_5
    return-void

    :cond_6
    const/4 v0, 0x0

    .line 325
    iget-object v2, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_8

    .line 326
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 327
    iget-object v0, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move v2, v11

    goto :goto_2

    :cond_7
    move v2, v10

    .line 330
    :goto_2
    iget-object v3, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_3

    :cond_8
    move v2, v10

    .line 332
    :goto_3
    iget-object v3, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v7, v3

    .line 333
    iget-object v3, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v12, v3

    .line 334
    iget-object v3, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    add-float v13, v7, v3

    if-eqz v9, :cond_9

    move v14, v13

    goto :goto_4

    :cond_9
    move v14, v7

    :goto_4
    if-eqz v9, :cond_a

    move v15, v7

    goto :goto_5

    :cond_a
    move v15, v13

    .line 338
    :goto_5
    iget v3, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimationDirection:I

    if-nez v3, :cond_b

    iget-boolean v3, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeShowing:Z

    if-eqz v3, :cond_b

    if-eqz v9, :cond_b

    move v0, v7

    move v2, v11

    :cond_b
    if-eqz v9, :cond_c

    move v3, v11

    goto :goto_6

    :cond_c
    move v3, v1

    .line 343
    :goto_6
    iput v3, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimationDirection:I

    .line 344
    iput-boolean v9, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeShowing:Z

    new-array v1, v1, [F

    aput v14, v1, v10

    aput v15, v1, v11

    .line 345
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz v9, :cond_d

    const-wide/16 v3, 0x113

    goto :goto_7

    :cond_d
    const-wide/16 v3, 0x154

    .line 346
    :goto_7
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_e

    .line 349
    iget-object v1, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    sub-float/2addr v0, v14

    sub-float v2, v15, v14

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 352
    :cond_e
    iget-object v5, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$J4UVZpw7ZmqU_1hqrDGd2-bjaNE;

    move-object v0, v4

    move-object/from16 v1, p0

    move v2, v12

    move v3, v6

    move-object v11, v4

    move v4, v13

    move-object v10, v5

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$J4UVZpw7ZmqU_1hqrDGd2-bjaNE;-><init>(Lcom/android/systemui/wm/DisplayImeController$PerDisplay;FZFF)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 363
    iget-object v0, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/wm/DisplayImeController;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 364
    iget-object v10, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v11, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;

    move-object v0, v11

    move-object/from16 v1, p0

    move v3, v14

    move v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;-><init>(Lcom/android/systemui/wm/DisplayImeController$PerDisplay;FFFFZF)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez v9, :cond_f

    const/4 v0, 0x0

    .line 424
    invoke-direct {v8, v0}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->setVisibleDirectly(Z)V

    .line 426
    :cond_f
    iget-object v0, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    if-eqz v9, :cond_10

    const/4 v0, 0x1

    .line 430
    invoke-direct {v8, v0}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->setVisibleDirectly(Z)V

    :cond_10
    :goto_8
    return-void
.end method


# virtual methods
.method public hideInsets(IZ)V
    .locals 0

    .line 259
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p2

    and-int/2addr p1, p2

    if-nez p1, :cond_0

    return-void

    .line 263
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object p1, p1, Lcom/android/systemui/wm/DisplayImeController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$HI1i4VuaB2mt72uGGByWWGOYAoU;

    invoke-direct {p2, p0}, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$HI1i4VuaB2mt72uGGByWWGOYAoU;-><init>(Lcom/android/systemui/wm/DisplayImeController$PerDisplay;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public insetsChanged(Landroid/view/InsetsState;)V
    .locals 2

    .line 205
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyInsetsChanged()V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$RsnC99lStI9aBLStiHw26Ct1bkM;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$RsnC99lStI9aBLStiHw26Ct1bkM;-><init>(Lcom/android/systemui/wm/DisplayImeController$PerDisplay;Landroid/view/InsetsState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .locals 4

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->insetsChanged(Landroid/view/InsetsState;)V

    if-eqz p2, :cond_2

    .line 229
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    aget-object v1, p2, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 233
    :cond_0
    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 234
    iget-object v2, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object v2, v2, Lcom/android/systemui/wm/DisplayImeController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$VKegz7htjpQCkeKeoZ-Wkho3eGY;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$VKegz7htjpQCkeKeoZ-Wkho3eGY;-><init>(Lcom/android/systemui/wm/DisplayImeController$PerDisplay;Landroid/view/InsetsSourceControl;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public synthetic lambda$hideInsets$3$DisplayImeController$PerDisplay()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->lambda$hideInsets$3()V

    return-void
.end method

.method public synthetic lambda$insetsChanged$0$DisplayImeController$PerDisplay(Landroid/view/InsetsState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->lambda$insetsChanged$0(Landroid/view/InsetsState;)V

    return-void
.end method

.method public synthetic lambda$insetsControlChanged$1$DisplayImeController$PerDisplay(Landroid/view/InsetsSourceControl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->lambda$insetsControlChanged$1(Landroid/view/InsetsSourceControl;)V

    return-void
.end method

.method public synthetic lambda$showInsets$2$DisplayImeController$PerDisplay()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->lambda$showInsets$2()V

    return-void
.end method

.method public synthetic lambda$startAnimation$4$DisplayImeController$PerDisplay(FZFFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->lambda$startAnimation$4(FZFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public showInsets(IZ)V
    .locals 0

    .line 250
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p2

    and-int/2addr p1, p2

    if-nez p1, :cond_0

    return-void

    .line 254
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object p1, p1, Lcom/android/systemui/wm/DisplayImeController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$FD_9ZTxZkOna83ACP1uBpyvywmw;

    invoke-direct {p2, p0}, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$FD_9ZTxZkOna83ACP1uBpyvywmw;-><init>(Lcom/android/systemui/wm/DisplayImeController$PerDisplay;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
