.class public Lcom/oneplus/volume/OpVolumeDialogImpl;
.super Ljava/lang/Object;
.source "OpVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;,
        Lcom/oneplus/volume/OpVolumeDialogImpl$OpHandler;,
        Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;
    }
.end annotation


# instance fields
.field protected mAccentColor:I

.field protected mClickOutputChooser:Landroid/view/View$OnClickListener;

.field protected mConnectedDevice:Landroid/widget/TextView;

.field protected mContext:Landroid/content/Context;

.field protected mDeviceInfo:Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;

.field protected mDialogRowContainer:Landroid/view/ViewGroup;

.field protected mFirstTimeInitDialog:Z

.field protected mHandler:Lcom/oneplus/volume/OpVolumeDialogImpl$OpHandler;

.field protected mIsExpandAnimDone:Z

.field protected mOpBeforeExpandWidth:I

.field protected mOpForceExpandState:Z

.field protected mOpLastforceExpandState:Z

.field protected mOpOutputChooser:Lcom/oneplus/volume/OpOutputChooser;

.field protected mOpafterExpandWidth:I

.field protected mOutputChooser:Landroid/widget/ImageButton;

.field protected mOutputChooserBackgroundView:Landroid/view/View;

.field protected mOutputChooserCallback:Lcom/oneplus/volume/OpOutputChooser$OutputChooserCallback;

.field protected mOutputChooserDialog:Lcom/oneplus/volume/OpOutputChooserDialog;

.field protected mOutputChooserExpandEditText:Landroid/widget/EditText;

.field protected mOutputChooserExpandIcon:Landroid/widget/ImageView;

.field protected mOutputChooserExpandTextView:Landroid/widget/TextView;

.field private final mOutputChooserLock:Ljava/lang/Object;

.field protected mPendingInit:Z

.field protected mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field protected mThemeButtonBg:I

.field protected mThemeColorDialogBackground:I

.field protected mThemeColorDialogRowContainerBackground:I

.field protected mThemeColorIcon:I

.field protected mThemeColorMode:I

.field protected mThemeColorSeekbarBackgroundDrawable:I

.field protected mThemeColorText:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorMode:I

    .line 84
    iput v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mAccentColor:I

    .line 85
    iput v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorDialogBackground:I

    .line 86
    iput v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorDialogRowContainerBackground:I

    .line 87
    iput v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorText:I

    .line 88
    iput v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorIcon:I

    .line 90
    iput v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorSeekbarBackgroundDrawable:I

    .line 93
    iput v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeButtonBg:I

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    const/4 v1, 0x1

    .line 107
    iput-boolean v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mPendingInit:Z

    .line 111
    iput-boolean v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mFirstTimeInitDialog:Z

    .line 112
    iput-boolean v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpLastforceExpandState:Z

    .line 113
    iput-boolean v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    .line 114
    iput-boolean v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mIsExpandAnimDone:Z

    .line 141
    new-instance v0, Lcom/oneplus/volume/OpVolumeDialogImpl$OpHandler;

    invoke-direct {v0, p0}, Lcom/oneplus/volume/OpVolumeDialogImpl$OpHandler;-><init>(Lcom/oneplus/volume/OpVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mHandler:Lcom/oneplus/volume/OpVolumeDialogImpl$OpHandler;

    .line 159
    new-instance v0, Lcom/oneplus/volume/OpVolumeDialogImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/volume/OpVolumeDialogImpl$1;-><init>(Lcom/oneplus/volume/OpVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserCallback:Lcom/oneplus/volume/OpOutputChooser$OutputChooserCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/volume/OpVolumeDialogImpl;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setDialogWidthH(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/volume/OpVolumeDialogImpl;)Ljava/lang/Object;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserLock:Ljava/lang/Object;

    return-object p0
.end method

.method private applyColors()V
    .locals 3

    .line 502
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorDialogBackground:I

    invoke-direct {p0, v1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getCornerGradientDrawable(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 503
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDialogRowContainer:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorDialogRowContainerBackground:I

    invoke-direct {p0, v1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getCornerGradientDrawable(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 507
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getSettingsIcon()Landroid/widget/ImageButton;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 508
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getSettingsBackIcon()Landroid/widget/ImageButton;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 509
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getSettingsOpSettingsIcon()Landroid/widget/ImageButton;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 513
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mConnectedDevice:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorText:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 514
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mAccentColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 515
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeButtonBg:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 519
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserBackgroundView:Landroid/view/View;

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeButtonBg:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 520
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mAccentColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 521
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandEditText:Landroid/widget/EditText;

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 522
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 525
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    const/4 v2, 0x1

    .line 527
    invoke-direct {p0, v1, v2, v2}, Lcom/oneplus/volume/OpVolumeDialogImpl;->updateVolumeRowTintH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getCornerGradientDrawable(I)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 535
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 536
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getVolCornerRadii(Landroid/content/Context;)[F

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    return-object p1
.end method

.method private getDialog()Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;
    .locals 2

    .line 569
    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    const-string v1, "mDialog"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    return-object p0
.end method

.method private getDialogView()Landroid/view/ViewGroup;
    .locals 2

    .line 548
    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    const-string v1, "mDialogView"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method private getSettingsBackIcon()Landroid/widget/ImageButton;
    .locals 2

    .line 590
    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    const-string v1, "mSettingsBackIcon"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    return-object p0
.end method

.method private getSettingsIcon()Landroid/widget/ImageButton;
    .locals 2

    .line 585
    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    const-string v1, "mSettingsIcon"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    return-object p0
.end method

.method private getSettingsOpSettingsIcon()Landroid/widget/ImageButton;
    .locals 2

    .line 595
    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    const-string v1, "mSettingsOpSettingsIcon"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    return-object p0
.end method

.method private getVolCornerRadii(Landroid/content/Context;)[F
    .locals 1

    .line 541
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$dimen;->shape_corner_radius:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    .line 542
    sget-boolean p1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "shape_corner_radius:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpVolumeDialogImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 p1, 0x8

    new-array p1, p1, [F

    const/4 v0, 0x0

    aput p0, p1, v0

    const/4 v0, 0x1

    aput p0, p1, v0

    const/4 v0, 0x2

    aput p0, p1, v0

    const/4 v0, 0x3

    aput p0, p1, v0

    const/4 v0, 0x4

    aput p0, p1, v0

    const/4 v0, 0x5

    aput p0, p1, v0

    const/4 v0, 0x6

    aput p0, p1, v0

    const/4 v0, 0x7

    aput p0, p1, v0

    return-object p1
.end method

.method private initSettingsH()V
    .locals 3

    .line 600
    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "initSettingsH"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isAccentColorChanged(IZ)Z
    .locals 0

    .line 384
    sget p1, Lcom/oneplus/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {p1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result p1

    .line 386
    iget p2, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mAccentColor:I

    if-eq p2, p1, :cond_0

    .line 387
    iput p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mAccentColor:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isLandscape()Z
    .locals 1

    .line 315
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$setViewVisibleGoneFadeInOutAndScaleAnim$0(ZLandroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    const/16 p0, 0x8

    .line 238
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 240
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 241
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    .line 242
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private setDialogWidthH(I)V
    .locals 5

    .line 289
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getDialog()Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->volume_dialog_container:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 290
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 291
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->isLandscape()Z

    move-result v2

    const/16 v3, 0x15

    const/16 v4, 0x13

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 293
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 295
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 298
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 299
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getDialog()Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 303
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 305
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->isLandscape()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 306
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_2

    .line 308
    :cond_2
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 311
    :goto_2
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getDialog()Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private setViewVisibleGoneFadeInOutAndScaleAnim(Landroid/view/View;Z)V
    .locals 5

    const/4 p0, 0x0

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz p2, :cond_0

    .line 225
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 226
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 227
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v1, 0x0

    .line 228
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, p0

    .line 231
    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p2, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v0

    .line 232
    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p2, :cond_3

    move v0, v2

    .line 233
    :cond_3
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x113

    .line 234
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v3, p0, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 235
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/oneplus/volume/-$$Lambda$OpVolumeDialogImpl$f7qEr0d70p_O061iK0Mg-UuLhHg;

    invoke-direct {v0, p2, p1}, Lcom/oneplus/volume/-$$Lambda$OpVolumeDialogImpl$f7qEr0d70p_O061iK0Mg-UuLhHg;-><init>(ZLandroid/view/View;)V

    .line 236
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0x0

    .line 244
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private setViewVisibleGoneFadeInOutAnim(Landroid/view/View;ZLandroid/widget/LinearLayout;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 249
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    .line 250
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    .line 255
    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0x113

    .line 256
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v3, v4, v0, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 257
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/volume/-$$Lambda$OpVolumeDialogImpl$TA3PITzbby9aaH8iUXUPvx1U6QE;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/oneplus/volume/-$$Lambda$OpVolumeDialogImpl$TA3PITzbby9aaH8iUXUPvx1U6QE;-><init>(Lcom/oneplus/volume/OpVolumeDialogImpl;ZLandroid/view/View;Landroid/widget/LinearLayout;)V

    .line 258
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0x0

    .line 269
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private updateVolumeRowTintH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;ZZ)V
    .locals 7

    .line 579
    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "updateVolumeRowTintH"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 581
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected applyAndroidTheme()V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 459
    sget v1, Lcom/android/systemui/R$drawable;->volume_dialog_bg_light:I

    iput v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorDialogBackground:I

    .line 460
    sget v1, Lcom/android/systemui/R$drawable;->volume_dialog_row_container_bg_light:I

    iput v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorDialogRowContainerBackground:I

    .line 461
    sget v1, Lcom/android/systemui/R$color;->oneplus_contorl_text_color_secondary_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorText:I

    .line 463
    sget v1, Lcom/android/systemui/R$color;->op_volume_dialog_row_icon_color_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorIcon:I

    .line 467
    sget v1, Lcom/android/systemui/R$drawable;->volume_dialog_progress_light:I

    iput v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorSeekbarBackgroundDrawable:I

    .line 468
    sget v1, Lcom/android/systemui/R$color;->op_btn_volume_media_icon_bg_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeButtonBg:I

    return-void
.end method

.method protected applyBlackTheme()V
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 446
    sget v1, Lcom/android/systemui/R$drawable;->volume_dialog_bg_dark:I

    iput v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorDialogBackground:I

    .line 447
    sget v1, Lcom/android/systemui/R$drawable;->volume_dialog_row_container_bg_dark:I

    iput v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorDialogRowContainerBackground:I

    .line 448
    sget v1, Lcom/android/systemui/R$color;->oneplus_contorl_text_color_secondary_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorText:I

    .line 450
    sget v1, Lcom/android/systemui/R$color;->op_volume_dialog_row_icon_color_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorIcon:I

    .line 452
    sget v1, Lcom/android/systemui/R$drawable;->volume_dialog_progress_dark:I

    iput v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorSeekbarBackgroundDrawable:I

    .line 453
    sget v1, Lcom/android/systemui/R$color;->op_btn_volume_media_icon_bg_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeButtonBg:I

    return-void
.end method

.method protected applyColorTheme(Z)V
    .locals 3

    .line 400
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->getThemeColor(Landroid/content/Context;)I

    move-result v0

    .line 403
    invoke-direct {p0, v0, p1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->isAccentColorChanged(IZ)Z

    move-result v1

    .line 406
    iget v2, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorMode:I

    if-ne v2, v0, :cond_0

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 410
    :cond_0
    iput v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorMode:I

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    if-eq v0, p1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    .line 423
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->applyWhiteTheme()V

    goto :goto_0

    .line 420
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->applyAndroidTheme()V

    goto :goto_0

    .line 417
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->applyBlackTheme()V

    goto :goto_0

    .line 414
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->applyWhiteTheme()V

    .line 428
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->applyColors()V

    return-void
.end method

.method protected applyWhiteTheme()V
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 433
    sget v1, Lcom/android/systemui/R$drawable;->volume_dialog_bg_light:I

    iput v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorDialogBackground:I

    .line 434
    sget v1, Lcom/android/systemui/R$drawable;->volume_dialog_row_container_bg_light:I

    iput v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorDialogRowContainerBackground:I

    .line 435
    sget v1, Lcom/android/systemui/R$color;->oneplus_contorl_text_color_secondary_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorText:I

    .line 437
    sget v1, Lcom/android/systemui/R$color;->op_volume_dialog_row_icon_color_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorIcon:I

    .line 439
    sget v1, Lcom/android/systemui/R$drawable;->volume_dialog_progress_light:I

    iput v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorSeekbarBackgroundDrawable:I

    .line 440
    sget v1, Lcom/android/systemui/R$color;->op_btn_volume_media_icon_bg_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeButtonBg:I

    return-void
.end method

.method protected changeEditTextAndTextViewForMarquee(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 274
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 275
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 277
    :cond_0
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 278
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected generateOutputChooserH()V
    .locals 4

    .line 356
    new-instance v0, Lcom/oneplus/volume/OpVolumeDialogImpl$2;

    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/volume/MediaRouterWrapper;

    .line 357
    invoke-static {v1}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/volume/MediaRouterWrapper;-><init>(Landroidx/mediarouter/media/MediaRouter;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/volume/OpVolumeDialogImpl$2;-><init>(Lcom/oneplus/volume/OpVolumeDialogImpl;Landroid/content/Context;Lcom/android/systemui/volume/MediaRouterWrapper;)V

    iput-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserDialog:Lcom/oneplus/volume/OpOutputChooserDialog;

    return-void
.end method

.method protected isStatusBarShowing()Z
    .locals 2

    .line 556
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 557
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindowState()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_1

    const-string p0, "OpVolumeDialogImpl"

    const-string v1, "adjust to 1500"

    .line 560
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$setViewVisibleGoneFadeInOutAnim$1$OpVolumeDialogImpl(ZLandroid/view/View;Landroid/widget/LinearLayout;)V
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 260
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p1, 0x0

    .line 263
    invoke-virtual {p0, p1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->changeEditTextAndTextViewForMarquee(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 265
    invoke-virtual {p0, p1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->changeEditTextAndTextViewForMarquee(Z)V

    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 267
    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method protected loadOpDimens()V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 322
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->oneplus_contorl_layout_margin_left1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 323
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->op_volume_dialog_panel_transparent_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 324
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->op_volume_dialog_panel_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpBeforeExpandWidth:I

    .line 325
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 326
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->oneplus_contorl_layout_margin_left1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 327
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->op_volume_dialog_panel_transparent_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 328
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->op_volume_dialog_panel_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpafterExpandWidth:I

    return-void
.end method

.method protected setDialogWidth(I)V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mHandler:Lcom/oneplus/volume/OpVolumeDialogImpl$OpHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 284
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mHandler:Lcom/oneplus/volume/OpVolumeDialogImpl$OpHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected setExpandFeautureDismissState()V
    .locals 2

    const/4 v0, 0x0

    .line 369
    iput-boolean v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpLastforceExpandState:Z

    .line 370
    iput-boolean v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    const/4 v1, 0x1

    .line 372
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setOpOutputChooserVisible(ZZ)V

    .line 373
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->initSettingsH()V

    .line 374
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpOutputChooser:Lcom/oneplus/volume/OpOutputChooser;

    if-eqz v0, :cond_0

    .line 375
    iput-boolean v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mFirstTimeInitDialog:Z

    .line 376
    invoke-virtual {v0}, Lcom/oneplus/volume/OpOutputChooser;->removeCallback()V

    .line 377
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpOutputChooser:Lcom/oneplus/volume/OpOutputChooser;

    invoke-virtual {v0}, Lcom/oneplus/volume/OpOutputChooser;->destory()V

    const/4 v0, 0x0

    .line 378
    iput-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpOutputChooser:Lcom/oneplus/volume/OpOutputChooser;

    :cond_0
    return-void
.end method

.method protected setOpOutputChooserGravityNeedBeforeAnimStart(Z)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 177
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 178
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x11

    .line 180
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 181
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method protected setOpOutputChooserVisible(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setOpOutputChooserVisible(ZZ)V

    return-void
.end method

.method protected setOpOutputChooserVisible(ZZ)V
    .locals 5

    .line 190
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOpOutputChooserVisible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mOpForceExpandState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpVolumeDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->output_chooser_background_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 193
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->output_active_device_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 195
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDeviceInfo:Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;

    iget v4, v4, Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;->iconResId:I

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDeviceInfo:Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;

    iget-object v4, v4, Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;->deviceInfoName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDeviceInfo:Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;

    iget-object v4, v4, Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;->deviceInfoName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p2, :cond_1

    .line 200
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 202
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v2}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setViewVisibleGoneFadeInOutAndScaleAnim(Landroid/view/View;Z)V

    .line 205
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v3}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setViewVisibleGoneFadeInOutAndScaleAnim(Landroid/view/View;Z)V

    .line 206
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandEditText:Landroid/widget/EditText;

    invoke-direct {p0, p1, v2, v0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setViewVisibleGoneFadeInOutAnim(Landroid/view/View;ZLandroid/widget/LinearLayout;)V

    .line 208
    :goto_0
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 211
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 213
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 216
    :cond_3
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v3}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setViewVisibleGoneFadeInOutAndScaleAnim(Landroid/view/View;Z)V

    .line 217
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v2}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setViewVisibleGoneFadeInOutAndScaleAnim(Landroid/view/View;Z)V

    .line 218
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v3, v0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setViewVisibleGoneFadeInOutAnim(Landroid/view/View;ZLandroid/widget/LinearLayout;)V

    :goto_1
    return-void
.end method

.method protected showOutputChooserH()V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserDialog:Lcom/oneplus/volume/OpOutputChooserDialog;

    if-eqz v1, :cond_0

    .line 342
    monitor-exit v0

    return-void

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserDialog:Lcom/oneplus/volume/OpOutputChooserDialog;

    if-nez v1, :cond_1

    .line 346
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->generateOutputChooserH()V

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserDialog:Lcom/oneplus/volume/OpOutputChooserDialog;

    invoke-virtual {v1}, Lcom/oneplus/volume/OpOutputChooserDialog;->show()V

    .line 350
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserDialog:Lcom/oneplus/volume/OpOutputChooserDialog;

    iget p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorMode:I

    invoke-virtual {v1, p0}, Lcom/oneplus/volume/OpOutputChooserDialog;->setTheme(I)V

    .line 351
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
